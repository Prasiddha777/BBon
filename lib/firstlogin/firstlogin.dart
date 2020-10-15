import 'package:flutter/material.dart';
import 'phone.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MaterialApp(
      home: Firstlogin(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        dividerColor: Colors.grey,

        // backgroundColor: Colors.grey[300],
      ),
    ));

class Firstlogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/7.jpg'),
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 310.0, left: 35.0, right: 35.0, bottom: 10.0),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 25,
                child: ListView(
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundColor: Colors.blue[200],
                      child: CircleAvatar(
                        radius: 37.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/man.png'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Phone()),
                              );
                            },
                            color: Colors.white,
                            splashColor: Colors.green[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(
                                  color: Colors.green[300], width: 3),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Phone",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 25.0),
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                    backgroundColor: Colors.red,
                                    backgroundImage:
                                        AssetImage('assets/phone.png'))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.white,
                            splashColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(color: Colors.blue, width: 3),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Facebook",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 25.0),
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                    backgroundColor: Colors.red,
                                    backgroundImage:
                                        AssetImage('assets/fb.png'))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.white,
                            splashColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side:
                                  BorderSide(color: Colors.red[300], width: 3),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Google",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 25.0),
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                    backgroundColor: Colors.red,
                                    backgroundImage:
                                        AssetImage('assets/mail.png'))
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
