import 'package:flutter/material.dart';
import 'package:schoolmanagementui/academic_model/academic.dart';
import 'package:schoolmanagementui/widget/academic_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int crossAxisCount = 3;
  List<Academic> academicMod = [
    Academic("Students", "assets/icon/student.png"),
    Academic("Teachers", "assets/icon/teacher.png"),
    Academic("Attaindance", "assets/icon/attaindance.png"),
    Academic("Syllabus", "assets/icon/syllabus.png"),
    Academic("Time table", "assets/icon/time.png"),
    Academic("Assignments", "assets/icon/qa.png"),
    Academic("Exams", "assets/icon/exam.png"),
    Academic("Results", "assets/icon/results.png"),
    Academic("Fees", "assets/icon/receipt.png"),
    Academic("Events", "assets/icon/event.png"),
    Academic("Inbox", "assets/icon/inbox.png"),
    Academic("Ask Doubts", "assets/icon/ask-question.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 238, 238),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(color: Colors.black.withOpacity(.3)),
                      ),
                      Text(
                        "Nishesh Gautam",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(.6)),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.black.withOpacity(.5),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black.withOpacity(.5),
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.black.withOpacity(.5)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      //  borderSide: BorderSide(color: Colors.white, width: 2)
                    ),
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Academics",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.6)),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: LayoutBuilder(builder: (context, constrinSize) {
                  if (constrinSize.maxWidth > 1200) {
                    //desktop
                    crossAxisCount = 6;
                  } else if (constrinSize.maxWidth > 600) {
                    //tablet
                    crossAxisCount = 4;
                  } else {
                    crossAxisCount = 3; //medium phone
                  }

                  return GridView.builder(
                      itemCount: academicMod.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          crossAxisCount: crossAxisCount),
                      itemBuilder: (context, index) {
                        return AcademicWidget(
                          academic: academicMod[index],
                        );
                      });
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
