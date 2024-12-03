import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'todo.g.dart';  

class Todo = _Todo with _$Todo;

abstract class _Todo with Store {

 String id;
  
 
  String name;
  
  @observable
  bool completed;

  _Todo({
   
    required this.id,

    required this.name,
    required this.completed,
  }) ; 
  

 
}
