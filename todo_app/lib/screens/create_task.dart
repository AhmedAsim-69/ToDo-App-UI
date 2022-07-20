// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, duplicate_ignore, deprecated_member_use

import 'dart:ffi';

import 'package:flutter/material.dart';

class CreateTaskScreen extends StatefulWidget {
  const CreateTaskScreen({Key? key}) : super(key: key);

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  bool remindMe = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Create New Task",
              style: TextStyle(
                fontSize: 50,
                height: 1.2,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

            //Container for Text Field
            TextField(
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                hintText: "Task Name",
                hintStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),

            Spacer(),

            //Container for Icon
            // ignore: avoid_unnecessary_containers
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(250, 240, 240, 1),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.redAccent,
                    ),
                  ),
                  //For Spacing
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    "Tuesday, June 19, 2022",
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.2,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 2,
            ),

            //Container for timing tray 2
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(250, 250, 240, 1),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.alarm,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  //For Spacing
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    "1:00 - 3:00 pm",
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.2,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),

            Spacer(),

            //Container for Work Category
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  //Conatiner for Icon
                  Container(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 240, 242, 250),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Icon(
                            Icons.work,
                            color: Colors.blueAccent,
                          ),
                        ),
                        //For Spacing
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Work",
                          style: TextStyle(
                            fontSize: 18,
                            height: 1.2,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(
                          width: 164,
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            DoNothingAction;
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Spacer(),

            //Container for Reminder Category
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  //Conatiner for Icon
                  Container(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 240, 250, 241),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Icon(
                            Icons.lock_clock,
                            color: Colors.greenAccent,
                          ),
                        ),
                        //For Spacing
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Reminder",
                          style: TextStyle(
                            fontSize: 18,
                            height: 1.2,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(
                          width: 105,
                        ),
                        Switch(
                          onChanged: (value) {
                            setState(() {
                              remindMe = value;
                            });
                          },
                          value: remindMe,
                          activeColor: Colors.lightBlueAccent,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 100,
            ),
            // Create Task Button
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
                color: Colors.black,
                child: Text(
                  "Create New Task",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                onPressed: () {
                  DoNothingAction;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
