import 'ProfilePage.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 251, 231, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: bodyUi(context: context),
    );
  }

  Padding bodyUi({required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(
                          color: Color.fromRGBO(99, 11, 255, 1),
                          width: 2.0,
                        ),
                      ),
                      child: TextButton(
                          onPressed: () => {},
                          child: const Text(
                            'Upload Photo',
                            style: TextStyle(
                              color: Color.fromRGBO(99, 11, 255, 1),
                            ),
                          )))
                ],
              ),
            ),
          ),
          editPage(),
        ],
      ),
    );
  }

  editPage() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: (Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'About',
          style: TextStyle(fontSize: 16, color: Color.fromRGBO(38, 79, 108, 1)),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Name',
            labelStyle: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(146, 146, 146, 1),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(113, 113, 113, 1)),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email',
            labelStyle: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(146, 146, 146, 1),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(113, 113, 113, 1)),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Contact No',
            labelStyle: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(146, 146, 146, 1),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(113, 113, 113, 1)),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Country',
            labelStyle: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(146, 146, 146, 1),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(113, 113, 113, 1)),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'City',
            labelStyle: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(146, 146, 146, 1),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(113, 113, 113, 1)),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),

        //textbutton
        Center(
          child: Container(
            //rounded corners
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(122, 98, 248, 1),
                  Color.fromRGBO(99, 11, 255, 1)
                ],
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Save',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
