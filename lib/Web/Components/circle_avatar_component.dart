import 'package:flutter/material.dart';

class CircleAvatarComponent extends StatefulWidget {
  
  const CircleAvatarComponent({super.key});

  @override
  State<CircleAvatarComponent> createState() => _CircleAvatarComponentState();
}

class _CircleAvatarComponentState extends State<CircleAvatarComponent> {

  // int index = 0;

  // List<Color> colors = [
  //   Colors.deepPurple,
  //   Colors.deepOrange,
  //   Colors.green,
  //   Colors.blue,
  //   Colors.red,
  // ];

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 147,
          // backgroundColor: colors[index],
          backgroundColor: Colors.deepPurple,
          child: CircleAvatar(
            radius: 143,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 140,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/landingdash.png'),                  
            ),
          ),
        ),
        // const SizedBox(height: 20,),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: List.generate(
        //     colors.length, 
        //     (index) => InkWell(
        //       onTap: () {
        //         setState(() {
        //           this.index = index;
        //         });
        //       },
        //       child: Container(
        //         margin: const EdgeInsets.all(5),
        //         width: 25,
        //         height: 25,
        //         decoration: BoxDecoration(
        //           color: colors[index],
        //           shape: BoxShape.circle,
        //           border: Border.all(
        //             width: 2,
        //             color: Colors.black
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}