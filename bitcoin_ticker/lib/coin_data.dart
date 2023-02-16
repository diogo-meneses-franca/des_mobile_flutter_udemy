import 'package:http/http.dart' as http;
import 'dart:convert';

const String baseUrl = 'https://rest.coinapi.io/v1/exchangerate';
const String apiKey = 'FB144EFF-70BD-44AF-B084-D53A980AE7F3';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  String crypto;
  String currency;

  CoinData({required this.crypto, required this.currency});

  Future getData() async {
    String requestUrl = '$baseUrl/$crypto/$currency?apikey=$apiKey';
    var url = Uri.parse(requestUrl);
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var decoded = jsonDecode(data);
      var lastPrice = decoded['rate'];
      return lastPrice;
    } else {
      return response.statusCode;
    }
  }
}
