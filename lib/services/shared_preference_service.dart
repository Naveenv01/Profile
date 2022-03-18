import 'package:profile/models/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService{
 static SharedPreferences? _prefs;

 static const String _profile = 'profile';
    void init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  Future<Profile> getProfile() async {
    _prefs ??= await SharedPreferences.getInstance();
    String? profile = _prefs!.getString(_profile);
    if(profile!= null) {
      return Profile.fromJson(profile);
    }
    return Profile();
  }

  set profile(Profile p) => _prefs?.setString(_profile, p.toJson());
}
