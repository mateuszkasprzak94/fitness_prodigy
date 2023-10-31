enum Flavor {
  development,
  production,
}

class Config {
  static Flavor appFlavor = Flavor.development;

  static String get quoteUrl {
    switch (appFlavor) {
      case Flavor.development:
        return 'https://my-json-server.typicode.com/mateuszkasprzak94/quotes/quotes';
      case Flavor.production:
        return 'https://my-json-server.typicode.com/mateuszkasprzak94/quotes/quotes';
    }
  }

  static bool get debugShowCheckedModeBanner {
    switch (appFlavor) {
      case Flavor.development:
        return true;
      case Flavor.production:
        return false;
    }
  }

  static String getweatherUrl(String city) {
    switch (appFlavor) {
      case Flavor.development:
        return 'http://api.weatherapi.com/v1/current.json?key=1b041a2453fb453099e90924231409&q=$city&aqi=no';
      case Flavor.production:
        return 'http://api.weatherapi.com/v1/current.json?key=1b041a2453fb453099e90924231409&q=$city&aqi=no';
    }
  }
}
