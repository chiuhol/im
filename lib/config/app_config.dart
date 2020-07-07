/// 保存App配置的信息
class AppConfig {
  bool isBigScreen = false; //是否是大屏幕，比如desktop或者平板

  Enviroment enviroment = Enviroment.LOCAL;

  String get apiHost {
    switch (enviroment) {
      case Enviroment.LOCAL:
        return "ws://dev.4dshoetech.local/websocket";
      case Enviroment.DEV:
      case Enviroment.PROD:
    }
  }
}

/// 环境
enum Enviroment {
  LOCAL, //本地环境
  DEV, //测试环境
  PROD, //生产环境
}
