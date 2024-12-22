import 'package:flutter/material.dart';
import 'package:navigation_task/Detail_page.dart';
import 'package:navigation_task/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: "Let's ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                TextSpan(
                    text: "get Started",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))
              ])),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                      child: Container(
                        width: 300,
                        height: 33,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.orangeAccent, width: 0.9),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            Text('Continue with Facebook')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Container(
                        width: 300,
                        height: 33,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.orangeAccent, width: 0.9),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mark_email_read_outlined,
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            Text('Continue with Google')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Container(
                        width: 300,
                        height: 33,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.orangeAccent,
                              width: 0.9,
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.apple,
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            Text('Continue with Apple')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          color: Colors.grey,
                          thickness: 0.2,
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'or',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          color: Colors.grey,
                          thickness: 0.2,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage()));
                      },
                      child: Container(
                        width: 300,
                        height: 33,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.orangeAccent, width: 0.9),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.alternate_email,
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            Text('Continue with Email')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
