import 'package:flutter/material.dart';
import 'package:login_screen_app/shared/components/components.dart';

import 'messenger_screen.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoMono',
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  border: OutlineInputBorder(),
                ),
              ), //emil
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                  border: OutlineInputBorder(),
                ),
              ), //passwd
              SizedBox(
                height: 20.0,
              ),
              defaultButton(
                text: 'login',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => MessengerScreen(),
                    )
                  );
                },
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account ?'),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register Now',
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
