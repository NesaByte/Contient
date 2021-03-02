import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:web3dart/web3dart.dart';
import 'package:web_socket_channel/io.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contient',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'NESA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String http_url = "http://127.0.0.1:7545";
  String ws_url = "ws://127.0.0.1:7545/";

  Future<void> sendEther() async{
    Web3Client client = Web3Client(http_url, Client(), socketConnector: (){
      return IOWebSocketChannel.connect(ws_url).cast<String>();
    });

    String privateKey1 = "5ced48571b7097f487c4a261cf457874b68d02183b477c2993ab39f48be26478";

    Credentials cred = await client.credentialsFromPrivateKey(privateKey1);

    EthereumAddress ownAddress = await cred.extractAddress();
    print(ownAddress);

    //client.sendTransaction(cred, Transaction(from: ownAddress));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center( child: Text("hi")),
      floatingActionButton: FloatingActionButton(
        onPressed: sendEther,
        child: Icon(Icons.add),
      ),
    );
  }
}

