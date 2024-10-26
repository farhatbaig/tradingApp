
class Config {
  int httpSendTimeout = 150000;
  int httpConnectTimeout = 150000;
  int httpReceiveTimeout = 150000;
  final token ='csdu1dpr01qs1ihock4gcsdu1dpr01qs1ihock50';

  String get backendBaseUrl {
      return 'https://finnhub.io/api/v1/';
  }
  String get getWebsocketUrl {
      return 'wss://ws.finnhub.io/?token=$token';
  }
  String get getSymbolBaseUrl {
    return '$backendBaseUrl/forex/symbol?exchange=oanda&token=$token';
  }
}
