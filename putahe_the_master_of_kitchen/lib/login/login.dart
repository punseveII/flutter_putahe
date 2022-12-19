import 'package:flutter/material.dart';
import 'package:putahe/utils.dart';
import 'package:putahe/homepage/homepage.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xfff7f3eb),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                  35.19 * fem, 0 * fem, 18.35 * fem, 21 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xfff2ad27),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50 * fem),
                  bottomLeft: Radius.circular(50 * fem),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3f000000),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 58.54 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 15.84 * fem, 0 * fem),
                    width: 313 * fem,
                    height: 313 * fem,
                    child: Image.asset(
                      'assets/images/putahe-logo-white-1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.fromLTRB(30 * fem, 50 * fem, 26 * fem, 24 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 70 * fem),
                    padding: EdgeInsets.fromLTRB(
                        24 * fem, 9 * fem, 24 * fem, 41 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xfff9f9f9),
                      borderRadius: BorderRadius.circular(40 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x3f000000),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 16 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(
                                    14.17 * fem, 9 * fem, 17.02 * fem, 9 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Center(
                                  child: Text(
                                    "Login",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              // Email
                              SizedBox(
                                height: 40,
                                width: 500,
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    labelText: "Enter email",
                                    border: const OutlineInputBorder(),
                                    prefixIcon: const Icon(Icons.email),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        // Password
                        SizedBox(
                          height: 43,
                          width: 500,
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              labelText: "Enter Password",
                              border: const OutlineInputBorder(),
                              prefixIcon: const Icon(Icons.lock),
                              //suffixIcon: const Icon(Icons.remove_red_eye),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Login button
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromARGB(255, 242, 174, 39),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyHomepage()));
                      },
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      // forgotpassYS6 (1:450)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 10.02 * fem, 91 * fem),
                      child: Text(
                        'Forgot Password?\n',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // signupcwk (1:446)
                    margin: EdgeInsets.fromLTRB(
                        91.5 * fem, 0 * fem, 110 * fem, 0 * fem),
                    width: double.infinity,
                    height: 18 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // forsignuphTQ (1:447)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 128 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Don’t have account? \n',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5 * ffem / fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // signupYU2 (1:448)
                          left: 126.5 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 46 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Sign up',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5 * ffem / fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // line1n7U (1:449)
                          left: 126.5 * fem,
                          top: 16 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 45 * fem,
                              height: 1 * fem,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
