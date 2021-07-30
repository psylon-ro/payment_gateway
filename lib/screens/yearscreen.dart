import 'package:flutter/material.dart';
import 'package:payment_gateway_ct/Components/constants.dart';
import 'package:payment_gateway_ct/Components/dropdown.dart';
import 'package:payment_gateway_ct/Components/expansiontile.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String year = 'not sure';
  bool visible = false;
  yearr(String value) => setState(() {
        year = value;
        visible = true;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.title),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: SizedBox(
                  width: 120,
                  child: Dropdown(listt: yearmaker(), callback: yearr),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: ListView(children: [
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 20,
                        ),
                        Visibility(
                            visible: visible,
                            child: Column(
                              children: [...getmonthlist()],
                            )),
                      ],
                    ),
                  ])),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> getmonthlist() {
    List<Widget> monthlist = [];

    for (int i = 0; i < 12; i++) {
      monthlist.add(Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Expansiontile(title: '${month[i]} $year')));
    }

    return monthlist;
  }
}


 /* Visibility(
                      visible: visible,
                        child: Column(
                      children: [...getmonthlist()],
                    )) */