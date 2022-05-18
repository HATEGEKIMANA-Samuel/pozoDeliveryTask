import 'package:flutter/material.dart';
import 'package:pozotask/models/tasks.dart';

class TaskScreen extends StatefulWidget {
  //passed parameter from tabs
  final String status;
  const TaskScreen({ Key key, this.status }) : super(key: key);

  @override
  State<TaskScreen> createState() => _TasksState();
}

class _TasksState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    //filter list by status
    var lists = tasks.where((e) => e.status == widget.status ).toList();
    return Container(
      child: ListView.separated(
        itemCount: lists.length,
        itemBuilder: (context, index) {
          final list = lists[index];
          return ListTile(
            title: Text(list.name),
            subtitle: Text(list.description),
            trailing: Text(list.date),
             onTap: (){
              //checking if status is equal to pending before opening the dialog
              list.status == "pending" ?
              showDialog(
                context: context, 
                builder: (BuildContext ctx) {
                return AlertDialog(
                  title: Text("Change the status"),
                  content: Text("are you sure you want to change status?"),
                  actions: [
                    ElevatedButton(
                      onPressed: (){ Navigator.pop(context); },
                      child: Text("Close")
                    ),
                    ElevatedButton(
                      onPressed: (){
                        //filter list by id
                        final task = tasks.firstWhere((e) => e.id == list.id);
                        //Changing status from pending to completed
                        setState(() => task.status = 'completed');
                        Navigator.pop(context);
                      }, 
                      child: Text("Comfirm")),
                  ],
                );
               }
              )
              :Container();
            },
          );
        },
        separatorBuilder: (_, index) => Divider(),
        shrinkWrap: true,
      )
    );
  }
}