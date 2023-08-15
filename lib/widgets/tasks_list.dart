import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/task_tile.dart';

import '../Module/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasksList;
  const TaskList({
    super.key,
    required this.tasksList,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        itemCount: widget.tasksList.length,
        itemBuilder: (context, index) {
          return TaskTile(
            isDoneCallback: (value) {
              setState(() {
                widget.tasksList[index].checkBox = value;
              });
            },
            taskTitle: widget.tasksList[index].taskTitle,
            checkBox: widget.tasksList[index].checkBox ?? false,
          );
        });
  }
}
