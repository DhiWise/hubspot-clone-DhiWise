import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hbs/data/models/contactsSearch/post_contacts_search_resp.dart' as contact;
import 'package:hbs/data/models//get_resp.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setContactList(List<contact.Results>? value) {
    return _sharedPreferences!.setString('contactList', jsonEncode(value));
  }

  List<contact.Results>? getContactList() {
    try {
      var jsonData =
          jsonDecode(_sharedPreferences!.getString('contactList') ?? '');
      return (jsonData as List).map((e) => contact.Results.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }

  Future<void> setOwnerList(List<Results>? value) {
    return _sharedPreferences!.setString('ownerList', jsonEncode(value));
  }

  List<Results>? getOwnerList() {
    try {
      var jsonData =
          jsonDecode(_sharedPreferences!.getString('ownerList') ?? '');
      return (jsonData as List).map((e) => Results.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }
}
