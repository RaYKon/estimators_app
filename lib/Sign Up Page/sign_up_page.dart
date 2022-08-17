import 'package:country_code_picker/country_code_picker.dart';
import 'package:estimators_app/Sign%20In%20Page/sign_in_page.dart';
import 'package:estimators_app/Sign%20Up%20Page/sign_up_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SignUpPage extends StatefulWidget{

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>{

  late double height;
  late double width;

  bool _isPasswordHidden = true;
  bool _isAgainPasswordHidden = true;
  bool _isPasswordsSame = true;

  bool _isClientSelected = false;
  bool _isTalentSelected = false;
  bool _isTermsRead = false;

  TextEditingController? _emailTextController;
  TextEditingController? _phoneNumberTextController;
  TextEditingController? _passwordTextController;
  TextEditingController? _againPasswordTextController;

  String? _clientValue;
  String? _talentValue;

  @override
  void initState() {
    super.initState();

    _emailTextController = TextEditingController();
    _phoneNumberTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _againPasswordTextController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();

    _emailTextController!.dispose();
    _phoneNumberTextController!.dispose();
    _passwordTextController!.dispose();
    _againPasswordTextController!.dispose();

  }

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
                title: const Text('Sign Up', style: TextStyle(color: Colors.black)),
                centerTitle: true,
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),
              body: SingleChildScrollView(
                child: mainBody(),
              )
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
        SizedBox(height: height / 20),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _emailTextController,
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
        const SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _phoneNumberTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'Phone number',
                prefixIcon: CountryCodePicker(
                  initialSelection: 'AM',
                  favorite: const ['+374','AM'],
                  searchDecoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search, color: Color.fromRGBO(9, 91, 130, 10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color.fromRGBO(9, 91, 130, 10)),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color.fromRGBO(9, 91, 130, 10)),
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  showCountryOnly: false,
                  showOnlyCountryWhenClosed: false,
                  alignLeft: false,
                ),
                prefixIconConstraints: const BoxConstraints(minWidth: 10, minHeight: 10),
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
        const SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _passwordTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            obscureText: _isPasswordHidden,
            decoration: InputDecoration(
                hintText: 'Create password',
                prefixIcon: const Icon(Icons.lock_outline, color: Color.fromRGBO(9, 91, 130, 10)),
                suffixIcon: IconButton(
                  icon: Icon(
                      _isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                      color: const Color.fromRGBO(9, 91, 130, 10)),
                  onPressed: (){
                    setState(() {
                      _isPasswordHidden = !_isPasswordHidden;
                    });
                  },
                ),
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
        const SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _againPasswordTextController,
            obscureText: _isAgainPasswordHidden,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'Enter password again',
                prefixIcon: const Icon(Icons.lock_outline, color: Color.fromRGBO(9, 91, 130, 10)),
                errorText: _isPasswordsSame == false ? "Passwords don't match" : null,
                errorStyle: const TextStyle(color: Colors.red, fontSize: 15),
                suffixIcon: IconButton(
                  icon: Icon(
                      _isAgainPasswordHidden ? Icons.visibility_off : Icons.visibility,
                      color: const Color.fromRGBO(9, 91, 130, 10)),
                  onPressed: (){
                    setState(() {
                      _isAgainPasswordHidden = !_isAgainPasswordHidden;
                    });
                  },
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromRGBO(9, 91, 130, 10)),
                    borderRadius: BorderRadius.circular(10)
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromRGBO(9, 91, 130, 10)),
                    borderRadius: BorderRadius.circular(10)
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10)
                ),
            ),
            onChanged: (value) {
              if(value != _passwordTextController!.text){
                setState(() {
                  _isPasswordsSame = false;
                });
              }else{
                setState(() {
                  _isPasswordsSame = true;
                });
              }
            }
          ),
        ),
        SizedBox(height: height / 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: width / 10),
          child: const Text(
            'Apply as',
            style: TextStyle(fontSize: 20),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: width / 25),
          child: Row(
            children: [
              Flexible(
                child: Checkbox(
                  value: _isClientSelected,
                  onChanged: (value){
                    setState(() {
                      _isClientSelected = !_isClientSelected;
                      _isTalentSelected = false;
                    });
                  },
                ),
              ),
              Flexible(
                child: Container(
                  height: 35,
                  padding: const EdgeInsets.only(left: 10),
                  child: DropdownButton<String>(
                    value: _clientValue,
                    hint: const Center(
                      child: Text('Client', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                    icon: const Icon(Icons.keyboard_arrow_down_sharp, color: Colors.white),
                    underline: Container(),
                    dropdownColor: const Color.fromRGBO(9, 91, 130, 10),
                    items: const [
                      DropdownMenuItem(
                        value: 'Individual',
                        child: Text('Individual', style: TextStyle(fontSize: 17, color: Colors.white)),
                      ),
                      DropdownMenuItem(
                        value: 'Company',
                        child:  Text('Company', style: TextStyle(fontSize: 17, color: Colors.white)),
                      ),
                    ],
                    onChanged: (value){
                      setState(() {
                        _clientValue = value!;

                        _isClientSelected = true;
                        _isTalentSelected = false;
                      });
                    },
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(9, 91, 130, 10)
                  ),
                ),
              )
            ],
          )
        ),
        Container(
            padding: EdgeInsets.only(left: width / 25),
            child: Row(
              children: [
                Flexible(
                  child: Checkbox(
                    value: _isTalentSelected,
                    onChanged: (value){
                      setState(() {
                        _isTalentSelected = !_isTalentSelected;
                        _isClientSelected = false;
                      });
                    },
                  ),
                ),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: 35,
                    child: DropdownButton<String>(
                      value: _talentValue,
                      hint: const Center(
                        child: Text('Talent', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                      icon: const Icon(Icons.keyboard_arrow_down_sharp, color: Colors.white),
                      underline: Container(),
                      dropdownColor: const Color.fromRGBO(123, 17, 19, 10),
                      items: const [
                        DropdownMenuItem(
                          value: 'QA',
                          child: Text('QA', style: TextStyle(fontSize: 17, color: Colors.white)),
                        ),
                        DropdownMenuItem(
                          value: 'Designer',
                          child:  Text('Designer', style: TextStyle(fontSize: 17, color: Colors.white)),
                        ),
                        DropdownMenuItem(
                          value: 'Front-end',
                          child:  Text('Front-end', style: TextStyle(fontSize: 17, color: Colors.white)),
                        ),
                        DropdownMenuItem(
                          value: 'Back-end',
                          child:  Text('Back-end', style: TextStyle(fontSize: 17, color: Colors.white)),
                        ),
                        DropdownMenuItem(
                          value: 'Project manager',
                          child:  Text('Project manager', style: TextStyle(fontSize: 17, color: Colors.white)),
                        )
                      ],
                      onChanged: (value){
                        setState(() {
                          _talentValue = value!;

                          _isClientSelected = false;
                          _isTalentSelected = true;
                        });
                      },
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(123, 17, 19, 10)
                    ),
                  ),
                )
              ],
            )
        ),
        SizedBox(height: height / 20),
        Container(
          padding: EdgeInsets.only(left: width / 25),
          child: Row(
            children: [
              Flexible(
                child: Checkbox(
                  value: _isTermsRead,
                  onChanged: (value){
                    setState(() {
                      _isTermsRead = !_isTermsRead;
                    });
                  },
                ),
              ),
              const SizedBox(width: 10),
              const Flexible(
                flex: 5,
                child: Text.rich(
                  TextSpan(
                    text: 'I agree to ',
                    children: [
                      TextSpan(
                        text: "Estimate's Terms & Conditions ",
                        style: TextStyle(
                            color: Colors.lightBlue,
                            decoration: TextDecoration.underline
                        ),
                      ),
                      TextSpan(
                          text: 'and '
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            decoration: TextDecoration.underline
                        ),
                      ),
                    ],
                  ),
                  maxLines: 2,
                ),
              )
            ],
          )
        ),
        SizedBox(height: height / 50),
        InkWell(
          onTap: (){
            if(
                _emailTextController!.text == '' ||
                _phoneNumberTextController!.text == '' ||
                _passwordTextController!.text == '' ||
                _againPasswordTextController!.text == ''
            ){
              ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(
                  content: Row(
                    children: const [
                      Icon(Icons.warning_amber_outlined, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Please fill up all fields',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  duration: const Duration(seconds: 3),
                )
              );
            }else if(!_isTermsRead){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Row(
                      children: const [
                        Icon(Icons.warning_amber_outlined, color: Colors.red),
                        SizedBox(width: 10),
                        Text(
                          'You should be agreed with Terms & Conditions',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    duration: const Duration(seconds: 3),
                  )
              );
            }else if(
               !_isClientSelected &&
               !_isTalentSelected
            ){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Row(
                      children: const [
                        Icon(Icons.warning_amber_outlined, color: Colors.red),
                        SizedBox(width: 10),
                        Text(
                          'Please select either client or talent',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    duration: const Duration(seconds: 3),
                  )
              );
            }else{
              if(_clientValue == null && _talentValue == null){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Row(
                        children: const [
                          Icon(Icons.warning_amber_outlined, color: Colors.red),
                          SizedBox(width: 10),
                          Text(
                            'Please select type of client or talent',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      duration: const Duration(seconds: 3),
                    )
                );
              }else{
                String? _profileType;

                if(_isClientSelected){
                  _profileType = _clientValue;
                }else if(_isTalentSelected){
                  _profileType = _talentValue;
                }

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignUpDetailsPage(_profileType)
                    )
                );
              }
            }
          },
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Container(
            height: 48,
            width: width / 1.1,
            child: const Center(
              child: Text(
                'Sign up',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            decoration: const BoxDecoration(
                color: Color.fromRGBO(123, 17, 19, 10),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          ),
        ),
        const SizedBox(height: 15),
        Text.rich(
          TextSpan(
            text: 'Already have an account? ',
            children: [
              TextSpan(
                text: 'Sign in',
                style: const TextStyle(
                    color: Colors.lightBlue,
                    decoration: TextDecoration.underline,
                ),
                  recognizer: TapGestureRecognizer()..onTap = () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) => SignInPage()
                       )
                     );
                }
              )
            ]
          )
        )
      ],
    );
  }
}