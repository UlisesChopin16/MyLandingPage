import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Components/text_form_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';

class ContactFormComponent extends StatefulWidget {
  final bool title;
  const ContactFormComponent({
    super.key,
    this.title = true,
  });

  @override
  State<ContactFormComponent> createState() => _ContactFormComponentState();
}

class _ContactFormComponentState extends State<ContactFormComponent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<TextInputFormatter> inputTextFormatters = [
    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
  ];
  List<TextInputFormatter> inputMessageFormatters = [
    FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z0-9,. ]*$')),
  ];

  List<TextInputFormatter> inputPhoneNumberFormatters = [
    LengthLimitingTextInputFormatter(10),
    FilteringTextInputFormatter.digitsOnly,
  ];

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController messageController = TextEditingController();

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
    }else if (RegExp(r'[!#<>?":`~;[\]\\|=+)(*&^%]').hasMatch(value)) {
      return 'Please enter a valid text';
    }
    return null;
  }

  String? validatePhoneNumber(String? value) {
    String? data = validator(value);
    if (data != null) {
      return data;
    } else if (value!.length < 10) {
      return 'Please enter a valid phone number';
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

  Future<void> addMessage(
      String firstName, String lastName, String email, String phoneNumber, String message) async {
    CollectionReference messages = FirebaseFirestore.instance.collection('messages');
    try {
      await messages.add({
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'phoneNumber': phoneNumber,
        'message': message,
      });
      
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      width: width,
      height: height > 800 ? height : 800,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Form(
            key: _formKey,
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
                            controller: firstNameController,
                            labelText: 'First Name',
                            hintText: 'Please enter your first name',
                            width: 350,
                            inputFormatters: inputTextFormatters,
                            validator: validator,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormComponent(
                            controller: emailController,
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
                            controller: lastNameController,
                            labelText: 'Last Name',
                            hintText: 'Please enter your last name',
                            width: 350,
                            inputFormatters: inputTextFormatters,
                            validator: validator,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormComponent(
                            controller: phoneNumberController,
                            labelText: 'Phone Number',
                            hintText: 'Please enter your phone number',
                            keyboardType: TextInputType.phone,
                            inputFormatters: inputPhoneNumberFormatters,
                            width: 350,
                            validator: validatePhoneNumber,
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
                  controller: messageController,
                  labelText: 'Message',
                  hintText: 'Please enter your message',
                  validator: validator,
                  width: width / 1.5,
                  inputFormatters: inputMessageFormatters,
                  maxLines: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: MaterialButton(
                    onPressed: () async {
                      final FocusScopeNode focus = FocusScope.of(context);
                      if (!focus.hasPrimaryFocus && focus.hasFocus) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      }
                      if (_formKey.currentState!.validate()) {
                        await addMessage(
                          firstNameController.text.trim(),
                          lastNameController.text.trim(),
                          emailController.text.trim(),
                          phoneNumberController.text.trim(),
                          messageController.text.trim(),
                        );
                        firstNameController.clear();
                        lastNameController.clear();
                        emailController.clear();
                        phoneNumberController.clear();
                        messageController.clear();
                        _formKey.currentState!.reset();
                        showDialog(context: context, builder: (context) {
                          return AlertDialog(
                            title: const Text('Message Sent'),
                            content: const Text('Thank you for your message we will get back to you soon.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Close'),
                              )
                            ],
                          );
                        },);
                      }
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
      ),
    );
  }
}
