import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SignUpDetailsPage extends StatefulWidget{

  String? profileType;

  SignUpDetailsPage(this.profileType);

  @override
  _SignUpDetailsPageState createState() => _SignUpDetailsPageState();
}


class _SignUpDetailsPageState extends State<SignUpDetailsPage> {

  int _currentStep = 0;
  int _groupValue = -1;

  late double height;
  late double width;

  TextEditingController? _companyNameTextController;
  TextEditingController? _positionNameTextController;
  TextEditingController? _firstNameTextController;
  TextEditingController? _lastNameTextController;
  TextEditingController? _countryNameTextController;
  TextEditingController? _stateNameTextController;
  TextEditingController? _cityNameTextController;
  TextEditingController? _streetNameTextController;
  TextEditingController? _aptSuiteNameTextController;
  TextEditingController? _zipCodeTextController;
  TextEditingController? _linkedInLinkTextController;
  TextEditingController? _behanceLinkTextController;
  TextEditingController? _webSiteLinkTextController;

  bool _isJavaScriptSelected = false;
  bool _isReactSelected = false;
  bool _isNuxtJsSelected = false;
  bool _isTailwindCssSelected = false;
  bool _isGitSelected = false;
  bool _isVueJsSelected = false;
  bool _isAngularJsSelected = false;
  bool _isNextJsSelected = false;
  bool _isSASSSCSSSelected = false;

  bool _isNodeJsSelected = false;
  bool _isJavaSelected = false;
  bool _isExpressJsSelected = false;
  bool _isPHPSelected = false;
  bool _isDjangoSelected = false;

  bool _isJiraSelected = false;
  bool _isNotionSelected = false;
  bool _isAtlassianSelected = false;
  bool _isSlackSelected = false;
  bool _isTrelloSelected = false;
  bool _isBitrix24Selected = false;
  bool _isPivotalSelected = false;
  bool _isAgileSelected = false;

  bool _isUnitTestingSelected = false;
  bool _isUIUXSelected = false;
  bool _isSafetyTestSelected = false;
  bool _isQualityControlerSelected = false;
  bool _isTestingServerSelected = false;
  bool _isTestToolSelected = false;

  bool _isPartTimeSelected = false;
  bool _isByProjectSelected = false;
  bool _isNotSureWorkTypeSelected = false;
  bool _isFullTimeSelected = false;
  bool _isFreePlaneSelected = false;

