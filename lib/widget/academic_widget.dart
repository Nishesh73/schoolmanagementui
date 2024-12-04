import 'package:flutter/material.dart';
import 'package:schoolmanagementui/academic_model/academic.dart';

class AcademicWidget extends StatefulWidget {
  Academic? academic;
  AcademicWidget({super.key, this.academic});

  @override
  State<AcademicWidget> createState() => _AcademicWidgetState();
}

class _AcademicWidgetState extends State<AcademicWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("${widget.academic?.name ?? "coming soon.."}")));

        //  setState(() {

        //  });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: width *.25,
          height: height * .5,
          child: Card(
              color: Colors.white,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        widget.academic?.image ?? "coming soon..",
                        width: width * .13,
                        height: width * .13,
                      ),
                      Text(
                                              widget.academic?.name ?? "coming soon",
                                              style:  TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width*.03),
                                            ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
