import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:re_jek_ft/screens/HomeScreen.dart';

class PhoneLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.help_outline,
              color: Colors.green,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            "https://i.bandori.party/u/c/transparent/646Rinko-Shirokane-Cool-Acquainted-Phone-Call-atvG0P.png",
            width: 200,
            height: 200,
            fit: BoxFit.scaleDown,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Enter your resgistered phone number to log in",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: TextField(
              decoration: InputDecoration(
                  icon: Container(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Color(0x99DDDDDD))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 20,
                          height: 16,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3))),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 20,
                                height: 8,
                                color: Colors.red[800],
                              ),
                              Container(
                                width: 20,
                                height: 8,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        Center(
                          child: Text("+62"),
                        )
                      ],
                    ),
                  ),
                  border: InputBorder.none,
                  hintText: "Phone Number",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
              keyboardType: TextInputType.numberWithOptions(),
              inputFormatters: [PhoneNumberFormatter()],
            ),
          )
        ],
      ),
      bottomNavigationBar: MaterialButton(
        height: 80,
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeScreen()
              ),
              ModalRoute.withName("/home")
          );
        },
        color: Colors.green,
        child: Text(
          "CONTINUE",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var ct = 0;
    var newStr = "";
    var txt = newValue.text.replaceAll("-", "");
    for (var char in txt.split("")) {
      ct++;
      newStr += char;
      if (ct % 4 == 0) {
        newStr += "-";
      }
    }
    return TextEditingValue(
      text: newStr.toString(),
      selection: TextSelection.collapsed(offset: newStr.length),
    );
  }
}
