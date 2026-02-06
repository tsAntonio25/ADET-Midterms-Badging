import 'package:flutter/material.dart';
import 'package:flutter_badging/pages/bottomnav.dart';
import 'package:flutter_badging/widgets/customBtn.dart';
import 'package:flutter_badging/widgets/customInputTxt.dart';

class Login extends StatelessWidget {
  // parameters\
  // height and width
  late double _dHeight, _dWidth;

  // controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  // error text
  final ValueNotifier<String> _errLogin = ValueNotifier<String>("");

  Login({super.key});

  // overall structure
  @override
  Widget build(BuildContext context) {
    // get device's height and width
    _dHeight = MediaQuery.of(context).size.height;
    _dWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: _dWidth,
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Center(
              child: SizedBox(
                width: _dWidth * 0.85,

                // assemble
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    // login form
                    Padding(
                      padding: const EdgeInsets.only(top: 75),
                      child: _loginForm(context),
                    ),

                    // logo
                    Positioned(top: 0, child: _daydreamLogo()),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // daydream logo
  Widget _daydreamLogo() {
    return Container(
      // define size
      height: 150,
      width: 150,

      // design
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Baekilmong_Logo.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  // company title
  Widget _companyTitle() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Text(
          "Daydream Co., Ltd.",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
        SizedBox(height: 8),
        Text("EMPLOYEE INTRANET", style: TextStyle(color: Colors.white)),
      ],
    );
  }

  // email input
  Widget _emailInput() {
    return CustomInputText(
      label: 'E-mail',
      controller: _emailController,
      labelColor: Color.fromARGB(255, 230,198,109),
      borderColor: Color.fromARGB(255, 230,198,109),
      iconlabel: Icon(Icons.email, color: Color.fromARGB(255, 230,198,109)),
      obscureText: false,
    );
  }

  // password input
  Widget _passInput() {
    return CustomInputText(
      label: 'Password',
      controller: _passController,
      labelColor: Color.fromARGB(255, 230,198,109),
      borderColor: Color.fromARGB(255, 230,198,109),
      iconlabel: Icon(Icons.lock, color: Color.fromARGB(255, 230,198,109)),
      obscureText: true,
    );
  }

  // inputs
  Widget _loginInputs() {
    return SizedBox(
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          _emailInput(), 
          SizedBox(height: 32), 
          _passInput(),

          // error here
          ValueListenableBuilder<String>(
            valueListenable: _errLogin, 
            builder: (context, value, child){
              if (value.isEmpty) return const SizedBox.shrink();
              return Padding(
                padding: const EdgeInsets.only(top:15), 
                child: Text(
                  value, 
                  style: const TextStyle(
                    color: Colors.red, 
                    fontSize: 12),),);
            })],
      ),
    );
  }

  // login button
  Widget _loginBtn(BuildContext context) {
    return CustomButton(
      btnColor: Color.fromARGB(255, 230,198,109),
      txtbtnColor: Colors.white,
      text: 'LOGIN',
      onPressed: () {
        // sample credentials
        const String _email = "kimse@daydream.com";
        const String _pass = "noru";

        // check inputs
        if (_emailController.text.trim() == _email &&
            _passController.text.trim() == _pass) {

          _errLogin.value = "";
          // go to nav if equal
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => BottomNavigation()));
        } else {
          // display error below password input with red color
          _errLogin.value = 'Invalid email or password.';
        }
      },
    );
  }

  // register link
  Widget _registerLink() {
    return const Text(
      "Don't have an account? Register now",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w300,
        fontSize: 11,
      ),
    );
  }

  // login form
  Widget _loginForm(BuildContext context) {
    return Container(
      height: _dHeight * 0.75,
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 40,40,40),
        borderRadius: BorderRadius.circular(16),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(height: 44),
          _companyTitle(),

          SizedBox(height: 44),
          _loginInputs(),

          SizedBox(height: 40),
          _loginBtn(context),

          SizedBox(height: 80),
          _registerLink(),
        ],
      ),
    );
  }
}


/*

  todo in this page
  - show error if incorrect password
  - change template colors to the accurate colors


  mockup url: https://www.figma.com/design/SEs6s0dekhjqcyr1fPtLiy/Daydream-Intranet---Mockup?node-id=0-1&p=f
  docs url: https://docs.google.com/document/d/1QMZ6sYh_wyW42-hxauhz3472O0dgtdVJtN31BN-EWwU/edit?tab=t.0 
*/ 