import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:moviedb_api/cache_module/helpers/language_helper.dart';

class CacheThemeLogic extends ChangeNotifier {
  int _modeIndex = 1;
  int get modeIndex => _modeIndex;

  final _secure = FlutterSecureStorage();
  final _key = "CacheThemeLogic_FlutterSecureStorage";

  Future initCache() async {
    String index = await _secure.read(key: _key) ?? "1";
    _modeIndex = int.parse(index);

    String langStr = await _secure.read(key: _langKey) ?? "0";
    _lang = int.parse(langStr); 
    _cacheLang = cacheLanguageList[_lang];  
    notifyListeners();
  }

  int _lang = 0; 
  CacheLanguage _cacheLang = cacheLanguageList[0]; 
  CacheLanguage get cacheLang => _cacheLang; 


  final _langKey = "Language_CacheThemeLogic_FlutterSecureStorage"; 

  void changeToEnglish(){
    _lang = 0; 
    _secure.write(key: _langKey, value: _lang.toString()); 
    _cacheLang = cacheLanguageList[_lang]; 
    notifyListeners(); 
  }


  void changeToKhmer(){
    _lang = 1; 
    _secure.write(key: _langKey, value: _lang.toString()); 
    _cacheLang = cacheLanguageList[_lang]; 
    notifyListeners(); 
  }

  void changeToChinese(){
    _lang = 2; 
    _secure.write(key: _langKey, value: _lang.toString()); 
    _cacheLang = cacheLanguageList[_lang]; 
    notifyListeners(); 
  }

  void changeToKorean(){
    _lang = 3; 
    _secure.write(key: _langKey, value: _lang.toString());
    _cacheLang = cacheLanguageList[_lang]; 
    notifyListeners(); 
  }


  void changeToLight() {
    _modeIndex = 1;
    _secure.write(key: _key, value: _modeIndex.toString());
    notifyListeners();
  }

  void changeToDark() {
    _modeIndex = 2;
    _secure.write(key: _key, value: _modeIndex.toString());
    notifyListeners();
  }

  void changeToSystem() {
    _modeIndex = 3;
    _secure.write(key: _key, value: _modeIndex.toString());
    notifyListeners();
  }
}
