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
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("${widget.academic?.name??"coming soon.."}")));
        
          //  setState(() {
             
          //  }); 
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Card(
            color: Colors.white,
            child: Center(
              child: Column(
              
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(widget.academic?.image ?? "coming soon..",
                  width: 60,
                  height: 60,
                  
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.academic?.name ?? "coming soon", style: const TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
