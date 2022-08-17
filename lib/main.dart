import 'package:estimators_app/Sign%20In%20Page/sign_in_page.dart';
import 'package:estimators_app/Sign%20Up%20Page/sign_up_details_page.dart';
import 'package:estimators_app/Sign%20Up%20Page/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MaterialApp(
    home: MainPage(),
    theme: ThemeData(
      checkboxTheme: CheckboxThemeData(
        side: MaterialStateBorderSide.resolveWith((_) => const BorderSide(width: 2, color: Color.fromRGBO(9, 91, 130, 10))),
        fillColor: MaterialStateProperty.all(Colors.transparent),
        checkColor: MaterialStateProperty.all(const Color.fromRGBO(123, 17, 19, 10)),
      ),
    ),
  ));
}

class MainPage extends StatefulWidget{

  @override
  _MainPageState createState() => _MainPageState();
}


class _MainPageState extends State<MainPage>{


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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.only(top: height / 5, left: width / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Row(
                children: [
                  const Text(
                    'ESTIMATORS',
                    style: TextStyle(fontSize: 40, color: Color.fromRGBO(9, 91, 130, 10)),
                  ),
                  SizedBox(width:  width / 20),
                  SizedBox(
                    height: height / 9,
                    child: Image.asset(
                      'assets/images/logo.gif',
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'The perfect space for project estimating',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              const Text(
                "ESTIMATORS is the world's most powerful relationship and workflow management tool",
                style: TextStyle(fontSize: 17),
              ),
            ],
          )
        ),
        SizedBox(height: height / 10),
        Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignInPage()
                    )
                );
              },
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 48,
                width: width / 1.1,
                child: const Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(9, 91, 130, 10),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignUpPage()
                    )
                );
              },
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 48,
                width: width / 1.1,
                child: const Center(
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Color.fromRGBO(123, 17, 19, 10), fontSize: 20),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: const Color.fromRGBO(123, 17, 19, 10))
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: height / 5, left: 5, right: 5),
          child: const Text.rich(
              TextSpan(
                  text: 'By proceeding you acknowledge that you have read, understood and agree to our ',
                  children: [
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: TextStyle(
                          color: Colors.lightBlue,
                          decoration: TextDecoration.underline
                      ),
                    ),
                  ]
              ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}

