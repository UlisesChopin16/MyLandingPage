import 'package:flutter/material.dart';
import 'package:landing_page/Components/icon_and_text_component.dart';

class ContactDetailsComponent extends StatelessWidget {
  
  const ContactDetailsComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconAndTextComponent(iconData: Icons.email_rounded, text: 'uliseschopin16@gmail.com', ),
          SizedBox(height: 10,),
          IconAndTextComponent(iconData: Icons.call, text: '+52 734 126 1416', ),
          SizedBox(height: 10,),
          IconAndTextComponent(iconData: Icons.location_on, text: 'Mexico, Puebla', ),
        ],
      ),
    );
  }
}