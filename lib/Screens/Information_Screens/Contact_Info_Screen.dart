// import 'dart:html';

import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}
TextEditingController txtname = TextEditingController();
TextEditingController txtemail = TextEditingController();
TextEditingController txtcontact = TextEditingController();
TextEditingController txtdob = TextEditingController();
TextEditingController txtaddress = TextEditingController();
TextEditingController txtcity = TextEditingController();
TextEditingController txtstate = TextEditingController();
TextEditingController txtpincode = TextEditingController();
TextEditingController txtnationality = TextEditingController();

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: DefaultTabController(
      length: 7,
      child: Scaffold(

        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                child: Text('Contact Info',style: TextStyle(fontSize: 15,color: Colors.white),),
              ),
              Tab(
                child: Text('Heading & Summary',style: TextStyle(fontSize: 15,color: Colors.white),),
              ),
              Tab(
                child: Text('Career Objective',style: TextStyle(fontSize: 15,color: Colors.white),),
              ),
              Tab(
                child: Text('Career Objective',style: TextStyle(fontSize: 15,color: Colors.white),),
              ),
              Tab(
                child: Text('Career Objective',style: TextStyle(fontSize: 15,color: Colors.white),),
              ),
              Tab(
                child: Text('Career Objective',style: TextStyle(fontSize: 15,color: Colors.white),),
              ),
              Tab(
                child: Text('Career Objective',style: TextStyle(fontSize: 15,color: Colors.white),),
              ),
            ],
          ),
          title: Text('Resume Builder',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),backgroundColor: Colors.teal.shade300,),
        body:
        TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  DetailTextFeild(name: 'Name', keyboardType: TextInputType.name, textinputAction: TextInputAction.next, editController: txtname),
                  SizedBox(height: 5,),
                  DetailTextFeild(name: 'Email Id', keyboardType: TextInputType.emailAddress, textinputAction: TextInputAction.next, editController: txtemail),
                  SizedBox(height: 5,),
                  DetailTextFeild(name: 'Contact Number', keyboardType: TextInputType.number, textinputAction: TextInputAction.next, editController: txtcontact),
                  SizedBox(height: 5,),
                  DetailTextFeild(name: 'Date of Birth', keyboardType: TextInputType.datetime, textinputAction: TextInputAction.done, editController: txtdob),

                  Padding(

                    padding: const EdgeInsets.only(left: 8),
                    child: Column( children: [Text('Gender',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                      Divider(height: 20,thickness: 10,),
                      buildRadioListTilegender(userGender: 'male', usertitleGender: 'Male',),
                      buildRadioListTilegender(userGender: 'female', usertitleGender: 'Female'),
                      Divider(height: 20,thickness: 10,)
                    ],),

                  ),
                  Padding(

                    padding: const EdgeInsets.only(left: 8),
                    child: Column( children: [Text('Marital Status',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                      Divider(height: 20,thickness: 10,),
                      buildRadioListTilestatus(userGender: 'single', usertitleGender: 'Single',),
                      buildRadioListTilestatus(userGender: 'married', usertitleGender: 'Married'),
                      Divider(height: 20,thickness: 10,)
                    ],),

                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 8),
                  //   child: Row( children: [Text('Martial Status',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                  //     Expanded(child: buildRadioListTilestatus(userGender: 'single', usertitleGender: 'Single',)),
                  //     Expanded(child: buildRadioListTilestatus(userGender: 'married', usertitleGender: 'Married')),
                  //   ],),
                  // ),
                  DetailTextFeild(name: 'Address', keyboardType: TextInputType.streetAddress, textinputAction: TextInputAction.next, editController: txtaddress),
                  SizedBox(height: 5,),
                  DetailTextFeild(name: 'City', keyboardType: TextInputType.streetAddress, textinputAction: TextInputAction.next, editController: txtcity),
                  SizedBox(height: 5,),
                  DetailTextFeild(name: 'State', keyboardType: TextInputType.streetAddress, textinputAction: TextInputAction.next, editController: txtstate),
                  SizedBox(height: 5,),
                  DetailTextFeild(name: 'Pincode/Zipcode/Areacode', keyboardType: TextInputType.streetAddress, textinputAction: TextInputAction.next, editController: txtpincode),
                  SizedBox(height: 5,),
                  DetailTextFeild(name: 'Nationality', keyboardType: TextInputType.streetAddress, textinputAction: TextInputAction.done, editController: txtnationality),
                ],
              ),
            ),
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Resume Heading',style: TextStyle(fontSize: 20,color: Colors.teal.shade300,fontWeight: FontWeight.bold),),
                  ],
                ),
                TextFormField(

                  decoration: InputDecoration(
                      hintText: 'Resume Heading & Summary',
                      hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.teal.shade300,
                              width: 3
                          )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.zero),
                      )
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('For Example:'),
                    Text('1, Android Devloper with 7+ Years of experience'),
                    Text('2.Marketing Professional with international exposure')
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Resume Heading',style: TextStyle(fontSize: 20,color: Colors.teal.shade300,fontWeight: FontWeight.bold),),
                  ],
                ),
                TextFormField(

                  decoration: InputDecoration(
                      hintText: 'Resume Heading & Summary',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.teal.shade300,
                              width: 3
                          )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.zero),
                      )
                  ),
                )
              ],
            ),
          ],
        )

      ),
    ));
  }
String gender ='Male';
  RadioListTile<String> buildRadioListTilegender({required userGender,required usertitleGender}) {
    return RadioListTile(
      value: userGender,
      groupValue: gender,
      title: Text(usertitleGender,style: TextStyle(fontSize:13),),
      onChanged: (value) {
        setState(() {
          gender = value!;
        },);
      },
    );
  }
  String status='Single';
  RadioListTile<String> buildRadioListTilestatus({required userGender,required usertitleGender}) {
    return RadioListTile(
      value: userGender,
      groupValue: status,
      title: Text(usertitleGender,style: TextStyle(fontSize:13),),
      onChanged: (value) {
        setState(() {
          status = value!;
        },);
      },
    );
  }

  TextFormField DetailTextFeild({required name,required keyboardType,required textinputAction,required editController}) {
    return TextFormField(
      controller: editController,
      keyboardType: keyboardType,
          textInputAction: textinputAction,
      decoration: InputDecoration(
            hintText: name,
            // hintFadeDuration: Duration(milliseconds: 3),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.teal.shade300,
              )
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.only(bottomLeft:Radius.zero,bottomRight: Radius.zero),
            )

          ),
        );
  }
}
