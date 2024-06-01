import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Components/text_form_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';

class ContactFormView extends StatefulWidget {
  final bool title;
  const ContactFormView({
    super.key,
    this.title = true,
  });

  @override
  State<ContactFormView> createState() => _ContactFormViewState();
}

class _ContactFormViewState extends State<ContactFormView> {
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

  String? validator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  String? validatorEmail(String? value) {
    String? data = validator(value);
    if (data != null) {
      return data;
    } else if (!isValidEmail(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;

    return Container(
      color: Colors.white,
      width: width,
      height: height > 810 ? height : 810,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (widget.title)
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: SansBold(
                    text: ConstantStrings.contactMe,
                    size: 40,
                  ),
                ),
              ),
              SizedBox(
                width: width,
                child: Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  runAlignment: WrapAlignment.spaceEvenly,
                  runSpacing: 20,
                  spacing: 20,
                  children: [
                    Column(
                      children: [
                        TextFormComponent(
                          labelText: 'First Name',
                          hintText: 'Please enter your first name',
                          width: 350,
                          validator: validator,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
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
                        const SizedBox(
                          height: 15,
                        ),
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
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormComponent(
                labelText: 'Message',
                hintText: 'Please enter your message',
                width: width / 1.5,
                maxLines: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: MaterialButton(
                  onPressed: () {
                    context.go(
                      '/home',
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 20,
                  height: 50,
                  minWidth: 200,
                  color: Colors.deepPurpleAccent,
                  child: const SansBold(
                    text: 'Submit',
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
