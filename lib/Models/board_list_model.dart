import 'board_list_item_model.dart';

class BoardListModel {
  String headerTitle;
  int identifierIndex;
  List<BoardListItemModel> items = List<BoardListItemModel>();

  BoardListModel({
    this.headerTitle,
    this.identifierIndex,
    this.items,
  });
}
