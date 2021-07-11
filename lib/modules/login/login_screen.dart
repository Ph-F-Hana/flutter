import 'package:flutter/material.dart';
import 'package:flutter_udemy/shared/components/components.dart';

// 1. timing
// 2. refactor
// 3. quality

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validate: (String? value) {
                      if(value!.isEmpty) {
                        return 'email must not be empty';
                      }
                      return null;
                    },
                    label: 'Email Address',
                    prefix: Icons.email,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  defaultFormField(
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    isPassword: isPassword,
                    suffixPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    validate: (String? value) {
                      if(value!.isEmpty) {
                        return 'password must not be empty';
                      }
                      return null;
                    },
                    label: 'Email Address',
                    prefix: Icons.email,
                    suffix: isPassword? Icons.visibility : Icons.visibility_off,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  defaultButton(
                    text: 'login',
                    function:(){
                      if(formKey.currentState!.validate()) {
                        print('${emailController.text} ${passwordController.text}');
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  defaultButton(
                    text: 'register',
                    function:(){
                      print('${emailController.text} ${passwordController.text}');
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\t have an account?'
                      ),
                      TextButton(
                          onPressed: (){},
                          child: Text('Register Now')
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
