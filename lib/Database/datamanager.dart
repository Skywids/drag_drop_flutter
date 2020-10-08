import 'dart:async';

import 'package:flutter_app/Models/board_list_model.dart';
import 'package:flutter_app/Models/board_list_item_model.dart';

class DataManager {
  StreamController<List<BoardListModel>> _sc =
      StreamController<List<BoardListModel>>.broadcast();

  dispose() {
    _sc.close();
  }

  List<BoardListModel> rows = new List<BoardListModel>();

  Stream<List<BoardListModel>> getStream() {
    return _sc.stream;
  }

  add() async {
    rows.clear();
    await Future.delayed(Duration(seconds: 2));

    rows
      ..add(BoardListModel(
          headerTitle: "Task List",
          items: [
            BoardListItemModel("Task 1", position: 0),
            BoardListItemModel("Task 2", position: 1)
          ],
          identifierIndex: 0))
      ..add(BoardListModel(
          headerTitle: "ToDos",
          items: [
            BoardListItemModel("Task 3", position: 0),
            BoardListItemModel("Task 4", position: 1)
          ],
          identifierIndex: 1))
      ..add(BoardListModel(
          headerTitle: "Completed",
          items: [
            BoardListItemModel("Task 5", position: 0),
            BoardListItemModel("Task 6", position: 1)
          ],
          identifierIndex: 2));

    _sc.add(rows);
  }

  updateBoardListModel(BoardListModel lists) async {}

  updateBoardListItemModel(BoardListItemModel listItem) async {}
}
