import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function(String?)? addcallback;
  const AddTaskScreen({super.key, this.addcallback});

  @override
  Widget build(BuildContext context) {
    String task = '';
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 24),
              ),
              TextField(
                autofocus: true,
                onChanged: (value) {
                  task = value;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    addcallback!(task);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent),
                  child: const Text(
                    'Add',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
