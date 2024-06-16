import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imepay_merchant_sdk/constants/app_constants.dart';
import 'package:imepay_merchant_sdk/start_sdk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ImePay Merchant SDK',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ImePay Merchant SDK'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // BuildType selectedValue = BuildType.STAGE;
  // BuildType selectedValue = BuildType.LIVE; //Only for production

  //Test and production details to be provided by IME Pay Team

  var MERCHANT_CODE = "TEST_MERCHANTCOD";
  var MERCHANT_NAME = " TEST MERCHANTNAME";
  var MERCHANT_URL = "https://example.com/recordingurl";//Recording Url to be prepared by Merchant itself
  var AMOUNT = "100";
  var REF_ID = "1234567835"; // Unique Identifier for the transaction
  var MODULE = "TEST_MODULENAME";
  var USER = "testuser";
  var PASSWORD = "********";
  var DELIVERY_URL = "https://www.example.com/deliveryurl";//Recording Url to be prepared by Merchant itself
  var BUILD_TYPE = BuildType.STAGE;
  var merchantLogo = "assets/images/merchant_logo.png";
  //test




  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () async {
                  Random random = new Random();
                  random.nextInt(15);

                  var result = await StartSdk.callSdk(context,
                      merchantCode: MERCHANT_CODE,
                      merchantName: MERCHANT_NAME,
                      merchantUrl: MERCHANT_URL,
                      amount: AMOUNT,
                      refId: REF_ID,
                      module: MODULE,
                      user: USER,
                      password: PASSWORD,
                      deliveryUrl: DELIVERY_URL,
                      buildType: BuildType.STAGE);

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(content: Text(json.encode(result)));
                    },
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.red.shade800,
                  child: Text(
                    'Enter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: AppFont.Volte,
                      fontWeight: FontWeight.w700,
                      package: "imepay_merchant_sdk",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}