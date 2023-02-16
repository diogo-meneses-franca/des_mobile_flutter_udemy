import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bitcoin_ticker/coin_data.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'AUD';
  String bitcoinValue = '';
  String ethereumValue = '';
  String litecoinValue = '';
  @override
  void initState() {
    super.initState();
    getBitcoinData();
    getEthereumData();
    getLitecoinData();
  }

  DropdownButton<String> androidDropdownButton() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String items in currenciesList) {
      var item = DropdownMenuItem(
        value: items,
        child: Text(items),
      );
      dropdownItems.add(item);
    }
    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value!;
        });
      },
    );
  }

  CupertinoPicker iosPicker() {
    List<Text> pickerItems = [];
    for (String curr in currenciesList) {
      pickerItems.add(Text(curr));
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (int value) {
        setState(() {
          selectedCurrency = pickerItems[value].data!;
          getBitcoinData();
        });
      },
      children: pickerItems,
    );
  }

  void getBitcoinData() async {
    try {
      CoinData coinData = CoinData(crypto: 'BTC', currency: selectedCurrency);
      double btc = await coinData.getData();
      setState(() {
        bitcoinValue = btc.toStringAsFixed(0);
        print(bitcoinValue);
      });
    } catch (e) {
      print(e);
    }
  }

  void getLitecoinData() async {
    try {
      CoinData coinData = CoinData(crypto: 'LTC', currency: selectedCurrency);
      double ltc = await coinData.getData();
      setState(() {
        litecoinValue = ltc.toStringAsFixed(0);
        print(litecoinValue);
      });
    } catch (e) {
      print(e);
    }
  }

  void getEthereumData() async {
    try {
      CoinData coinData = CoinData(crypto: 'ETH', currency: selectedCurrency);
      double eth = await coinData.getData();
      setState(() {
        ethereumValue = eth.toStringAsFixed(0);
        print(ethereumValue);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CurrencyButton(
              bitcoinValue: bitcoinValue, selectedCurrency: selectedCurrency),
          CurrencyButton(
              bitcoinValue: ethereumValue, selectedCurrency: selectedCurrency),
          CurrencyButton(
              bitcoinValue: litecoinValue, selectedCurrency: selectedCurrency),
          Expanded(
              child: SizedBox(
            width: double.infinity,
            height: double.infinity,
          )),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Center(
                child: Platform.isIOS ? iosPicker() : androidDropdownButton()),
          )
        ],
      ),
    );
  }
}

class CurrencyButton extends StatelessWidget {
  const CurrencyButton({
    super.key,
    required this.bitcoinValue,
    required this.selectedCurrency,
  });

  final String bitcoinValue;
  final String selectedCurrency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
            child:
                Center(child: Text("1 BTC = $bitcoinValue $selectedCurrency"))),
      ),
    );
  }
}
