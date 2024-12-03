// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todoStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodoStore on _TodoStore, Store {
  late final _$todosAtom = Atom(name: '_TodoStore.todos', context: context);

  @override
  ObservableList<Todo> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(ObservableList<Todo> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  late final _$_TodoStoreActionController =
      ActionController(name: '_TodoStore', context: context);

  @override
  void addTodo(String name) {
    final _$actionInfo =
        _$_TodoStoreActionController.startAction(name: '_TodoStore.addTodo');
    try {
      return super.addTodo(name);
    } finally {
      _$_TodoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleTodoCompletion(String id) {
    final _$actionInfo = _$_TodoStoreActionController.startAction(
        name: '_TodoStore.toggleTodoCompletion');
    try {
      return super.toggleTodoCompletion(id);
    } finally {
      _$_TodoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteTodo(String id) {
    final _$actionInfo =
        _$_TodoStoreActionController.startAction(name: '_TodoStore.deleteTodo');
    try {
      return super.deleteTodo(id);
    } finally {
      _$_TodoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todos: ${todos}
    ''';
  }
}
