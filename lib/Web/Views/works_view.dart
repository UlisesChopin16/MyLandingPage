import 'package:flutter/material.dart';
import 'package:landing_page/Components/sans_bold_component.dart';
import 'package:landing_page/Web/Components/row_of_works_component.dart';

class WorksView extends StatefulWidget {
  const WorksView({super.key});

  @override
  State<WorksView> createState() => _WorksViewState();
}

class _WorksViewState extends State<WorksView> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    return SizedBox(
      height: height > 500 ? height : 500,
      width: width,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: SansBoldComponent(text: 'What I Do', size: 40,),
            ),
          ),
          RowOfWorksComponent()
        ],
      ),
    );
  }
}



