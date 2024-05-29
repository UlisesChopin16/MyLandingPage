import 'package:flutter/material.dart';
import 'package:landing_page/Components/sans_bold_component.dart';
import 'package:landing_page/Web/Components/circle_avatar_component.dart';
import 'package:landing_page/Web/Views/contact_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;

    return SizedBox(
      width: width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: SansBoldComponent(text: 'Welcome, my name is...',  color: Colors.white),
                )
              ),
              const SizedBox(height: 10,),
              const SansBoldComponent(text: 'Ulises Shie Sotelo \nChopin', size: 55,),
              const SizedBox(height: 10,),
              const SansBoldComponent(text: 'Flutter Developer', size: 30,),
              const SizedBox(height: 20,),
              const ContactView(),
            ],
          ),
          const CircleAvatarComponent(),
        ],
      ),
    );
  }
}