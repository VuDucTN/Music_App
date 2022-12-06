import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music/page/root_app.dart';
import 'package:music/page/user_page.dart';

const logo = '/Group.svg';

class User {
  String name;
  String img;
  String email;
  User(this.name, this.img, this.email);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(
        title: '',
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  static const routeName = "/login";
  final String title;

  @override
  State<LoginPage> createState() => Login();
}

class Login extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  var isLoading = false;

  void showFaileMessage() {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text("Login"),
              content: const Text("Login failed"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context, "Ok");
                    },
                    child: const Text("Ok"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 1000,
              padding: const EdgeInsets.only(
                  left: 32, top: 59, right: 287, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                  ),
                  SvgPicture.asset(
                    logo,
                    width: 56,
                    height: 56,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              width: 800,
              height: 1000,
              decoration: const BoxDecoration(
                color: Color(0xff151521),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                      padding: EdgeInsets.only(left: 20, right: 2, top: 38),
                      child: Text(
                        "Welcome to Vii Music",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.cyan,
                        ),
                      )),
                  const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 23,
                      ),
                      child: Text(
                        "Create your account",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff)),
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 33, right: 32, top: 38),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20,
                          ),
                          //styling
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Email",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(10)))),
                          ),
                          //box styling
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          //text input
                          TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(10)))),
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                          // ignore: deprecated_member_use

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xff00cea6)),
                            onPressed: () {
                              Navigator.pushNamed(context, RootApp.routeName,
                                  arguments: User("Van Cang", 'avatar.png',
                                      'cang@gmail.com'));
                            },
                            child: const Center(
                              child: SizedBox(
                                width: 300,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    "Sign in",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Or Continue with",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: (Colors.grey),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Sign in.",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff00BC97)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
