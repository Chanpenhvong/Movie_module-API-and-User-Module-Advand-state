List<CacheLanguage> cacheLanguageList = [
  CacheLanguage(), 
  CacheKhmer(), 
  CacheChinese(),
  CacheKorean(),  
]; 

class CacheLanguage {
  String get appName => "Caching App"; 
  String get changeToLightMode => "Change To Light Mode"; 
  String get changeToDarkMode => "Change To Dark Mode"; 
  String get changeToSystemMode => "Change To System Mode"; 
}

class CacheKhmer implements CacheLanguage {
  String get appName => "កម្មវិធីរក្សាទុកទិន្នន័យ"; 
  String get changeToLightMode => "ប្តូរទៅពន្លឺទៅភ្លឺ"; 
  String get changeToDarkMode => "ប្តូរទៅពន្លឺទៅងងឹត"; 
  String get changeToSystemMode => "ប្តូរទៅពន្លឺតាមប្រព័ន្ធ"; 
}

class CacheChinese implements CacheLanguage {
  String get appName => "缓存应用程序"; 
  String get changeToLightMode => "更改为灯光模式"; 
  String get changeToDarkMode => "更改为深色模式"; 
  String get changeToSystemMode => "更改为系统模式"; 
}

class CacheKorean implements CacheLanguage {
  String get appName => "캐싱 앱"; 
  String get changeToLightMode => "조명 모드로 변경"; 
  String get changeToDarkMode => "어두운 모드로 변경"; 
  String get changeToSystemMode => "시스템 모드로 변경";   
}

