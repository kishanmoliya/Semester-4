import 'package:first_project/Projects/Mrtrimony%20Project/login_page.dart';
import 'package:first_project/Projects/Mrtrimony%20Project/register_page.dart';
import 'package:flutter/material.dart';

class Metrimony_project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("App bar"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  const Image(
                    image: AssetImage("assets/images/metrimony1.jpg"),
                    fit: BoxFit.fill,
                  ),
                  Container(
                    color: Color(0x00000099),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    child: const Text(
                      "INDIA'S\n MOST TRUSTED\n METRIMONY BRAND",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Color.fromARGB(255, 142, 174, 74),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) {
                              return LoginPage();
                            }),
                          ),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Color.fromARGB(255, 48, 48, 48),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) {
                              return RegisterPage();
                            }),
                          ),
                        );
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(color: Colors.white, fontSize: 22),
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
