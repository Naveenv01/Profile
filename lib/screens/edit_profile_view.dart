import 'package:flutter/material.dart';
import 'package:profile/models/profile.dart';
import 'package:profile/models/profile_edit_model.dart';
import 'package:provider/provider.dart';

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
        iconTheme: const IconThemeData(
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
      body: const ProfileHolder(),
    );
  }

 
}

class ProfileHolder extends StatelessWidget {
  const ProfileHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  const SizedBox(width: 20.0),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(
                          color: const Color.fromRGBO(99, 11, 255, 1),
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
           ProfileForm(),
        ],
      ),
    );
  }
}

class ProfileForm extends StatelessWidget {
   ProfileForm({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: (Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'About',
          style: TextStyle(fontSize: 16, color: Color.fromRGBO(38, 79, 108, 1)),
        ),
        TextFormField(
          controller: nameController,
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
              gradient: const LinearGradient(
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
                Profile profile = Profile(name: nameController.text, email: '', contactNumber: '', country: '', city: '');
                Provider.of<ProfileEditModel>(context,listen: false).profile = profile;
              },
              child: const Text(
                'Save',
                style:  TextStyle(
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
