import 'package:flutter/material.dart';
import 'GradientText.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: Scaffold(
    //     body: Container(
    //       decoration: BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage("assets/images/backgroundImage.jpg"),
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //       child: RegisterScreenBody(),
    //     ),
    //   ),
    // );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroundImage.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: RegisterScreenBody(),
      ),
    );
  }
}

class RegisterScreenBody extends StatefulWidget {
  const RegisterScreenBody({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterScreenBodyState();
}

class _RegisterScreenBodyState extends State<RegisterScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 50),
            Image(
              image: AssetImage('assets/images/logoApp.png'),
              width: 500,
            ),
            const SizedBox(height: 0),
            const Text(
              'Find and Meet people around\nyou to find LOVE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 150),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: GestureDetector(
                    onTap: () {
                      print("Sign in with Facebook");
                    },
                    child: Container(
                      width: 350,
                      height: 60,
                      color: Colors.white,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 20),
                            Icon(
                                Icons.facebook,
                              color: Colors.orange,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: VerticalDivider(
                                color: Colors.orange,
                                thickness: 2,
                              ),
                            ),
                            GradientText(
                              "Sign in with Facebook",
                              style: const TextStyle(
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.normal),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xfff7386b),
                                  Color(0xfffe7446),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: GestureDetector(
                    onTap: () {
                      print("Sign in with Telegram");
                    },
                    child: Container(
                      width: 350,
                      height: 60,
                      color: Colors.white,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 20),
                            Icon(
                              Icons.facebook,
                              color: Colors.orange,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: VerticalDivider(
                                color: Colors.orange,
                                thickness: 2,
                              ),
                            ),
                            GradientText(
                              "Sign in with Telegram",
                              style: const TextStyle(
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.normal),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xfff7386b),
                                  Color(0xfffe7446),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: GestureDetector(
                    onTap: () {
                      print("Sign in with Telegram");
                    },
                    child: Container(
                      width: 350,
                      height: 60,
                      color: Colors.white,
                      child: Center(
                        child: GradientText(
                          "Sign up",
                          style: const TextStyle(
                              fontSize: 19.0,
                              fontWeight: FontWeight.normal),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xfff7386b),
                              Color(0xfffe7446),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    print("ALREADY REGISTERED? SIGN IN");
                    Navigator.pop(context);
                  },
                  child: Text(
                    "ALREADY REGISTERED? SIGN IN",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}