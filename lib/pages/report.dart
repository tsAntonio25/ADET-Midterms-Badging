import 'package:flutter/material.dart';
import 'package:flutter_badging/widgets/customBtn.dart';
import 'package:flutter_badging/widgets/customInputTxt.dart';
import 'package:flutter_badging/pages/feedback.dart';

class Report extends StatelessWidget {
  // controllers
  final TextEditingController _idCodeController = TextEditingController();
  final TextEditingController _ratingController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  // error text
  final ValueNotifier<String> _errSubmit = ValueNotifier<String>("");

  Report({super.key});

  @override
  Widget build(BuildContext context) {
    // test
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: Column(children: [_formSubmission(), _reportForm(context), Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 10,), child: _submitBtn(context),)]),
          ),
        ),
      ),
    );
  }

  // form banner
  Widget _formSubmission() {
    return Container(
      child: Text(
        'DARKNESS REPORT SUBMISSION',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
      ),
    );
  }

  // idcode
  Widget _idCode() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Identification Code", textAlign: TextAlign.start),
        CustomInputText(
            label: 'Identification Code',
            controller: _idCodeController,
            labelColor: Colors.black,
            borderColor: Colors.black,
            iconlabel: Icon(Icons.fingerprint),
            obscureText: false,
          ),
      ],
    );
  }

  // rating
  Widget _rating() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Rating", textAlign: TextAlign.start),
        CustomInputText(
            label: 'Rating',
            controller: _ratingController,
            labelColor: Colors.black,
            borderColor: Colors.black,
            iconlabel: Icon(Icons.grade),
            obscureText: false,
        ),
      ],
    );
  }

  // darkness name
  Widget _darknessName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Darkness Name", textAlign: TextAlign.start),
        CustomInputText(
          label: 'Darkness Name',
          controller: _nameController,
          labelColor: Colors.black,
          borderColor: Colors.black,
          iconlabel: Icon(Icons.badge),
          obscureText: false,
        ),
      ],
    );
  }

  // desc 
  Widget _desc() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("Description", textAlign: TextAlign.start),
        SizedBox(
            height: 200, // Fixed height for the message box
            child: TextFormField(
              
              // things
              controller: _descController,
              maxLines: null,
              expands: true, 

              decoration: InputDecoration(
                // placeholder text
                hintText: 'Enter the description..',

                // fill color
                  filled: true,           
                  fillColor: Colors.white,

                // border
                border: OutlineInputBorder()
              ),

              textAlignVertical: TextAlignVertical.top, 
            
            ),
          )
      ],
    );
  }

  // submit button
  Widget _submitBtn(BuildContext context) {
    return CustomButton(
      btnColor: Color.fromARGB(255, 108, 108, 108),
      txtbtnColor: Colors.white,
      text: "SUBMIT",
      onPressed: () {
        // check if all inputs has text
        if (_idCodeController.text.isNotEmpty &&
            _ratingController.text.isNotEmpty &&
            _nameController.text.isNotEmpty &&
            _descController.text.isNotEmpty) {
          _errSubmit.value = "";
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => FeedbackPage()));
        } else {
          _errSubmit.value = 'Enter all.';
        }
      },
    );
  }

  // all inputs
  Widget _reportInputs() {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 10), 
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
                [Expanded(flex: 2, child: _idCode()), // Use Expanded so they share width
                const SizedBox(width: 10),
                Expanded(flex: 1, child: _rating()),],
            ),),
          Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 10), child: _darknessName(),),
          Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 10), child: _desc(),),

          // error here
          ValueListenableBuilder(
            valueListenable: _errSubmit,
            builder: (context, value, child) {
              if (value.isEmpty) return const SizedBox.shrink();
              return Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  value,
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  // daydream logo
  Widget _logo() {
    return Container(
      height: 40,
      width: 40,

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Baekilmong_Logo.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  // form
  Widget _reportForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(30),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color.fromARGB(255, 40, 40, 40)),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Align(alignment: Alignment.centerRight, child: _logo()),
          _reportInputs()
        ],
      ),
    );
  }
}
