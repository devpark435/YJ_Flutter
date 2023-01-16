import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClassListScreen extends StatefulWidget {
  const ClassListScreen({super.key});

  @override
  State<ClassListScreen> createState() => _ClassListScreenState();
}

class _ClassListScreenState extends State<ClassListScreen> {
  List<String> classList = ['hi'];
  TextEditingController groupTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.topRight,
        child: ListView.builder(
            itemCount: classList.length == 0 ? 0 : classList.length,
            itemBuilder: ((context, index) {
              return Card(
                child: Text('${classList[index]}'),
              );
            })),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: ((cnt) {
              return AlertDialog(
                title: Text('그룹생성'),
                content: TextFormField(
                  controller: groupTitleController,
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey)),
                    hintText: "그룹명",
                    focusColor: Colors.grey,
                    border: InputBorder.none,
                  ),
                ),
                actions: [
                  TextButton(
                      onPressed: (() {
                        classList.add(groupTitleController.text);
                        ClassListScreen();
                      }),
                      child: Text('data'))
                ],
              );
            }),
          );
        },
        child: Icon(Icons.group),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
