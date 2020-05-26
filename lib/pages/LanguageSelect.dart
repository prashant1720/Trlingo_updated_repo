import 'package:flutter/material.dart';
import 'package:trilingo/mundari/HomePageMandari.dart';

class InstructionPage extends StatefulWidget {
  @override
  _InstructionPageState createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {
  List<DropdownMenuItem<int>> Listdrop = [];
  var lang = ['Select', 'Mundari', 'Ho', 'hindi', 'Tamil', 'Marathi'];
  String curentvalue = 'Select';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Text(
                  "Select Language you want to learn",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: DropdownButton<String>(
                    items: lang.map((String dropDownStringItem) {
                      return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15, left: 15),
                            child: Text(
                              dropDownStringItem,
                              style: TextStyle(decoration: TextDecoration.none),
                            ),
                          )

                          //Text(dropDownStringItem),
                          );
                    }).toList(),
                    onChanged: (String newValueStringItem) {
                      setState(() {
                        this.curentvalue = newValueStringItem;
                        if (curentvalue == 'Mundari') {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePageMundari()));
                        }
                      });
                    },
                    value: curentvalue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
