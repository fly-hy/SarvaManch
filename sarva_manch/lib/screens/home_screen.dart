import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sarva_munch/theme.dart';

import 'call_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SarvaManch"),
        backgroundColor: MyTheme.color5,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myController = TextEditingController();
  bool _validateError = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: SingleChildScrollView(
        clipBehavior: Clip.antiAlias,
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ("assets/images/SarvaManch.png"),
              height: MediaQuery.of(context).size.height * 0.17,
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text(
              "SarvaManch Group Video Call",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextFormField(
                controller: myController,
                decoration: InputDecoration(
                    labelText: 'channel name',
                    labelStyle: TextStyle(color: Colors.blue),
                    hintText: 'test',
                    hintStyle: TextStyle(color: Colors.black45),
                    errorText:
                        _validateError ? 'channel name is mandatory' : null,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 30)),
            Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: MaterialButton(
                  onPressed: onJoin,
                  height: 40,
                  color: Colors.blueAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Join',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.white)
                    ],
                  ),
                ))
          ],
        ),
      ),
    ));
  }

  Future<void> onJoin() async {
    setState(() {
      myController.text.isEmpty
          ? _validateError = true
          : _validateError = false;
    });

    await _handleCameraAndMic(Permission.camera);
    await _handleCameraAndMic(Permission.microphone);

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CallPage(channelName: myController.text),
        ));
  }
}

Future<void> _handleCameraAndMic(Permission permission) async {
  final status = await permission.request();
  print(status);
}
