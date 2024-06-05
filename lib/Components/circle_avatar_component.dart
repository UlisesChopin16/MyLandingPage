import 'package:flutter/material.dart';

class CircleAvatarComponent extends StatefulWidget {
  
  final double radius;

  const CircleAvatarComponent({super.key, required this.radius});

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
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: widget.radius,
          // backgroundColor: colors[index],
          backgroundColor: Colors.deepPurple,
          child: CircleAvatar(
            radius: widget.radius - 4,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: widget.radius - 7,
              backgroundColor: Colors.white,
              backgroundImage: const AssetImage('assets/images/landingdash.png'),                  
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