import 'package:flutter/widgets.dart';
import 'package:kanban/enums/kanban_status.dart';

class KanbanProvider with ChangeNotifier {
  KanbanStatus kanbanStatus = .todo;

  //kotlin : private fun refreshUI 와 동일
  void _refreshUI() => notifyListeners();

  void setKanbanStatus(KanbanStatus status){
    if (kanbanStatus == status) return;
    kanbanStatus = status;
    _refreshUI();
  }
}
