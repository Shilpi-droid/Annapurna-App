
import 'package:flutter/material.dart';
//'By clicking on the Transport button, you are indicating that you are willing to provide transportation services to help deliver food from the donor\'s location to the intended recipients. This may involve carrying food packages, driving a vehicle, or using any other means of transportation required to ensure that the food reaches the people who need it. You will be provided with information on where to collect the food and where it needs to be delivered. Your contribution will go a long way in ensuring that food reaches those who need it the most.',
class Rough extends StatefulWidget {
  const Rough({Key? key}) : super(key: key);

  @override
  State<Rough> createState() => _RoughState();
}

class _RoughState extends State<Rough> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height:size.height*.1),
          SizedBox(
            height: size.height*.4,
            child:Image.asset('assets/img_2.png')
          ),
          Container(
            child:Text('Choose your role:',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black54,
          ),) ,),
          SizedBox(height: size.height*.05,),
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff02ddbc),
                  borderRadius: BorderRadius.circular(20),

                ),
                height: 80.0,
                padding: const EdgeInsets.only(left: 10, top:10),
                margin: const EdgeInsets.only(bottom: 10, top:10),
                width: size.width,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: Color(0xff02ddbc),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Positioned(
                          top:0,
                          bottom:0,
                          left: 0,
                          right: 0,
                          child: SizedBox(
                            height: 80.0,
                            child:Icon(Icons.fire_truck),
                          ),),
                        Positioned(

                          bottom: 20,
                          left: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Transport',
                                  style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.black.withOpacity(.7),
                                ),
                              ),
                            ],
                          ),),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 1),
                      child: IconButton(icon:Icon(Icons.info,color: Colors.black45,), onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            // Build the AlertDialog
                            return AlertDialog(
                              title: Text("What does this option mean?"),
                              content: Text(
                                'By clicking on the Transport button, you are indicating that you are willing to provide transportation services to help deliver food from the donor\'s location to the intended recipients. This may involve carrying food packages, driving a vehicle, or using any other means of transportation required to ensure that the food reaches the people who need it. You will be provided with information on where to collect the food and where it needs to be delivered. Your contribution will go a long way in ensuring that food reaches those who need it the most.',
                                textAlign: TextAlign.justify,
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    // Close the dialog
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                      },),
                    ),
                  ],
                ),
              ),
            ),
          ),





          GestureDetector(
            onTap: (){}   ,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff02ddbc),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 80.0,
                padding: const EdgeInsets.only(left: 10, top:10),
                margin: const EdgeInsets.only(bottom: 10, top:10),
                width: size.width,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: Color(0xff02ddbc).withOpacity(.2),
                            //shape: BoxShape.circle,
                          ),
                        ),
                        Positioned(
                          bottom:0,
                          left: 0,
                          right: 0,
                          child: SizedBox(
                              height: 80.0,
                              child: Icon(Icons.supervisor_account)

                          ),),
                        Positioned(
                          top:8,
                          bottom: 24,
                          left: 80,

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('NGO Agent',
                                style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.black.withOpacity(.7),
                                ),
                              ),
                            ],
                          ),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 1),
                      child: IconButton(icon:Icon(Icons.info,color: Colors.black45,), onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            // Build the AlertDialog
                            return AlertDialog(
                              title: Text("What does this option mean?"),
                              content: Text(
                                'By clicking on the NGO Agent button, you are indicating that you are willing to take on the responsibility of managing the food delivery process. This involves picking up the food from the donor\'s location, finding people who need it, arranging for transportation, and ensuring that the food is distributed in a fair and efficient manner. This role is critical in ensuring that the food is delivered to those who need it the most, and it requires a high level of commitment and responsibility. If you choose to become an NGO Agent, you will play a key role in helping to alleviate food insecurity in your community.',
                                textAlign: TextAlign.justify,
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    // Close the dialog
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                      },),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}

