import 'package:http/http.dart' as http;
///This class is to implement JSON queries for a stock the user will search for.

class Stock{
  String stockSymbol;
  String openPrice;
  String closePrice;
  String lastRefresh;
  Stock({
    this.stockSymbol,
    this.openPrice,
    this.closePrice,
    this.lastRefresh
  });
}
