import 'package:annapurna/ui/NGOAgentPage.dart';
import 'package:annapurna/ui/TransportPage.dart';
import 'package:flutter/material.dart';

class VolunteerPage extends StatefulWidget {
  const VolunteerPage({Key? key}) : super(key: key);

  @override
  State<VolunteerPage> createState() => _VolunteerPageState();
}

class _VolunteerPageState extends State<VolunteerPage> {

bool isSelectedTransport=false;
bool isSelectedNGO=false;
bool _showCard1 = false;
bool _showCard2 = false;

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
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: Container(
          //     child:Text('How would you like to volunteer?',
          //       style: TextStyle(
          //         fontSize: 30,
          //         color: Colors.black,
          //       ),) ,),
          // ),
          Container(
            child:Text('Choose your role:',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black54,
              ),) ,),
          SizedBox(height: size.height*.05,),
          GestureDetector(
            onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TransportPage()),
            );},
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
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NGOAgentPage()),
              );
            }   ,
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