  @override
  void initState() {

    _companyNameTextController = TextEditingController();
    _positionNameTextController = TextEditingController();
    _firstNameTextController = TextEditingController();
    _lastNameTextController = TextEditingController();
    _countryNameTextController = TextEditingController();
    _stateNameTextController = TextEditingController();
    _cityNameTextController = TextEditingController();
    _streetNameTextController = TextEditingController();
    _aptSuiteNameTextController = TextEditingController();
    _zipCodeTextController = TextEditingController();
    _linkedInLinkTextController = TextEditingController();
    _behanceLinkTextController = TextEditingController();
    _webSiteLinkTextController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {

    _companyNameTextController!.dispose();
    _positionNameTextController!.dispose();
    _firstNameTextController!.dispose();
    _lastNameTextController!.dispose();
    _countryNameTextController!.dispose();
    _stateNameTextController!.dispose();
    _cityNameTextController!.dispose();
    _streetNameTextController!.dispose();
    _aptSuiteNameTextController!.dispose();
    _zipCodeTextController!.dispose();
    _linkedInLinkTextController!.dispose();
    _behanceLinkTextController!.dispose();
    _webSiteLinkTextController!.dispose();

    super.dispose();
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
                title: Text('Sign up as ${widget.profileType}', style: const TextStyle(color: Colors.black)),
                centerTitle: true,
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),
              body: widget.profileType == 'Individual'
                  ? individualTypeWidget()
                  : widget.profileType == 'Company'
                  ? companyTypeWidget()
                  : widget.profileType == 'QA'
                  ? QATypeWidget()
                  : widget.profileType == 'Designer'
                  ? designerTypeWidget()
                  : widget.profileType == 'Front-end'
                  ? frontEndTypeWidget()
                  : widget.profileType == 'Back-end'
                  ? backEndTypeWidget()
                  : widget.profileType == 'Project manager'
                  ? projectManagerTypeWidget()
                  : Container(),
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

  Widget companyTypeWidget(){
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(top: height / 20, left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _companyNameTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'Company name',
                prefixIcon: const Icon(Icons.people_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
        SizedBox(height: height / 50),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _positionNameTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'Position',
                prefixIcon: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  height: 5,
                  width: 5,
                  child: SvgPicture.asset('assets/icons/positionIcon.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
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
        SizedBox(height: height / 50),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _firstNameTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'First name',
                prefixIcon: const Icon(Icons.person_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
        SizedBox(height: height / 50),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _lastNameTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'Last name',
                prefixIcon: const Icon(Icons.person_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
        SizedBox(height: height / 50),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _countryNameTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            readOnly: true,
            decoration: InputDecoration(
                prefixIcon: CountryCodePicker(
                  initialSelection: 'US',
                  showCountryOnly : true,
                  showOnlyCountryWhenClosed: true,
                  showDropDownButton: true,
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
                  alignLeft: false,
                  onChanged: (value) {
                    _countryNameTextController!.text = value.name!;
                  }
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
        SizedBox(height: height / 50),
        Row(
          children: [
            Container(
              width: width / 2.5,
              padding: EdgeInsets.only(left: width / 15, right: width / 30),
              child: TextFormField(
                controller: _stateNameTextController,
                cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                decoration: InputDecoration(
                    hintText: 'State',
                    prefixIcon: const Icon(Icons.map_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
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
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: width / 15),
                child: TextFormField(
                  controller: _cityNameTextController,
                  cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                  decoration: InputDecoration(
                      hintText: 'City',
                      prefixIcon: const Icon(Icons.location_on_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
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
              )
            ),
          ],
        ),
        SizedBox(height: height / 50),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _streetNameTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'Street',
                prefixIcon: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  height: 5,
                  width: 5,
                  child: SvgPicture.asset('assets/icons/addressPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
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
        SizedBox(height: height / 50),
        Row(
          children: [
            Expanded(
              child: Container(
                width: width / 2.5,
                padding: EdgeInsets.only(left: width / 15, right: width / 30),
                child: TextFormField(
                  controller: _aptSuiteNameTextController,
                  cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                  decoration: InputDecoration(
                      hintText: 'Apt/Suite',
                      prefixIcon: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        height: 5,
                        width: 5,
                        child: SvgPicture.asset('assets/icons/buildingPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10),),
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
            ),
            Expanded(
                child: Container(
                  padding: EdgeInsets.only(right: width / 15),
                  child: TextFormField(
                    controller: _zipCodeTextController,
                    cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                    decoration: InputDecoration(
                        hintText: 'Zip code',
                        prefixIcon: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          height: 5,
                          width: 5,
                          child: SvgPicture.asset('assets/icons/zipPrefix.svg', color: Color.fromRGBO(9, 91, 130, 10),),
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
                )
            ),
          ],
        ),
        SizedBox(height: height / 50),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _linkedInLinkTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'https://',
                prefixIcon: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  height: 1,
                  width: 1,
                  child: SvgPicture.asset('assets/icons/linkedinPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
              )
            ),
          ),
        ),
        SizedBox(height: height / 50),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _behanceLinkTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
              hintText: 'https://',
              prefixIcon: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 1,
                width: 1,
                child: SvgPicture.asset('assets/icons/behancePrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
              ),
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                )
            ),
          ),
        ),
        SizedBox(height: height / 50),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _webSiteLinkTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
              hintText: 'https://',
              prefixIcon: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 1,
                width: 1,
                child: SvgPicture.asset('assets/icons/dribblePrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
              ),
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                )
            ),
          ),
        ),
        SizedBox(height: height / 50),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 15),
          child: InkWell(
            onTap: (){

            },
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 48,
              width: width / 1.1,
              child: const Center(
                child: Text(
                  'Finish Registration',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(123, 17, 19, 10),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            ),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }

  Widget individualTypeWidget(){
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(top: height / 20, left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _firstNameTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'First name',
                prefixIcon: const Icon(Icons.person_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
        SizedBox(height: height / 50),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _lastNameTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'Last name',
                prefixIcon: const Icon(Icons.person_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
        SizedBox(height: height / 50),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _countryNameTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            readOnly: true,
            decoration: InputDecoration(
                prefixIcon: CountryCodePicker(
                    initialSelection: 'US',
                    showCountryOnly : true,
                    showOnlyCountryWhenClosed: true,
                    showDropDownButton: true,
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
                    alignLeft: false,
                    onChanged: (value) {
                      _countryNameTextController!.text = value.name!;
                    }
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
        SizedBox(height: height / 50),
        Row(
          children: [
            Container(
              width: width / 2.5,
              padding: EdgeInsets.only(left: width / 15, right: width / 30),
              child: TextFormField(
                controller: _stateNameTextController,
                cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                decoration: InputDecoration(
                    hintText: 'State',
                    prefixIcon: const Icon(Icons.map_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
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
            Expanded(
                child: Container(
                  padding: EdgeInsets.only(right: width / 15),
                  child: TextFormField(
                    controller: _cityNameTextController,
                    cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                    decoration: InputDecoration(
                        hintText: 'City',
                        prefixIcon: const Icon(Icons.location_on_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
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
                )
            ),
          ],
        ),
        SizedBox(height: height / 50),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _streetNameTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'Street',
                prefixIcon: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  height: 5,
                  width: 5,
                  child: SvgPicture.asset('assets/icons/addressPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
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
        SizedBox(height: height / 50),
        Row(
          children: [
            Expanded(
              child: Container(
                width: width / 2.5,
                padding: EdgeInsets.only(left: width / 15, right: width / 30),
                child: TextFormField(
                  controller: _aptSuiteNameTextController,
                  cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                  decoration: InputDecoration(
                      hintText: 'Apt/Suite',
                      prefixIcon: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        height: 5,
                        width: 5,
                        child: SvgPicture.asset('assets/icons/buildingPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10),),
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
            ),
            Expanded(
                child: Container(
                  padding: EdgeInsets.only(right: width / 15),
                  child: TextFormField(
                    controller: _zipCodeTextController,
                    cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                    decoration: InputDecoration(
                        hintText: 'Zip code',
                        prefixIcon: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          height: 5,
                          width: 5,
                          child: SvgPicture.asset('assets/icons/zipPrefix.svg', color: Color.fromRGBO(9, 91, 130, 10),),
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
                )
            ),
          ],
        ),
        SizedBox(height: height / 50),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _linkedInLinkTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'https://',
                prefixIcon: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  height: 1,
                  width: 1,
                  child: SvgPicture.asset('assets/icons/linkedinPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                ),
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                )
            ),
          ),
        ),
        SizedBox(height: height / 50),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _behanceLinkTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'https://',
                prefixIcon: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  height: 1,
                  width: 1,
                  child: SvgPicture.asset('assets/icons/behancePrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                ),
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                )
            ),
          ),
        ),
        SizedBox(height: height / 50),
        Container(
          padding: EdgeInsets.only(left: width / 15, right: width / 15),
          child: TextFormField(
            controller: _webSiteLinkTextController,
            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
            decoration: InputDecoration(
                hintText: 'https://',
                prefixIcon: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  height: 1,
                  width: 1,
                  child: SvgPicture.asset('assets/icons/dribblePrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                ),
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                )
            ),
          ),
        ),
        SizedBox(height: height / 50),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 15),
          child: InkWell(
            onTap: (){

            },
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 48,
              width: width / 1.1,
              child: const Center(
                child: Text(
                  'Finish Registration',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(123, 17, 19, 10),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget frontEndTypeWidget(){
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 50),
        child: SizedBox(
          height: height,
          width: width,
          child: Stepper(
            type: StepperType.horizontal,
            currentStep: _currentStep,
            elevation: 5,
            controlsBuilder: (context, details){
              return Container();
            },
            steps: [
              Step(
                  isActive: _currentStep == 0,
                  title: const Text('Details'),
                  content: SizedBox(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'What technologies do you know',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isJavaScriptSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isJavaScriptSelected = value!;
                                  });
                                },
                              ),
                              const Text('JavaScript', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 20),
                              Checkbox(
                                value: _isVueJsSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isVueJsSelected = value!;
                                  });
                                },
                              ),
                              const Text('Vue.js', style: TextStyle(fontSize: 17))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isReactSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isReactSelected = value!;
                                  });
                                },
                              ),
                              const Text('React', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 6.8),
                              Checkbox(
                                value: _isAngularJsSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isAngularJsSelected = value!;
                                  });
                                },
                              ),
                              const Text('Angular.js', style: TextStyle(fontSize: 17))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isNuxtJsSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isNuxtJsSelected = value!;
                                  });
                                },
                              ),
                              const Text('Nuxt.js', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 8.2),
                              Checkbox(
                                value: _isNextJsSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isNextJsSelected = value!;
                                  });
                                },
                              ),
                              const Text('Next.js', style: TextStyle(fontSize: 17))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isTailwindCssSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isTailwindCssSelected = value!;
                                  });
                                },
                              ),
                              const Text('Tailwind CSS', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 115),
                              Checkbox(
                                value: _isSASSSCSSSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isSASSSCSSSelected = value!;
                                  });
                                },
                              ),
                              const Text('SASS/SCSS', style: TextStyle(fontSize: 17))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isGitSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isGitSelected = value!;
                                  });
                                },
                              ),
                              const Text('Git', style: TextStyle(fontSize: 17))
                            ],
                          ),
                        ),
                        SizedBox(height: height / 40),
                        SizedBox(
                          width: width,
                          child: const Text(
                            'What additional skills do you have ?',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        SizedBox(height: height / 60),
                        TextFormField(
                          cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                          textInputAction: TextInputAction.done,
                          maxLines: 5,
                          decoration: const InputDecoration(
                            hintText: 'Skills',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: height / 40),
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'Select your seniority level',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Radio<int>(
                                      value: 0,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Junior', style: TextStyle(fontSize: 17)),
                                    const SizedBox(width: 10),
                                    Radio<int>(
                                      value: 1,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Senior', style: TextStyle(fontSize: 17)),
                                    const SizedBox(width: 10),
                                    Radio<int>(
                                      value: 2,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Middle', style: TextStyle(fontSize: 17)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      child: Radio<int>(
                                        value: 3,
                                        groupValue: _groupValue,
                                        activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                        onChanged: (value){
                                          setState(() {
                                            _groupValue = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    const Text('Not sure', style: TextStyle(fontSize: 17))
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: height / 30),
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'I want to work',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isPartTimeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isPartTimeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Part time', style: TextStyle(fontSize: 18)),
                                const SizedBox(width: 19),
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isFullTimeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isFullTimeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Full time', style: TextStyle(fontSize: 18))
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 30,
                                  child: Checkbox(
                                    value: _isByProjectSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isByProjectSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('By project', style: TextStyle(fontSize: 18)),
                                const SizedBox(width: 10),
                                SizedBox(
                                  height: 30,
                                  child: Checkbox(
                                    value: _isFreePlaneSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isFreePlaneSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Free plan', style: TextStyle(fontSize: 18))
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isNotSureWorkTypeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isNotSureWorkTypeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Not sure', style: TextStyle(fontSize: 18))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: height / 50),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _currentStep += 1;
                            });
                          },
                          child: Container(
                            height: 48,
                            width: width / 1.1,
                            child: const Center(
                              child: Text(
                                'Next',
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            ),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(123, 17, 19, 10),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Step(
                  isActive:  _currentStep == 1,
                  title: const Text('Information'),
                  content: SizedBox(
                    child: Column(
                      children: [
                        SizedBox(
                          child: TextFormField(
                            controller: _firstNameTextController,
                            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                            decoration: InputDecoration(
                                hintText: 'First name',
                                prefixIcon: const Icon(Icons.person_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
                        SizedBox(height: height / 50),
                        SizedBox(
                          child: TextFormField(
                            controller: _lastNameTextController,
                            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                            decoration: InputDecoration(
                                hintText: 'Last name',
                                prefixIcon: const Icon(Icons.person_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
                        SizedBox(height: height / 50),
                        SizedBox(
                          child: TextFormField(
                            controller: _countryNameTextController,
                            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                            readOnly: true,
                            decoration: InputDecoration(
                                prefixIcon: CountryCodePicker(
                                    initialSelection: 'US',
                                    showCountryOnly : true,
                                    showOnlyCountryWhenClosed: true,
                                    showDropDownButton: true,
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
                                    alignLeft: false,
                                    onChanged: (value) {
                                      _countryNameTextController!.text = value.name!;
                                    }
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
                        SizedBox(height: height / 50),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 2.5,
                              child: TextFormField(
                                controller: _stateNameTextController,
                                cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                decoration: InputDecoration(
                                    hintText: 'State',
                                    prefixIcon: const Icon(Icons.map_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
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
                            const SizedBox(width: 10),
                            Expanded(
                                child: SizedBox(
                                  child: TextFormField(
                                    controller: _cityNameTextController,
                                    cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                    decoration: InputDecoration(
                                        hintText: 'City',
                                        prefixIcon: const Icon(Icons.location_on_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
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
                                )
                            ),
                          ],
                        ),
                        SizedBox(height: height / 50),
                        SizedBox(
                          child: TextFormField(
                            controller: _streetNameTextController,
                            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                            decoration: InputDecoration(
                                hintText: 'Street',
                                prefixIcon: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  height: 5,
                                  width: 5,
                                  child: SvgPicture.asset('assets/icons/addressPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
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
                        SizedBox(height: height / 50),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: width / 2.5,
                                child: TextFormField(
                                  controller: _aptSuiteNameTextController,
                                  cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                  decoration: InputDecoration(
                                      hintText: 'Apt/Suite',
                                      prefixIcon: Container(
                                        padding: const EdgeInsets.symmetric(vertical: 8),
                                        height: 5,
                                        width: 5,
                                        child: SvgPicture.asset('assets/icons/buildingPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10),),
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
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                                child: SizedBox(
                                  child: TextFormField(
                                    controller: _zipCodeTextController,
                                    cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                    decoration: InputDecoration(
                                        hintText: 'Zip code',
                                        prefixIcon: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          height: 5,
                                          width: 5,
                                          child: SvgPicture.asset('assets/icons/zipPrefix.svg', color: Color.fromRGBO(9, 91, 130, 10),),
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
                                )
                            ),
                          ],
                        ),
                        SizedBox(height: height / 50),
                        SizedBox(
                          child: TextFormField(
                            controller: _linkedInLinkTextController,
                            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                            decoration: InputDecoration(
                                hintText: 'https://',
                                prefixIcon: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  height: 1,
                                  width: 1,
                                  child: SvgPicture.asset('assets/icons/linkedinPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: height / 50),
                        SizedBox(
                          child: TextFormField(
                            controller: _behanceLinkTextController,
                            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                            decoration: InputDecoration(
                                hintText: 'https://',
                                prefixIcon: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  height: 1,
                                  width: 1,
                                  child: SvgPicture.asset('assets/icons/behancePrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: height / 50),
                        SizedBox(
                          child: TextFormField(
                            controller: _webSiteLinkTextController,
                            cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                            decoration: InputDecoration(
                                hintText: 'https://',
                                prefixIcon: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  height: 1,
                                  width: 1,
                                  child: SvgPicture.asset('assets/icons/dribblePrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: height / 50),
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  _currentStep -= 1;
                                });
                              },
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                height: 48,
                                width: width / 7.5,
                                padding: EdgeInsets.only(left: width / 40),
                                child: const Center(
                                    child: Icon(Icons.arrow_back_ios, color: Colors.white)
                                ),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(123, 17, 19, 10),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            InkWell(
                              onTap: (){

                              },
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                height: 48,
                                width: width / 1.49,
                                child: const Center(
                                  child: Text(
                                    'Finish Registration',
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(123, 17, 19, 10),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  )
              )
            ],
            onStepTapped: (step) {
              setState(() {
                _currentStep = step;
              });
            },
          ),
        )
    );
  }

  Widget backEndTypeWidget(){
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 50),
        child: SizedBox(
          height: height,
          width: width,
          child: Stepper(
            type: StepperType.horizontal,
            currentStep: _currentStep,
            elevation: 5,
            controlsBuilder: (context, details){
              return Container();
            },
            steps: [
              Step(
                  isActive: _currentStep == 0,
                  title: const Text('Details'),
                  content: SizedBox(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'What technologies do you know',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isNodeJsSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isNodeJsSelected = value!;
                                  });
                                },
                              ),
                              const Text('Node.js', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 57),
                              Checkbox(
                                value: _isExpressJsSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isExpressJsSelected = value!;
                                  });
                                },
                              ),
                              const Text('Express.js', style: TextStyle(fontSize: 17))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isJavaSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isJavaSelected = value!;
                                  });
                                },
                              ),
                              const Text('Java', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 13),
                              Checkbox(
                                value: _isPHPSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isPHPSelected = value!;
                                  });
                                },
                              ),
                              const Text('PHP', style: TextStyle(fontSize: 17)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isGitSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isGitSelected = value!;
                                  });
                                },
                              ),
                              const Text('Git', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 9),
                              Checkbox(
                                value: _isDjangoSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isDjangoSelected = value!;
                                  });
                                },
                              ),
                              const Text('Django', style: TextStyle(fontSize: 17)),
                            ],
                          ),
                        ),
                        SizedBox(height: height / 40),
                        SizedBox(
                          width: width,
                          child: const Text(
                            'What additional skills do you have ?',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        SizedBox(height: height / 60),
                        TextFormField(
                          cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                          textInputAction: TextInputAction.done,
                          maxLines: 5,
                          decoration: const InputDecoration(
                            hintText: 'Skills',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: height / 40),
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'Select your seniority level',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Radio<int>(
                                      value: 0,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Junior', style: TextStyle(fontSize: 17)),
                                    const SizedBox(width: 10),
                                    Radio<int>(
                                      value: 1,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Senior', style: TextStyle(fontSize: 17)),
                                    const SizedBox(width: 10),
                                    Radio<int>(
                                      value: 2,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Middle', style: TextStyle(fontSize: 17)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      child: Radio<int>(
                                        value: 3,
                                        groupValue: _groupValue,
                                        activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                        onChanged: (value){
                                          setState(() {
                                            _groupValue = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    const Text('Not sure', style: TextStyle(fontSize: 17))
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: height / 30),
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'I want to work',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isPartTimeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isPartTimeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Part time', style: TextStyle(fontSize: 17)),
                                const SizedBox(width: 19),
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isFullTimeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isFullTimeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Full time', style: TextStyle(fontSize: 17))
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 30,
                                  child: Checkbox(
                                    value: _isByProjectSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isByProjectSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('By project', style: TextStyle(fontSize: 17)),
                                const SizedBox(width: 10),
                                SizedBox(
                                  height: 30,
                                  child: Checkbox(
                                    value: _isFreePlaneSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isFreePlaneSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Free plan', style: TextStyle(fontSize: 17))
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isNotSureWorkTypeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isNotSureWorkTypeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Not sure', style: TextStyle(fontSize: 17))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: height / 50),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _currentStep += 1;
                            });
                          },
                          child: Container(
                            height: 48,
                            width: width / 1.1,
                            child: const Center(
                              child: Text(
                                'Next',
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            ),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(123, 17, 19, 10),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Step(
                  isActive:  _currentStep == 1,
                  title: const Text('Information'),
                  content: SizedBox(
                      child: Column(
                        children: [
                          SizedBox(
                            child: TextFormField(
                              controller: _firstNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'First name',
                                  prefixIcon: const Icon(Icons.person_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _lastNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'Last name',
                                  prefixIcon: const Icon(Icons.person_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _countryNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              readOnly: true,
                              decoration: InputDecoration(
                                  prefixIcon: CountryCodePicker(
                                      initialSelection: 'US',
                                      showCountryOnly : true,
                                      showOnlyCountryWhenClosed: true,
                                      showDropDownButton: true,
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
                                      alignLeft: false,
                                      onChanged: (value) {
                                        _countryNameTextController!.text = value.name!;
                                      }
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
                          SizedBox(height: height / 50),
                          Row(
                            children: [
                              SizedBox(
                                width: width / 2.5,
                                child: TextFormField(
                                  controller: _stateNameTextController,
                                  cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                  decoration: InputDecoration(
                                      hintText: 'State',
                                      prefixIcon: const Icon(Icons.map_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
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
                              const SizedBox(width: 10),
                              Expanded(
                                  child: SizedBox(
                                    child: TextFormField(
                                      controller: _cityNameTextController,
                                      cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                      decoration: InputDecoration(
                                          hintText: 'City',
                                          prefixIcon: const Icon(Icons.location_on_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
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
                                  )
                              ),
                            ],
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _streetNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'Street',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    height: 5,
                                    width: 5,
                                    child: SvgPicture.asset('assets/icons/addressPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
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
                          SizedBox(height: height / 50),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  width: width / 2.5,
                                  child: TextFormField(
                                    controller: _aptSuiteNameTextController,
                                    cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                    decoration: InputDecoration(
                                        hintText: 'Apt/Suite',
                                        prefixIcon: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          height: 5,
                                          width: 5,
                                          child: SvgPicture.asset('assets/icons/buildingPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10),),
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
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                  child: SizedBox(
                                    child: TextFormField(
                                      controller: _zipCodeTextController,
                                      cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                      decoration: InputDecoration(
                                          hintText: 'Zip code',
                                          prefixIcon: Container(
                                            padding: const EdgeInsets.symmetric(vertical: 8),
                                            height: 5,
                                            width: 5,
                                            child: SvgPicture.asset('assets/icons/zipPrefix.svg', color: Color.fromRGBO(9, 91, 130, 10),),
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
                                  )
                              ),
                            ],
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _linkedInLinkTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'https://',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    height: 1,
                                    width: 1,
                                    child: SvgPicture.asset('assets/icons/linkedinPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _behanceLinkTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'https://',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    height: 1,
                                    width: 1,
                                    child: SvgPicture.asset('assets/icons/behancePrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _webSiteLinkTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'https://',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    height: 1,
                                    width: 1,
                                    child: SvgPicture.asset('assets/icons/dribblePrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: height / 50),
                          Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    _currentStep -= 1;
                                  });
                                },
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 48,
                                  width: width / 7.5,
                                  padding: EdgeInsets.only(left: width / 40),
                                  child: const Center(
                                      child: Icon(Icons.arrow_back_ios, color: Colors.white)
                                  ),
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(123, 17, 19, 10),
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              InkWell(
                                onTap: (){

                                },
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 48,
                                  width: width / 1.49,
                                  child: const Center(
                                    child: Text(
                                      'Finish Registration',
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(123, 17, 19, 10),
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                  )
              )
            ],
            onStepTapped: (step) {
              setState(() {
                _currentStep = step;
              });
            },
          ),
        )
    );
  }

  Widget projectManagerTypeWidget(){
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 50),
        child: SizedBox(
          height: height,
          width: width,
          child: Stepper(
            type: StepperType.horizontal,
            currentStep: _currentStep,
            elevation: 5,
            controlsBuilder: (context, details){
              return Container();
            },
            steps: [
              Step(
                  isActive: _currentStep == 0,
                  title: const Text('Details'),
                  content: SizedBox(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'What technologies do you know',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isJiraSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isJiraSelected = value!;
                                  });
                                },
                              ),
                              const Text('Jira', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 7.4),
                              Checkbox(
                                value: _isTrelloSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isTrelloSelected = value!;
                                  });
                                },
                              ),
                              const Text('Trello', style: TextStyle(fontSize: 17)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isNotionSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isNotionSelected = value!;
                                  });
                                },
                              ),
                              const Text('Notion', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 13),
                              Checkbox(
                                value: _isBitrix24Selected,
                                onChanged: (value){
                                  setState(() {
                                    _isBitrix24Selected = value!;
                                  });
                                },
                              ),
                              const Text('Bitrix 24', style: TextStyle(fontSize: 17)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isAtlassianSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isAtlassianSelected = value!;
                                  });
                                },
                              ),
                              const Text('Atlassian', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 32),
                              Checkbox(
                                value: _isPivotalSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isPivotalSelected = value!;
                                  });
                                },
                              ),
                              const Text('Pivotal', style: TextStyle(fontSize: 17)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isSlackSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isSlackSelected = value!;
                                  });
                                },
                              ),
                              const Text('Slack', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 9.5),
                              Checkbox(
                                value: _isAgileSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isAgileSelected = value!;
                                  });
                                },
                              ),
                              const Text('Agile', style: TextStyle(fontSize: 17))
                            ],
                          ),
                        ),
                        SizedBox(height: height / 40),
                        SizedBox(
                          width: width,
                          child: const Text(
                            'What additional skills do you have ?',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        SizedBox(height: height / 60),
                        TextFormField(
                          cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                          textInputAction: TextInputAction.done,
                          maxLines: 5,
                          decoration: const InputDecoration(
                            hintText: 'Skills',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: height / 40),
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'Select your seniority level',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Radio<int>(
                                      value: 0,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Junior', style: TextStyle(fontSize: 17)),
                                    const SizedBox(width: 10),
                                    Radio<int>(
                                      value: 1,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Senior', style: TextStyle(fontSize: 17)),
                                    const SizedBox(width: 10),
                                    Radio<int>(
                                      value: 2,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Middle', style: TextStyle(fontSize: 17)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      child: Radio<int>(
                                        value: 3,
                                        groupValue: _groupValue,
                                        activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                        onChanged: (value){
                                          setState(() {
                                            _groupValue = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    const Text('Not sure', style: TextStyle(fontSize: 17))
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: height / 30),
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'I want to work',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isPartTimeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isPartTimeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Part time', style: TextStyle(fontSize: 17)),
                                const SizedBox(width: 19),
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isFullTimeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isFullTimeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Full time', style: TextStyle(fontSize: 17))
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 30,
                                  child: Checkbox(
                                    value: _isByProjectSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isByProjectSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('By project', style: TextStyle(fontSize: 17)),
                                const SizedBox(width: 10),
                                SizedBox(
                                  height: 30,
                                  child: Checkbox(
                                    value: _isFreePlaneSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isFreePlaneSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Free plan', style: TextStyle(fontSize: 17))
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isNotSureWorkTypeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isNotSureWorkTypeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Not sure', style: TextStyle(fontSize: 17))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: height / 50),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _currentStep += 1;
                            });
                          },
                          child: Container(
                            height: 48,
                            width: width / 1.1,
                            child: const Center(
                              child: Text(
                                'Next',
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            ),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(123, 17, 19, 10),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Step(
                  isActive:  _currentStep == 1,
                  title: const Text('Information'),
                  content: SizedBox(
                      child: Column(
                        children: [
                          SizedBox(
                            child: TextFormField(
                              controller: _firstNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'First name',
                                  prefixIcon: const Icon(Icons.person_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _lastNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'Last name',
                                  prefixIcon: const Icon(Icons.person_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _countryNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              readOnly: true,
                              decoration: InputDecoration(
                                  prefixIcon: CountryCodePicker(
                                      initialSelection: 'US',
                                      showCountryOnly : true,
                                      showOnlyCountryWhenClosed: true,
                                      showDropDownButton: true,
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
                                      alignLeft: false,
                                      onChanged: (value) {
                                        _countryNameTextController!.text = value.name!;
                                      }
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
                          SizedBox(height: height / 50),
                          Row(
                            children: [
                              SizedBox(
                                width: width / 2.5,
                                child: TextFormField(
                                  controller: _stateNameTextController,
                                  cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                  decoration: InputDecoration(
                                      hintText: 'State',
                                      prefixIcon: const Icon(Icons.map_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
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
                              const SizedBox(width: 10),
                              Expanded(
                                  child: SizedBox(
                                    child: TextFormField(
                                      controller: _cityNameTextController,
                                      cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                      decoration: InputDecoration(
                                          hintText: 'City',
                                          prefixIcon: const Icon(Icons.location_on_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
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
                                  )
                              ),
                            ],
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _streetNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'Street',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    height: 5,
                                    width: 5,
                                    child: SvgPicture.asset('assets/icons/addressPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
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
                          SizedBox(height: height / 50),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  width: width / 2.5,
                                  child: TextFormField(
                                    controller: _aptSuiteNameTextController,
                                    cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                    decoration: InputDecoration(
                                        hintText: 'Apt/Suite',
                                        prefixIcon: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          height: 5,
                                          width: 5,
                                          child: SvgPicture.asset('assets/icons/buildingPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10),),
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
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                  child: SizedBox(
                                    child: TextFormField(
                                      controller: _zipCodeTextController,
                                      cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                      decoration: InputDecoration(
                                          hintText: 'Zip code',
                                          prefixIcon: Container(
                                            padding: const EdgeInsets.symmetric(vertical: 8),
                                            height: 5,
                                            width: 5,
                                            child: SvgPicture.asset('assets/icons/zipPrefix.svg', color: Color.fromRGBO(9, 91, 130, 10),),
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
                                  )
                              ),
                            ],
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _linkedInLinkTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'https://',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    height: 1,
                                    width: 1,
                                    child: SvgPicture.asset('assets/icons/linkedinPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _behanceLinkTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'https://',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    height: 1,
                                    width: 1,
                                    child: SvgPicture.asset('assets/icons/behancePrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _webSiteLinkTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'https://',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    height: 1,
                                    width: 1,
                                    child: SvgPicture.asset('assets/icons/dribblePrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: height / 50),
                          Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    _currentStep -= 1;
                                  });
                                },
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 48,
                                  width: width / 7.5,
                                  padding: EdgeInsets.only(left: width / 40),
                                  child: const Center(
                                      child: Icon(Icons.arrow_back_ios, color: Colors.white)
                                  ),
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(123, 17, 19, 10),
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              InkWell(
                                onTap: (){

                                },
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 48,
                                  width: width / 1.49,
                                  child: const Center(
                                    child: Text(
                                      'Finish Registration',
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(123, 17, 19, 10),
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                  )
              )
            ],
            onStepTapped: (step) {
              setState(() {
                _currentStep = step;
              });
            },
          ),
        )
    );
  }

  Widget QATypeWidget(){
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 30),
        child: SizedBox(
          height: height,
          width: width,
          child: Stepper(
            type: StepperType.horizontal,
            currentStep: _currentStep,
            elevation: 5,
            controlsBuilder: (context, details){
              return Container();
            },
            steps: [
              Step(
                  isActive: _currentStep == 0,
                  title: const Text('Details'),
                  content: SizedBox(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'What technologies do you know',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isUnitTestingSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isUnitTestingSelected = value!;
                                  });
                                },
                              ),
                              const Text('Unit testing', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 30),
                              Checkbox(
                                value: _isQualityControlerSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isQualityControlerSelected = value!;
                                  });
                                },
                              ),
                              const Text('Quality control', style: TextStyle(fontSize: 17)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isUIUXSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isUIUXSelected = value!;
                                  });
                                },
                              ),
                              const Text('UI/UX testing', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 500),
                              Checkbox(
                                value: _isTestingServerSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isTestingServerSelected = value!;
                                  });
                                },
                              ),
                              const Text('Testing Server', style: TextStyle(fontSize: 17)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isSafetyTestSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isSafetyTestSelected = value!;
                                  });
                                },
                              ),
                              const Text('Safety test', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 19),
                              Checkbox(
                                value: _isTestToolSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isTestToolSelected = value!;
                                  });
                                },
                              ),
                              const Text('Test tool', style: TextStyle(fontSize: 17)),
                            ],
                          ),
                        ),
                        SizedBox(height: height / 40),
                        SizedBox(
                          width: width,
                          child: const Text(
                            'What additional skills do you have ?',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        SizedBox(height: height / 60),
                        TextFormField(
                          cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                          textInputAction: TextInputAction.done,
                          maxLines: 5,
                          decoration: const InputDecoration(
                            hintText: 'Skills',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: height / 40),
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'Select your seniority level',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Radio<int>(
                                      value: 0,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Junior', style: TextStyle(fontSize: 17)),
                                    const SizedBox(width: 10),
                                    Radio<int>(
                                      value: 1,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Senior', style: TextStyle(fontSize: 17)),
                                    const SizedBox(width: 10),
                                    Radio<int>(
                                      value: 2,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Middle', style: TextStyle(fontSize: 17)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      child: Radio<int>(
                                        value: 3,
                                        groupValue: _groupValue,
                                        activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                        onChanged: (value){
                                          setState(() {
                                            _groupValue = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    const Text('Not sure', style: TextStyle(fontSize: 17))
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: height / 30),
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'I want to work',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isPartTimeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isPartTimeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Part time', style: TextStyle(fontSize: 17)),
                                const SizedBox(width: 19),
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isFullTimeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isFullTimeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Full time', style: TextStyle(fontSize: 17))
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 30,
                                  child: Checkbox(
                                    value: _isByProjectSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isByProjectSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('By project', style: TextStyle(fontSize: 17)),
                                const SizedBox(width: 10),
                                SizedBox(
                                  height: 30,
                                  child: Checkbox(
                                    value: _isFreePlaneSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isFreePlaneSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Free plan', style: TextStyle(fontSize: 17))
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isNotSureWorkTypeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isNotSureWorkTypeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Not sure', style: TextStyle(fontSize: 17))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: height / 50),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _currentStep += 1;
                            });
                          },
                          child: Container(
                            height: 48,
                            width: width / 1.1,
                            child: const Center(
                              child: Text(
                                'Next',
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            ),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(123, 17, 19, 10),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Step(
                  isActive:  _currentStep == 1,
                  title: const Text('Information'),
                  content: SizedBox(
                      child: Column(
                        children: [
                          SizedBox(
                            child: TextFormField(
                              controller: _firstNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'First name',
                                  prefixIcon: const Icon(Icons.person_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _lastNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'Last name',
                                  prefixIcon: const Icon(Icons.person_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _countryNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              readOnly: true,
                              decoration: InputDecoration(
                                  prefixIcon: CountryCodePicker(
                                      initialSelection: 'US',
                                      showCountryOnly : true,
                                      showOnlyCountryWhenClosed: true,
                                      showDropDownButton: true,
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
                                      alignLeft: false,
                                      onChanged: (value) {
                                        _countryNameTextController!.text = value.name!;
                                      }
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
                          SizedBox(height: height / 50),
                          Row(
                            children: [
                              SizedBox(
                                width: width / 2.5,
                                child: TextFormField(
                                  controller: _stateNameTextController,
                                  cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                  decoration: InputDecoration(
                                      hintText: 'State',
                                      prefixIcon: const Icon(Icons.map_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
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
                              const SizedBox(width: 10),
                              Expanded(
                                  child: SizedBox(
                                    child: TextFormField(
                                      controller: _cityNameTextController,
                                      cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                      decoration: InputDecoration(
                                          hintText: 'City',
                                          prefixIcon: const Icon(Icons.location_on_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
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
                                  )
                              ),
                            ],
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _streetNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'Street',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    height: 5,
                                    width: 5,
                                    child: SvgPicture.asset('assets/icons/addressPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
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
                          SizedBox(height: height / 50),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  width: width / 2.5,
                                  child: TextFormField(
                                    controller: _aptSuiteNameTextController,
                                    cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                    decoration: InputDecoration(
                                        hintText: 'Apt/Suite',
                                        prefixIcon: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          height: 5,
                                          width: 5,
                                          child: SvgPicture.asset('assets/icons/buildingPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10),),
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
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                  child: SizedBox(
                                    child: TextFormField(
                                      controller: _zipCodeTextController,
                                      cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                      decoration: InputDecoration(
                                          hintText: 'Zip code',
                                          prefixIcon: Container(
                                            padding: const EdgeInsets.symmetric(vertical: 8),
                                            height: 5,
                                            width: 5,
                                            child: SvgPicture.asset('assets/icons/zipPrefix.svg', color: Color.fromRGBO(9, 91, 130, 10),),
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
                                  )
                              ),
                            ],
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _linkedInLinkTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'https://',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    height: 1,
                                    width: 1,
                                    child: SvgPicture.asset('assets/icons/linkedinPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _behanceLinkTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'https://',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    height: 1,
                                    width: 1,
                                    child: SvgPicture.asset('assets/icons/behancePrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _webSiteLinkTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'https://',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    height: 1,
                                    width: 1,
                                    child: SvgPicture.asset('assets/icons/dribblePrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: height / 50),
                          Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      _currentStep -= 1;
                                    });
                                  },
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  child: Container(
                                    height: 48,
                                    width: width / 7.5,
                                    padding: EdgeInsets.only(left: width / 40),
                                    child: const Center(
                                      child: Icon(Icons.arrow_back_ios, color: Colors.white)
                                    ),
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(123, 17, 19, 10),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                InkWell(
                                  onTap: (){

                                  },
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  child: Container(
                                    height: 48,
                                    width: width / 1.49,
                                    child: const Center(
                                      child: Text(
                                        'Finish Registration',
                                        style: TextStyle(color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(123, 17, 19, 10),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                  ),
                                ),
                              ],
                          )
                        ],
                      )
                  )
              )
            ],
            onStepTapped: (step) {
              setState(() {
                _currentStep = step;
              });
            },
          ),
        )
    );
  }

  Widget designerTypeWidget(){
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 50),
        child: SizedBox(
          height: height,
          width: width,
          child: Stepper(
            type: StepperType.horizontal,
            currentStep: _currentStep,
            elevation: 5,
            controlsBuilder: (context, details){
              return Container();
            },
            steps: [
              Step(
                  isActive: _currentStep == 0,
                  title: const Text('Details'),
                  content: SizedBox(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'What technologies do you know',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isUnitTestingSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isUnitTestingSelected = value!;
                                  });
                                },
                              ),
                              const Text('UI/UX design', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 13),
                              Checkbox(
                                value: _isQualityControlerSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isQualityControlerSelected = value!;
                                  });
                                },
                              ),
                              const Text('Web design', style: TextStyle(fontSize: 17)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isUIUXSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isUIUXSelected = value!;
                                  });
                                },
                              ),
                              const Text('Graphic design', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 26),
                              Checkbox(
                                value: _isTestingServerSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isTestingServerSelected = value!;
                                  });
                                },
                              ),
                              const Text('3D design', style: TextStyle(fontSize: 17)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isSafetyTestSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isSafetyTestSelected = value!;
                                  });
                                },
                              ),
                              const Text('Industrial design', style: TextStyle(fontSize: 17)),
                              SizedBox(width: width / 110),
                              Checkbox(
                                value: _isTestToolSelected,
                                onChanged: (value){
                                  setState(() {
                                    _isTestToolSelected = value!;
                                  });
                                },
                              ),
                              const Text('Motion design', style: TextStyle(fontSize: 17)),
                            ],
                          ),
                        ),
                        SizedBox(height: height / 40),
                        SizedBox(
                          width: width,
                          child: const Text(
                            'What additional skills do you have ?',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        SizedBox(height: height / 60),
                        TextFormField(
                          cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                          textInputAction: TextInputAction.done,
                          maxLines: 5,
                          decoration: const InputDecoration(
                            hintText: 'Skills',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: height / 40),
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'Select your seniority level',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Radio<int>(
                                      value: 0,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Junior', style: TextStyle(fontSize: 17)),
                                    const SizedBox(width: 10),
                                    Radio<int>(
                                      value: 1,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Senior', style: TextStyle(fontSize: 17)),
                                    const SizedBox(width: 10),
                                    Radio<int>(
                                      value: 2,
                                      groupValue: _groupValue,
                                      activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                      onChanged: (value){
                                        setState(() {
                                          _groupValue = value!;
                                        });
                                      },
                                    ),
                                    const Text('Middle', style: TextStyle(fontSize: 17)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      child: Radio<int>(
                                        value: 3,
                                        groupValue: _groupValue,
                                        activeColor: const Color.fromRGBO(9, 91, 130, 10),
                                        onChanged: (value){
                                          setState(() {
                                            _groupValue = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    const Text('Not sure', style: TextStyle(fontSize: 17))
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: height / 30),
                        Container(
                          padding: EdgeInsets.only(left: height / 80),
                          width: width,
                          child: const Text(
                            'I want to work',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isPartTimeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isPartTimeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Part time', style: TextStyle(fontSize: 17)),
                                const SizedBox(width: 19),
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isFullTimeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isFullTimeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Full time', style: TextStyle(fontSize: 17))
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 30,
                                  child: Checkbox(
                                    value: _isByProjectSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isByProjectSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('By project', style: TextStyle(fontSize: 17)),
                                const SizedBox(width: 10),
                                SizedBox(
                                  height: 30,
                                  child: Checkbox(
                                    value: _isFreePlaneSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isFreePlaneSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Free plan', style: TextStyle(fontSize: 17))
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Checkbox(
                                    value: _isNotSureWorkTypeSelected,
                                    onChanged: (value){
                                      setState(() {
                                        _isNotSureWorkTypeSelected = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Not sure', style: TextStyle(fontSize: 17))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: height / 50),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _currentStep += 1;
                            });
                          },
                          child: Container(
                            height: 48,
                            width: width / 1.1,
                            child: const Center(
                              child: Text(
                                'Next',
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            ),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(123, 17, 19, 10),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Step(
                  isActive:  _currentStep == 1,
                  title: const Text('Information'),
                  content: SizedBox(
                      child: Column(
                        children: [
                          SizedBox(
                            child: TextFormField(
                              controller: _firstNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'First name',
                                  prefixIcon: const Icon(Icons.person_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _lastNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'Last name',
                                  prefixIcon: const Icon(Icons.person_outline, color: Color.fromRGBO(9, 91, 130, 10)),
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
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _countryNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              readOnly: true,
                              decoration: InputDecoration(
                                  prefixIcon: CountryCodePicker(
                                      initialSelection: 'US',
                                      showCountryOnly : true,
                                      showOnlyCountryWhenClosed: true,
                                      showDropDownButton: true,
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
                                      alignLeft: false,
                                      onChanged: (value) {
                                        _countryNameTextController!.text = value.name!;
                                      }
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
                          SizedBox(height: height / 50),
                          Row(
                            children: [
                              SizedBox(
                                width: width / 2.5,
                                child: TextFormField(
                                  controller: _stateNameTextController,
                                  cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                  decoration: InputDecoration(
                                      hintText: 'State',
                                      prefixIcon: const Icon(Icons.map_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
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
                              const SizedBox(width: 10),
                              Expanded(
                                  child: SizedBox(
                                    child: TextFormField(
                                      controller: _cityNameTextController,
                                      cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                      decoration: InputDecoration(
                                          hintText: 'City',
                                          prefixIcon: const Icon(Icons.location_on_outlined, color: Color.fromRGBO(9, 91, 130, 10)),
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
                                  )
                              ),
                            ],
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _streetNameTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'Street',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    height: 5,
                                    width: 5,
                                    child: SvgPicture.asset('assets/icons/addressPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
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
                          SizedBox(height: height / 50),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  width: width / 2.5,
                                  child: TextFormField(
                                    controller: _aptSuiteNameTextController,
                                    cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                    decoration: InputDecoration(
                                        hintText: 'Apt/Suite',
                                        prefixIcon: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          height: 5,
                                          width: 5,
                                          child: SvgPicture.asset('assets/icons/buildingPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10),),
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
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                  child: SizedBox(
                                    child: TextFormField(
                                      controller: _zipCodeTextController,
                                      cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                                      decoration: InputDecoration(
                                          hintText: 'Zip code',
                                          prefixIcon: Container(
                                            padding: const EdgeInsets.symmetric(vertical: 8),
                                            height: 5,
                                            width: 5,
                                            child: SvgPicture.asset('assets/icons/zipPrefix.svg', color: Color.fromRGBO(9, 91, 130, 10),),
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
                                  )
                              ),
                            ],
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _linkedInLinkTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'https://',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    height: 1,
                                    width: 1,
                                    child: SvgPicture.asset('assets/icons/linkedinPrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _behanceLinkTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'https://',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    height: 1,
                                    width: 1,
                                    child: SvgPicture.asset('assets/icons/behancePrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: height / 50),
                          SizedBox(
                            child: TextFormField(
                              controller: _webSiteLinkTextController,
                              cursorColor: const Color.fromRGBO(9, 91, 130, 10),
                              decoration: InputDecoration(
                                  hintText: 'https://',
                                  prefixIcon: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    height: 1,
                                    width: 1,
                                    child: SvgPicture.asset('assets/icons/dribblePrefix.svg', color: const Color.fromRGBO(9, 91, 130, 10)),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromRGBO(9, 91, 130, 10))
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: height / 50),
                          Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    _currentStep -= 1;
                                  });
                                },
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 48,
                                  width: width / 7.5,
                                  padding: EdgeInsets.only(left: width / 40),
                                  child: const Center(
                                      child: Icon(Icons.arrow_back_ios, color: Colors.white)
                                  ),
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(123, 17, 19, 10),
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              InkWell(
                                onTap: (){

                                },
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 48,
                                  width: width / 1.49,
                                  child: const Center(
                                    child: Text(
                                      'Finish Registration',
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(123, 17, 19, 10),
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                  )
              )
            ],
            onStepTapped: (step) {
              setState(() {
                _currentStep = step;
              });
            },
          ),
        )
    );
  }

}