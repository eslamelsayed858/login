import 'package:flutter/material.dart';

class AnimetedListView extends StatelessWidget {
  const AnimetedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.deepPurple,
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'Flutter Mapp',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: const CustomAnimatedList(),
    );
  }
}

class CustomAnimatedList extends StatefulWidget {
  const CustomAnimatedList({super.key});

  @override
  State<CustomAnimatedList> createState() => _CustomAnimatedListState();
}

class _CustomAnimatedListState extends State<CustomAnimatedList> {
  final List<String> items = [];
  final GlobalKey<AnimatedListState> Key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: insertItem,
            child: const Text(
              '+',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 30,
              ),
            )),
        Expanded(
          child: AnimatedList(
            key: Key,
            initialItemCount: items.length,
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                  sizeFactor: animation,
                  child: AnimetedListItem(
                      onPressed: () {
                        deleteItem(index);
                      },
                      text: items[index]));
            },
          ),
        ),
      ],
    );
  }

  void insertItem() {
    var index = items.length;
    items.add('item ${index + 1}');
    Key.currentState?.insertItem(index);
  }

  void deleteItem(int index) {
    var removedItem = items.removeAt(index);
    Key.currentState?.removeItem(index, (context, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: AnimetedListItem(
          text: removedItem,
          onPressed: () {},
        ),
      );
    });
  }
}

class AnimetedListItem extends StatelessWidget {
  const AnimetedListItem(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.deepPurple,
        ),
        title: Text(text),
        trailing: IconButton(
          color: Colors.deepPurple,
          onPressed: onPressed,
          icon: const Icon(Icons.delete),
        ),
      ),
    );
  }
}
