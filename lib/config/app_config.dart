/// 保存App配置的信息
class AppConfig {
  Enviroment enviroment = Enviroment.LOCAL;

  String get apiHost {
    switch (enviroment) {
      case Enviroment.LOCAL:
        return "ws://dev.4dshoetech.local/websocket";
      case Enviroment.UAT:
        "ws://uat.4dshoetech.com/websocket";
    }
  }
}

/// 环境
enum Enviroment {
  LOCAL, //本地环境
  UAT, //生产环境
}