/*
*  Scaffold(
      //backgroundColor:Color(0xff419ca6)//.withOpacity(0.1),
        body:SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height:200),
                Container(
                  height: 70,
                  width: 70,
                  child: IconButton(onPressed: (){
                    setState(() {
                      isSelectedTransport=false;
                      isSelectedNGO=true;
                    });
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => DonatePage()),
                    // );
                  }, icon: Icon(
                    Icons.volunteer_activism,

                  )),
                  decoration: BoxDecoration(
                      color: isSelectedTransport == true ? Colors.white : const Color(0xff419ca6),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 1),
                          blurRadius: 5,
                          color: const Color(0xff419ca6),
                        ),
                      ]),
                ),
              SizedBox(height: 10,),
                Text(
                  'Transport',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: ElevatedButton(

                        onPressed: () {
                          setState(() {
                            _showCard1 = !_showCard1;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff419ca6),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)
                          ),
                        ),
                        child: Text('Read More'),
                      ),
                    ),
                    Visibility(
                      visible: _showCard1,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Text('By clicking on the Transport button, you are indicating that you are willing to provide transportation services to help deliver food from the donor\'s location to the intended recipients. This may involve carrying food packages, driving a vehicle, or using any other means of transportation required to ensure that the food reaches the people who need it. You will be provided with information on where to collect the food and where it needs to be delivered. Your contribution will go a long way in ensuring that food reaches those who need it the most.',
                            textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height:40),
                Container(
                  height: 70,
                  width: 70,
                  child: IconButton(onPressed: (){
                    setState(() {
                      isSelectedTransport=true;
                      isSelectedNGO=false;
                    });
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => DonatePage()),
                    // );
                  }, icon: Icon(
                    Icons.volunteer_activism,

                  )),
                  decoration: BoxDecoration(
                      color: isSelectedNGO== true ? Colors.white : const Color(0xff419ca6),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 1),
                          blurRadius: 5,
                          color: const Color(0xff419ca6),
                        ),
                      ]),
                ),
                SizedBox(height: 10),
                Text(
                  'NGO Agent',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),

                // First, create a button that will show the AlertDialog when pressed.
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        // Build the AlertDialog
                        return AlertDialog(
                          title: Text("What does this option mean?"),
                          content: Text(
                            'By clicking on the NGO Agent button, you are indicating that you are willing to take on the responsibility of managing the food delivery process. This involves picking up the food from the donor\'s location, finding people who need it, arranging for transportation, and ensuring that the food is distributed in a fair and efficient manner. This role is critical in ensuring that the food is delivered to those who need it the most, and it requires a high level of commitment and responsibility. If you choose to become an NGO Agent, you will play a key role in helping to alleviate food insecurity in your community.',
                            textAlign: TextAlign.justify,
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                // Close the dialog
                                Navigator.of(context).pop();
                              },
                              child: Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff419ca6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                  ),
                  child: Text("Read More"),
                )


                // Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // children: <Widget>[
              //   Center(
              //     child: ElevatedButton(
              //
              //       onPressed: () {
              //         setState(() {
              //           _showCard2 = !_showCard2;
              //         });
              //       },
              //       style: ElevatedButton.styleFrom(
              //         primary: Color(0xff419ca6),
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(50.0)
              //         ),
              //       ),
              //       child: Text('Read More'),
              //     ),
              //   ),
              //   Visibility(
              //     visible: _showCard2,
              //     child: Card(
              //       child: Padding(
              //         padding: const EdgeInsets.all(16.0),
              //         child: Padding(
              //           padding: const EdgeInsets.all(40.0),
              //           child: Text('By clicking on the NGO Agent button, you are indicating that you are willing to take on the responsibility of managing the food delivery process. This involves picking up the food from the donor\'s location, finding people who need it, arranging for transportation, and ensuring that the food is distributed in a fair and efficient manner. This role is critical in ensuring that the food is delivered to those who need it the most, and it requires a high level of commitment and responsibility. If you choose to become an NGO Agent, you will play a key role in helping to alleviate food insecurity in your community.',
              //             textAlign: TextAlign.justify,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ],
              //   ),
              ],
            ),
          ),
        ),
    );
* */