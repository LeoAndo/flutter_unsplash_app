import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/data/repositories/todo_repository_impl.dart';
import 'package:simple_app/domain/repositories/todo_repository.dart';

final todoDoneUseCaseProvider = Provider((ref) => TodoDoneUseCase(ref.read));

class TodoDoneUseCase {
  TodoDoneUseCase(this._reader);
  final Reader _reader;
  late final TodoRepository _repository = _reader(todoRepositoryProvider);

  Future<void> execute(int id) async {
    var result = await _repository.findTodoItemById(id);
    result.ifSuccess(
        (data) => {_repository.updateTodoItem(data.copyWith.call(done: true))});
  }
}
