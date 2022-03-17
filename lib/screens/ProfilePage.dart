import 'package:flutter/material.dart';

import 'package:profile/main.dart';

import 'EditProfile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 251, 231, 1),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 40,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'John',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'abiut page',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )
                          ]),
                      const Text('profile')
                      //TODO linear determinate progress bar
                    ],
                  ),
                  //a container with white background and rounded corners
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('profile data'),
                            Text('i have a great idea')
                          ]),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 5),
                          child: Text(
                            'MY Activity',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //two containers with white background and rounded corners
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(249, 178, 88, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '2',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    Text(
                                      'i have a great idea',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ]),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(247, 89, 86, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Text(
                                      '2',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    Text(
                                      'i have a great idea',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ]),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  backroundView(context: context),
                ]),
          ),
        ));
  }

  backroundView({required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
      child: (Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Backround',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Name',
              style: TextStyle(fontSize: 10),
            ),
            Text('Jonathan',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            SizedBox(
              height: 10,
            ),
            Text(
              'Contact no',
              style: TextStyle(fontSize: 10),
            ),
            Text('+91-9888888888',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            SizedBox(
              height: 10,
            ),
            Text(
              'Gender',
              style: TextStyle(fontSize: 10),
            ),
            Text('male',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            SizedBox(
              height: 10,
            ),
            Text(
              'What i am currently doing',
              style: TextStyle(fontSize: 10),
            ),
            Text('Coding',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            SizedBox(
              height: 10,
            ),
            Text(
              'Parent email id',
              style: TextStyle(fontSize: 10),
            ),
            Text('Parent@gmail.com',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            SizedBox(
              height: 10,
            ),
            Text(
              'whick grade i am in',
              style: TextStyle(fontSize: 10),
            ),
            Text('10',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            SizedBox(
              height: 10,
            ),
            Text(
              'which grade i am boarded in',
              style: TextStyle(fontSize: 10),
            ),
            Text('Jonathan',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditProfile()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    //outlined rounded border
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Color.fromRGBO(99, 11, 255, 1),
                      width: 1,
                    ),
                  ),
                  width: double.infinity,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Edit',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(95, 11, 255, 1)),
                      ),
                    ),
                  ),
                ))
          ]))),
    );
  }
}
