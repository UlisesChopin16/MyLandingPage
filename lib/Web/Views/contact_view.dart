import 'package:flutter/material.dart';
import 'package:landing_page/Components/sans_bold_component.dart';
import 'package:landing_page/Components/text_form_component.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {

  bool isValidEmail(String? email) {
    // if email is null, return false
    if (email == null) {
      return false;
    }
    // Regular expression for validating an email
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    return emailRegex.hasMatch(email);
  }

  String? validator(String? value){
    if(value == null || value.trim().isEmpty){
      return 'This field is required';
    }
    return null;
  }

  String? validatorEmail(String? value){
    String? data = validator(value);
    if(data != null){
      return data;
    }else if(!isValidEmail(value)){
      return 'Please enter a valid email';
    }
    return null;
  }
  
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;

    return SizedBox(
      width: width,
      height: height > 700 ? height : 700,
      child:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: SansBoldComponent(text: 'Contact me', size: 40,),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    TextFormComponent(
                      labelText: 'First Name',
                      hintText: 'Please enter your first name',
                      width: 350,
                      validator: validator,
                    ),
                    const SizedBox(height: 15,),
                    TextFormComponent(
                      labelText: 'Email',
                      hintText: 'Please enter your email adress',
                      width: 350,
                      validator: validatorEmail,
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextFormComponent(
                      labelText: 'Last Name',
                      hintText: 'Please enter your last name',
                      width: 350,
                      validator: validator,
                    ),
                    const SizedBox(height: 15,),
                    TextFormComponent(
                      labelText: 'Phone Number',
                      hintText: 'Please enter your phone number',
                      width: 350,
                      validator: validator,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10,),
            TextFormComponent(
              labelText: 'Message',
              hintText: 'Please enter your message',
              width: width / 1.5,
              maxLines: 10,
            ),
            const SizedBox(height: 10,),
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 20,
              height: 50,
              minWidth: 200,
              color: Colors.deepPurpleAccent,
              child: const SansBoldComponent(text: 'Submit', size: 20, color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}