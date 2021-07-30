import 'package:flutter/material.dart';
import 'package:payment_gateway_ct/Components/constants.dart';

class Expansiontile extends StatelessWidget {
  final String title;
  Expansiontile({required this.title});
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedTextColor: Colors.white,
      iconColor: Colors.white,
      collapsedIconColor: Colors.white,
      textColor: Colors.white,
      backgroundColor: Colors.red,
      collapsedBackgroundColor: Colors.blue,
      title: Text(
        title,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      children: <Widget>[
        ExpansionTile(
          textColor: Colors.white,
          collapsedTextColor: Colors.white,
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          title: Text(
            'Fee Distribution',
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                'data',
                style: kTextStyle,
              ),
            )
          ],
        ),
        ListTile(
          title: Text(
            'Total: ',
            style: kTextStyle,
          ),
          trailing: Text(
            'amount',
            style: kTextStyle,
          ),
        ),
        ListTile(
          trailing: ElevatedButton(
            onPressed: () {},
            child: Text('Pay'),
          ),
        )
      ],
    );
  }
}
