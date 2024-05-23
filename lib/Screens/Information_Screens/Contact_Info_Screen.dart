// import 'dart:html';

import 'package:flutter/cupertino.dart';

// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'EducationScreen.dart';
import 'Summary_Screen.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}
TextEditingController txtskill = TextEditingController();
TextEditingController txtstren = TextEditingController();
TextEditingController txthobby = TextEditingController();
TextEditingController txtname = TextEditingController();
TextEditingController txtemail = TextEditingController();
TextEditingController txtcontact = TextEditingController();
TextEditingController txtdob = TextEditingController();
TextEditingController txtaddress = TextEditingController();
TextEditingController txtcity = TextEditingController();
TextEditingController txtstate = TextEditingController();
TextEditingController txtpincode = TextEditingController();
TextEditingController txtnationality = TextEditingController();
TextEditingController txtheading = TextEditingController();
TextEditingController txtsummary = TextEditingController();
TextEditingController txtobjective = TextEditingController();

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    'Contact Info',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Heading & Summary',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Education',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Skills',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Strength & Hobbies',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                // Tab(
                //   child: Text(
                //     'Career Objective',
                //     style: TextStyle(fontSize: 15, color: Colors.white),
                //   ),
                // ),
                // Tab(
                //   child: Text(
                //     'Career Objective',
                //     style: TextStyle(fontSize: 15, color: Colors.white),
                //   ),
                // ),
              ],
            ),
            title: Text(
              'Resume Builder',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            backgroundColor: Colors.teal.shade300,
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    DetailTextFeild(
                        name: 'Name',
                        keyboardType: TextInputType.name,
                        textinputAction: TextInputAction.next,
                        editController: txtname),
                    SizedBox(
                      height: 5,
                    ),
                    DetailTextFeild(
                        name: 'Email Id',
                        keyboardType: TextInputType.emailAddress,
                        textinputAction: TextInputAction.next,
                        editController: txtemail),
                    SizedBox(
                      height: 5,
                    ),
                    DetailTextFeild(
                        name: 'Contact Number',
                        keyboardType: TextInputType.number,
                        textinputAction: TextInputAction.next,
                        editController: txtcontact),
                    SizedBox(
                      height: 5,
                    ),
                    DetailTextFeild(
                        name: 'Date of Birth',
                        keyboardType: TextInputType.datetime,
                        textinputAction: TextInputAction.done,
                        editController: txtdob),

                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        children: [
                          Text(
                            'Gender',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          Divider(
                            height: 20,
                            thickness: 10,
                          ),
                          buildRadioListTilegender(
                            userGender: 'male',
                            usertitleGender: 'Male',
                          ),
                          buildRadioListTilegender(
                              userGender: 'female', usertitleGender: 'Female'),
                          Divider(
                            height: 20,
                            thickness: 10,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        children: [
                          Text(
                            'Marital Status',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          Divider(
                            height: 20,
                            thickness: 10,
                          ),
                          buildRadioListTilestatus(
                            userGender: 'single',
                            usertitleGender: 'Single',
                          ),
                          buildRadioListTilestatus(
                              userGender: 'married',
                              usertitleGender: 'Married'),
                          Divider(
                            height: 20,
                            thickness: 10,
                          )
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 8),
                    //   child: Row( children: [Text('Martial Status',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                    //     Expanded(child: buildRadioListTilestatus(userGender: 'single', usertitleGender: 'Single',)),
                    //     Expanded(child: buildRadioListTilestatus(userGender: 'married', usertitleGender: 'Married')),
                    //   ],),
                    // ),
                    DetailTextFeild(
                        name: 'Address',
                        keyboardType: TextInputType.streetAddress,
                        textinputAction: TextInputAction.next,
                        editController: txtaddress),
                    SizedBox(
                      height: 5,
                    ),
                    DetailTextFeild(
                        name: 'City',
                        keyboardType: TextInputType.streetAddress,
                        textinputAction: TextInputAction.next,
                        editController: txtcity),
                    SizedBox(
                      height: 5,
                    ),
                    DetailTextFeild(
                        name: 'State',
                        keyboardType: TextInputType.streetAddress,
                        textinputAction: TextInputAction.next,
                        editController: txtstate),
                    SizedBox(
                      height: 5,
                    ),
                    DetailTextFeild(
                        name: 'Pincode/Zipcode/Areacode',
                        keyboardType: TextInputType.streetAddress,
                        textinputAction: TextInputAction.next,
                        editController: txtpincode),
                    SizedBox(
                      height: 5,
                    ),
                    DetailTextFeild(
                        name: 'Nationality',
                        keyboardType: TextInputType.streetAddress,
                        textinputAction: TextInputAction.done,
                        editController: txtnationality),
                  ],
                ),
              ),
              SummaryHeadingScreen(),
              Column(
                children: [],
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Skills',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.teal.shade300,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    // TextFormField(
                    //   keyboardType: TextInputType.multiline,
                    //   textInputAction: TextInputAction.newline,
                    //   maxLines: null,
                    //   controller: txtobjective,
                    //   decoration: InputDecoration(
                    //       hintText: 'Career Objective',
                    //       focusedBorder: OutlineInputBorder(
                    //           borderSide: BorderSide(
                    //               color: Colors.teal.shade300, width: 3)),
                    //       border: OutlineInputBorder(
                    //         borderRadius:
                    //         BorderRadius.only(bottomLeft: Radius.zero),
                    //       )),
                    // ),
                    ...List.generate(Skill_ControllerList.length, (index) => Column(
                      children: [
                        TextFormField(
                                              // maxLines: ,
                          decoration: InputDecoration(
                              hintText: 'Skills', //expHint_Text
                              enabledBorder: OutlineInputBorder(

                              ),
                              focusedBorder: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.teal.shade300,
                                              // width: 1,
                                ),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // GestureDetector(
                            //   onTap: () {
                            //     TextEditingController txteducation=TextEditingController();
                            //     setState(() {
                            //       Education_ControllerList.add(ControllerModel_Skill(txtSkill: txteducation));
                            //     });
                            //   },
                            //   child: Icon(Icons.add_circle_outline_rounded, size: 40,
                            //     color: Colors.teal.shade300,),
                            // ),
                            GestureDetector(
                              onTap: () {
                                // TextEditingController txteducation=TextEditingController();
                                setState(() {
                                  Skill_ControllerList.removeAt(index);
                                });
                              },
                              child: Icon(Icons.cancel_outlined, size: 40,
                                color: Colors.teal.shade300,),
                            ),
                          ],
                        ),
                        SizedBox(height:20,),
                      ]
                      ,
                    ),),
                    GestureDetector(
                      onTap: () {
                        TextEditingController txteducation=TextEditingController();
                        setState(() {
                          Skill_ControllerList.add(ControllerModel_Skill(txtSkill: txtskill));
                        });
                      },
                      child: Icon(Icons.add_circle_outline_rounded, size: 40,
                        color: Colors.teal.shade300,),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Strength',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.teal.shade300,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    ...List.generate(Stren_ControllerList.length, (index) => Column(
                      children: [
                        TextFormField(
                          // maxLines: ,
                          decoration: InputDecoration(
                              hintText: 'Strength', //expHint_Text
                              enabledBorder: OutlineInputBorder(

                              ),
                              focusedBorder: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.teal.shade300,
                                  // width: 1,
                                ),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // GestureDetector(
                            //   onTap: () {
                            //     TextEditingController txteducation=TextEditingController();
                            //     setState(() {
                            //       Education_ControllerList.add(ControllerModel_Skill(txtSkill: txteducation));
                            //     });
                            //   },
                            //   child: Icon(Icons.add_circle_outline_rounded, size: 40,
                            //     color: Colors.teal.shade300,),
                            // ),
                            GestureDetector(
                              onTap: () {
                                // TextEditingController txteducation=TextEditingController();
                                setState(() {
                                  Stren_ControllerList.removeAt(index);
                                });
                              },
                              child: Icon(Icons.cancel_outlined, size: 40,
                                color: Colors.teal.shade300,),
                            ),
                          ],
                        ),
                        SizedBox(height:20,),
                      ]
                      ,
                    ),),
                    GestureDetector(
                      onTap: () {
                        TextEditingController txteducation=TextEditingController();
                        setState(() {
                          Stren_ControllerList.add(ControllerModel_Stre(txtStren: txtstren));
                        });
                      },
                      child: Icon(Icons.add_circle_outline_rounded, size: 40,
                        color: Colors.teal.shade300,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hobbies',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.teal.shade300,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    ...List.generate(Hobby_ControllerList.length, (index) => Column(
                      children: [
                        TextFormField(
                          // maxLines: ,
                          decoration: InputDecoration(
                              hintText: 'Hobbies', //expHint_Text
                              enabledBorder: OutlineInputBorder(

                              ),
                              focusedBorder: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.teal.shade300,
                                  // width: 1,
                                ),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // GestureDetector(
                            //   onTap: () {
                            //     TextEditingController txteducation=TextEditingController();
                            //     setState(() {
                            //       Education_ControllerList.add(ControllerModel_Skill(txtSkill: txteducation));
                            //     });
                            //   },
                            //   child: Icon(Icons.add_circle_outline_rounded, size: 40,
                            //     color: Colors.teal.shade300,),
                            // ),
                            GestureDetector(
                              onTap: () {
                                // TextEditingController txteducation=TextEditingController();
                                setState(() {
                                  Hobby_ControllerList.removeAt(index);
                                });
                              },
                              child: Icon(Icons.cancel_outlined, size: 40,
                                color: Colors.teal.shade300,),
                            ),
                          ],
                        ),
                        SizedBox(height:20,),
                      ]
                      ,
                    ),),
                    GestureDetector(
                      onTap: () {
                        TextEditingController txteducation=TextEditingController();
                        setState(() {
                          Hobby_ControllerList.add(ControllerModel_Hobby(txtHobby: txthobby));
                        });
                      },
                      child: Icon(Icons.add_circle_outline_rounded, size: 40,
                        color: Colors.teal.shade300,),
                    ),
                  ],
                ),
              ),


            ],
          ),
      ),
    ));
  }

  String gender = 'Male';

  RadioListTile<String> buildRadioListTilegender(
      {required userGender, required usertitleGender}) {
    return RadioListTile(
      value: userGender,
      groupValue: gender,
      title: Text(
        usertitleGender,
        style: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        setState(
          () {
            gender = value!;
          },
        );
      },
    );
  }

  String status = 'Single';

  RadioListTile<String> buildRadioListTilestatus(
      {required userGender, required usertitleGender}) {
    return RadioListTile(
      value: userGender,
      groupValue: status,
      title: Text(
        usertitleGender,
        style: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        setState(
          () {
            status = value!;
          },
        );
      },
    );
  }

  TextFormField DetailTextFeild(
      {required name,
      required keyboardType,
      required textinputAction,
      required editController}) {
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
          )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.zero, bottomRight: Radius.zero),
          )),
    );
  }
}

class ControllerModel_Skill
{
  TextEditingController? txtSkill;
  ControllerModel_Skill({this.txtSkill});
}
List<ControllerModel_Skill> Skill_ControllerList=[
  ControllerModel_Skill(txtSkill: txtskill)
];

class ControllerModel_Stre
{
  TextEditingController? txtStren;
  ControllerModel_Stre({this.txtStren});
}
List<ControllerModel_Stre> Stren_ControllerList=[
  ControllerModel_Stre(txtStren: txtstren),
];
class ControllerModel_Hobby
{
  TextEditingController? txtHobby;
  ControllerModel_Hobby({this.txtHobby});
}
List<ControllerModel_Hobby> Hobby_ControllerList=[
  ControllerModel_Hobby(txtHobby: txthobby),
];
