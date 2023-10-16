class GroceryList {
  List<String> items = [];

  void addItemToList(String item) {
    items.add(item);
  }

  void viewList() {
    if (items.isEmpty) {
      print("Nothing has been added to the list yet.");
    } else {
      print("Grocery List:");
      for (int i = 0; i < items.length; i++) {
        print("${i + 1}. ${items[i]}");
      }
    }
  }
}