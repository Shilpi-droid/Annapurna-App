
import 'package:flutter/material.dart';

class TransportPage extends StatefulWidget {
  const TransportPage({Key? key}) : super(key: key);

  @override
  State<TransportPage> createState() => _TransportPageState();
}

class _TransportPageState extends State<TransportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(
        children: [
          SizedBox(height:70),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child:Text('These are list of locations you can transport food from and to:',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),) ,
            ),
          ),
        ],
      ),
    );
  }
}
