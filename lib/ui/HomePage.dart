import 'package:annapurna/ui/DonatePage.dart';
import 'package:flutter/material.dart';
import 'VolunteerPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isSelectedDonate=true;
  bool isSelectedVolunteer=false;
  bool isSelectedLocation=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Center(
                child: Text(
                  'Donate Food',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff419ca6),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Save Lives',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color( 0xff419ca6),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img_1.png'),
                    //fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Want to share food?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Choose any one',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: IconButton(onPressed: (){
                            setState(() {
                              isSelectedDonate = true;
                              isSelectedVolunteer= false;
                              isSelectedLocation=false;
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DonatePage()),
                            );
                          }, icon: Icon(
                            Icons.volunteer_activism,
                            color: isSelectedDonate == true ? Colors.white : const Color(0xff419ca6),
                          )),
                          decoration: BoxDecoration(
                              color: isSelectedDonate == true ? const Color(0xff419ca6) : Colors.white,
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
                          'Donate',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Donate your food for needy',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: IconButton(onPressed: (){
                            setState(() {

                              isSelectedDonate = false;
                              isSelectedLocation=true;
                              isSelectedVolunteer= false;
                            });
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => DonatePage()),
                            // );
                          }, icon: Icon(
                            Icons.location_on,
                            color: isSelectedLocation == true ? Colors.white : const Color(0xff419ca6),
                          )),
                          decoration: BoxDecoration(
                              color: isSelectedLocation == true ? const Color(0xff419ca6) : Colors.white,
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
                          'Location Finder',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Provide the location of needy',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: IconButton(onPressed: (){
                            setState(() {
                              isSelectedDonate = false;
                              isSelectedLocation=false;
                              isSelectedVolunteer= true;
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => VolunteerPage()),
                            );
                          }, icon: Icon(
                            Icons.supervisor_account,
                            color: isSelectedVolunteer == true ? Colors.white : const Color(0xff419ca6),
                          )),
                          decoration: BoxDecoration(
                              color: isSelectedVolunteer == true ? const Color(0xff419ca6) : Colors.white,
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
                          'Volunteer',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Food Pickup and deliver',
                          textAlign: TextAlign.center,
                        ),
                      ],

                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Container(
                height: 370,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
