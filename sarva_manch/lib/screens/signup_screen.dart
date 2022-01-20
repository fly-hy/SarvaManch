import 'package:flutter/material.dart';
import 'package:sarva_munch/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class signUpPage extends StatelessWidget {
  const signUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.color5,
        title: Text("SarvaManch"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/SarvaManch.png",
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                  color: MyTheme.color5,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            HeightBox(10),
            HeightBox(20),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Username",
                labelText: "Username",
                labelStyle: TextStyle(color: MyTheme.darkBluishcolor),
              ),
            ),
            HeightBox(20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "password",
                labelText: "Password",
                labelStyle: TextStyle(color: MyTheme.darkBluishcolor),
              ),
            ),
            HeightBox(20),
            Material(
              color: MyTheme.color5,
              borderRadius: BorderRadius.circular(8),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 120,
                  child: const Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
