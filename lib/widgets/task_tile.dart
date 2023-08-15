import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String taskTitle;
  bool? checkBox;
  final Function(bool?) isDoneCallback;
  TaskTile({
    super.key,
    required this.taskTitle,
    this.checkBox,
    required this.isDoneCallback,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskTitle,
        style: TextStyle(
            decorationThickness: 5,
            decoration: widget.checkBox == true
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      trailing:
          Checkbox(value: widget.checkBox, onChanged: widget.isDoneCallback),
    );
  }
}
