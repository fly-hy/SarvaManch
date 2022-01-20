import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sarva_munch/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.color5,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Image.asset(
              "assets/images/SarvaManch.png",
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
            ),
            Row(
              children: [
                Text(
                  "SignIn",
                  style: TextStyle(
                      color: MyTheme.color5,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
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
                      "SignIn",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(child: Column()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Do not have an account ?"),
                Material(
                  color: MyTheme.color5,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 80,
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
            )
          ],
        ),
      ),
    );
  }
}
