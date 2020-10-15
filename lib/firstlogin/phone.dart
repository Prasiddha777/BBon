import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Phone extends StatefulWidget {
  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                icon: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Icon(
                    FontAwesomeIcons.arrowAltCircleLeft,
                    color: Colors.grey[700],
                    size: 30,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Phone(),
                      ));
                });
          })),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your",
                  style: TextStyle(fontSize: 50.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Phone Number",
                  style: TextStyle(fontSize: 50),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  "Please enter your phone number.",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Colors.grey[200]),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          // color: Colors.grey[400]
                        ),
                        child: Center(
                            child: Text(
                          "+977",
                          style: TextStyle(fontSize: 22, color: Colors.grey),
                        )),
                      ),
                      Container(
                        width: 1,
                        height: 35,
                        color: Colors.grey,
                      ),
                      // Container(
                      // child:
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: TextField(
                            maxLength: 10,
                            controller: myController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Phone Number",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        Alert(
                          context: context,
                          title: "Log in with Phone number",
                          content: Text(
                            myController.text,
                            textAlign: TextAlign.center,
                          ),
                          desc:
                              "We will send the authentication code to the phone number you entered",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              onPressed: () => Navigator.pop(context),
                              color: Colors.white,
                            ),
                            DialogButton(
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              onPressed: () => Navigator.pop(context),
                              color: Colors.black,
                            )
                          ],
                        ).show();
                      },

                      color: Colors.white,
                      // splashColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.black, width: 3),
                      ),
                      child: Text(
                        "Next",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
