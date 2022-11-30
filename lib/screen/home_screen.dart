import 'package:flutter/material.dart';
import 'package:to_do_application/widget/add_todo_dialog_widget.dart';
import 'package:to_do_application/widget/todo_list_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [TodoListWidget(), Container()];
    return Scaffold(
      appBar: AppBar(title: const Text("Todo App")),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white.withOpacity(0.7),
          selectedItemColor: Colors.white,
          currentIndex: selectedIndex,
          onTap: (index) => setState(() {
                selectedIndex = index;
              }),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.fact_check_outlined,
                ),
                label: "Todos"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.done,
                  size: 28,
                ),
                label: "Completed")
          ]),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.black,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AddTodoDialogWidget(),
              barrierDismissible: false);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
