import 'package:uuid/uuid.dart';
import 'package:mobx/mobx.dart';
import 'package:fluttertest/models/todo.dart';

part 'todoStore.g.dart';

class TodoStore = _TodoStore with _$TodoStore;

abstract class _TodoStore with Store {
  @observable
  ObservableList<Todo> todos = ObservableList<Todo>();


  final _uuid = Uuid();

  @action
  void addTodo(String name) {
    todos.add(Todo(
      id: _generateId(), 
      name: name,
      completed: false,
    ));
  }

  @action
  void toggleTodoCompletion(String id) {
    var index = todos.indexWhere((todo) => todo.id == id);
    print("togling == $index");
    if (index != -1) {
      todos[index].completed = !todos[index].completed; 
    }
  }
  @action
  void deleteTodo(String id) {
    todos.removeWhere((todo) => todo.id == id);
  }

  
  String _generateId() {
    return _uuid.v4(); 
  }
}
