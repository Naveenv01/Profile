import 'package:flutter/material.dart';
import 'package:profile/models/profile.dart';

class ProfileEditModel extends ChangeNotifier{
  Profile _profile = Profile(name: '', email: '', contactNumber: '', country: '', city: '');
  Profile get  profile => _profile;
  set profile(Profile p){
    _profile = p;
    notifyListeners();
  }

}