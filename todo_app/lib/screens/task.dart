// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:todo_app/screens/create_task.dart';

import 'create_task.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        child: Row(
          children: [
            ///Container for Content
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "TASKS LIST",
                      style: TextStyle(
                          fontSize: 18,
                          height: 1.2,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),

                    ///For spacing
                    const SizedBox(
                      height: 4,
                    ),

                    Row(
                      children: [
                        ///Text
                        Text(
                          "Work",
                          style: TextStyle(
                            fontSize: 50,
                            height: 1.2,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[800],
                          ),
                        ),

                        const Spacer(),

                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {},
                        )
                      ],
                    ),

                    ///List of all the task
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          ///Change appearance of Completed Task
                          ///Say index 1 is completed
                          return Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: index == 1
                                    ? const Color.fromARGB(255, 3, 114, 120)
                                    : Colors.transparent),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ///Show completed check
                                ///Task Title
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Checking Tasks Tabs",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: index == 1
                                                ? Colors.white
                                                : Colors.grey[800]),
                                      ),
                                    ),

                                    ///For Space
                                    const SizedBox(
                                      width: 4,
                                    ),

                                    index == 1
                                        ? const Icon(
                                            Icons.check_circle,
                                            color: Colors.white,
                                          )
                                        : Container()
                                  ],
                                ),

                                ///For Space
                                const SizedBox(
                                  height: 8,
                                ),

                                ///Task Detail
                                Row(
                                  children: [
                                    Text(
                                      "18 NOV 2019",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: index == 1
                                              ? Colors.white70
                                              : Colors.grey[500]),
                                    ),
                                    const Spacer(),
                                    index == 1
                                        ? const Text(
                                            "COMPLETED",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 12,
                                                color: Colors.white),
                                          )
                                        : Text(
                                            "11:00 - 3:00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: index == 1
                                                    ? Colors.white70
                                                    : Colors.grey[500]),
                                          ),
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(
                          height: 16,
                          color: Colors.transparent,
                        ),
                        itemCount: 6,
                      ),
                    ),

                    ///For spacing
                    const SizedBox(
                      height: 16,
                    ),

                    ///Button for add new task
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: double.infinity,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        color: Colors.blue,
                        child: const Text(
                          "ADD NEW TASK",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CreateTaskScreen()));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),

            ///Container for task categories
            Container(
              width: MediaQuery.of(context).size.width * 0.22,
              color: Colors.black,
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
              child: Column(
                children: [
                  ///Menu button
                  IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      DoNothingAction;
                    },
                  ),

                  ///For space
                  const Spacer(),

                  ///Container for cat button
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orangeAccent),
                    padding: const EdgeInsets.all(16),
                    child: const Center(
                      child: Text(
                        "W",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24),
                      ),
                    ),
                  ),

                  ///More buttons
                  ///ForSpace
                  const SizedBox(
                    height: 16,
                  ),

                  ///Container for cat button
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red),
                    padding: const EdgeInsets.all(16),
                    child: const Center(
                      child: Text(
                        "O",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24),
                      ),
                    ),
                  ),

                  ///More buttons
                  ///ForSpace
                  const SizedBox(
                    height: 16,
                  ),

                  ///Container for cat button
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue),
                    padding: const EdgeInsets.all(16),
                    child: const Center(
                      child: Text(
                        "H",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24),
                      ),
                    ),
                  ),

                  ///More buttons
                  ///ForSpace
                  const SizedBox(
                    height: 16,
                  ),

                  ///Container for cat button
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green),
                    padding: const EdgeInsets.all(16),
                    child: const Center(
                      child: Text(
                        "P",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24),
                      ),
                    ),
                  ),

                  ///More buttons
                  ///ForSpace
                  const Spacer(),

                  ///Menu button
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      DoNothingAction;
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      DoNothingAction;
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
