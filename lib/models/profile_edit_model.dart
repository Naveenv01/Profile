import 'package:flutter/material.dart';
import 'package:profile/models/profile.dart';
import 'package:profile/services/shared_preference_service.dart';

class ProfileEditModel extends ChangeNotifier{

  SharedPreferenceService preferenceService = SharedPreferenceService();

  ProfileEditModel(){
    preferenceService.init();
    preferenceService.getProfile().then((value) => setProfile(value));
  }


  Profile _profile = Profile();
  Profile get  profile => _profile;
  setProfile(Profile p){
    _profile = p;
    preferenceService.profile = _profile;
    notifyListeners();
  }


}