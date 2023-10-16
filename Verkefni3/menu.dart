import 'dart:io';
import 'groceries.dart';

class GroceriesMenu {
  final GroceryList groceryList = GroceryList();

  void start() {
    while (true) {
      print("Welcome to your Grocery List!");
      print("1. Add item(s) to list");
      print("2. View list");
      print("3. End program");
      print("What would you like to do?");

      String choice = stdin.readLineSync();

      if (choice == null || (choice != '1' && choice != '2' && choice != '3')) {
        print("That is not a choice you can make >:/ ... please choose option 1, 2, or 3.");
        continue;
      }

      switch (choice) {
        case '1':
          addItems();
          break;
        case '2':
          groceryList.viewList();
          break;
        case '3':
          print("Ending program... Goodbye!");
          return;
      }
    }
  }

  void addItems() {
    print("Enter items (separated by commas): ");
    String itemsInput = stdin.readLineSync();

    if (itemsInput != null) {
      List<String> newItems = itemsInput.split(',');
      for (var item in newItems) {
        item = item.trim();
        if (item.isNotEmpty) {
          groceryList.addItemToList(item);
        }
      }
      print("Items added!");
    }
  }
}
