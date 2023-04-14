
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class DonatePage extends StatefulWidget {
  const DonatePage({Key? key}) : super(key: key);

  @override
  State<DonatePage> createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  final _formKey = GlobalKey<FormState>();
  bool _isAgree = false;
  String? _pickupWhere;
  String? _foodItem;
  String? _preferredTime;
  String? _pickupDay;
  String? _quantity;
  double _sliderValue=0;
  File? _imageFile;

  void _submitForm() {
    // Submit the form data to the server
  }

  Future<void> _takePicture() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(
      source: ImageSource.camera,
    );
    setState(() {
      _imageFile = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height:30),
              Row(
                children: [
                  IconButton(onPressed: () {Navigator.pop(context);}
                      , icon: Icon(Icons.arrow_back,)),
                ],
              ),

              Text(
                'Donate Food Details',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff419ca6),
                ),
              ),

              SizedBox(height:30),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Pickup Where?',
                      ),
                      style: TextStyle(fontSize: 22,color: Color(0xff419ca6)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter pickup location';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _pickupWhere = value;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Food Item',
                      ),
                      style: TextStyle(fontSize: 22),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter food item';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _foodItem = value;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Preferred Time',
                      ),
                      style: TextStyle(fontSize: 22,color: Color(0xff419ca6)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter preferred time';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _preferredTime = value;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Pickup Day',
                      ),
                      style: TextStyle(fontSize: 22,color: Color(0xff419ca6)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter pickup day';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _pickupDay = value;
                      },
                    ),

                    SizedBox(height:150),
                    Row(
                      children: [
                        Text('Quantity:',style: TextStyle(fontSize: 22,color: Colors.black54,),),
                      ],
                    ),
                    SizedBox(height:20),


                    Slider(
                      value: _sliderValue,
                      min: 0.0,
                      max: 500.0,
                      divisions: 100,
                      activeColor: Color(0xff419ca6),
                      inactiveColor: Colors.grey,
                      label: '$_sliderValue persons',
                      onChanged: (double value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                    ),
                    Row(
                      children: [
                        SizedBox(width:20),
                        Text('min',style: TextStyle(fontSize: 15,color:Colors.grey),),
                        SizedBox(width:280),
                        Text('max',style: TextStyle(fontSize: 15,color:Colors.grey),),
                      ],
                    ),
                    SizedBox(height:20),
                    CheckboxListTile(
                      title: Text('I assure that the food quality and hygiene has been maintained',style: TextStyle(fontSize: 15)),
                      value: _isAgree,
                      onChanged: (bool? value) {
                        setState(() {
                          _isAgree = value!;
                        });
                      },
                        activeColor:Color(0xff419ca6),
                    ),


                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate() && _isAgree) {
                              _formKey.currentState!.save();
                              _submitForm();
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xff419ca6)),
                            minimumSize: MaterialStateProperty.all<Size>(Size(200, 50)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                // You can also set other properties of the border here
                              ),
                            ),
                          ),
                          child: Text('Submit',style: TextStyle(fontSize: 20),),


                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}