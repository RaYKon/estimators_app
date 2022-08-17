import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SignInPage extends StatefulWidget{

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>{

  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        height = constraints.maxHeight;
        width = constraints.maxWidth;
       return ResponsiveWrapper.builder(
         Scaffold(
             backgroundColor: Colors.white,
             resizeToAvoidBottomInset: false,
             appBar: AppBar(
               elevation: 0,
               backgroundColor: Colors.white,
               title: const Text('Sign In', style: TextStyle(color: Colors.black)),
               centerTitle: true,
               leading: IconButton(
                 onPressed: () => Navigator.pop(context),
                 icon: const Icon(Icons.arrow_back, color: Colors.black),
               ),
             ),
             body: mainBody()
         ),
         maxWidth: 1200,
         minWidth: 450,
         defaultScale: true,
         breakpoints: [
           const ResponsiveBreakpoint.resize(200, name: MOBILE),
           const ResponsiveBreakpoint.autoScale(720, name: MOBILE)
         ],
        );
      },
    );
  }

  Widget mainBody(){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: height / 20),
          child: const Text(
            'ESTIMATORS',
            style: TextStyle(fontSize: 40, color: Color.fromRGBO(9, 91, 130, 10)),
          ),
        ),
        SizedBox(height: height / 10),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: const Icon(Icons.email_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromRGBO(9, 91, 130, 10)),
                    borderRadius: BorderRadius.circular(10)
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromRGBO(9, 91, 130, 10)),
                    borderRadius: BorderRadius.circular(10)
                )
            ),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: const Icon(Icons.lock_outline, color: Color.fromRGBO(9, 91, 130, 10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromRGBO(9, 91, 130, 10)),
                    borderRadius: BorderRadius.circular(10)
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromRGBO(9, 91, 130, 10)),
                    borderRadius: BorderRadius.circular(10)
                )
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: InkWell(
            onTap: () => null,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 48,
              child: const Center(
                child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(123, 17, 19, 10),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () => null,
          child: const Text('Forgot password ?', style: TextStyle(color: Color.fromRGBO(9, 91, 130, 10), fontSize: 15)),
        ),
        const SizedBox(height: 25),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: InkWell(
            onTap: () => null,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 48,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/linkedin.svg'),
                    const SizedBox(width: 10),
                    const Text.rich(
                        TextSpan(
                            text: 'Login with ',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            children: [
                              TextSpan(
                                  text: 'LinkedIn',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
                              )
                            ]
                        )
                    )
                  ],
                ),
              ),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(10,102,194,10),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: InkWell(
            onTap: () => null,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 48,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/googleicon.svg', height: 25),
                    const SizedBox(width: 10),
                    const Text.rich(
                        TextSpan(
                      text: 'Login with ',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                      children: [
                        TextSpan(
                          text: 'Google',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)
                        )
                      ]
                     )
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(10))
              ),
            ),
          ),
        ),
      ],
    );
  }
}