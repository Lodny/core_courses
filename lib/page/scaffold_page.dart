import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/student_controller.dart';

class ScaffoldPage extends StatefulWidget {
  const ScaffoldPage({super.key});

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  final StudentController _con = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Reactive'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _con.studentList.length,
        itemBuilder: (context, index) =>
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                GetX<StudentController>(
                  builder: (_) {
                    var con = _con.studentList[index]();
                    return Text('ID: ${con.id}, Name: ${con.name}, Grade: ${con.grade}');
                  }
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        _con.updateName(index, _con.newStudentNameList[index]);
                      },
                      child: const Text('이름 변경'),
                    ),
                    TextButton(
                      onPressed: () {
                        _con.updateGrade(index, _con.newStudentGradeList[index]);
                      },
                      child: const Text('성적 변경'),
                    ),
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}
