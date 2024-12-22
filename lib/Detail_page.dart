import 'package:flutter/material.dart';
import 'package:navigation_task/cost_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop((context));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.yellow[700],
          ),
        ),
        title: Text(
          'Lesson History',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Vedio Call ',
                style: TextStyle(
                    color: Colors.yellow[700],
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.yellow[700],
                    decorationThickness: 2,
                    fontSize: 15),
              ),
              Text(
                'Audio Call',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CostPage()));
                },
                child: Container(
                  width: 380,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/saad4.png.jpg',
                                ),
                                fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Muhammad Saad',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                            Row(
                              children: [
                                Text('Video Call -'),
                                Text(
                                  ' Scheduled',
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                            Text('11:30 AM')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 380,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.yellow[50],
                          radius: 17,
                          child: Icon(
                            Icons.notifications_active,
                            color: Colors.yellow,
                          ),
                        ),
                        Text('Follow')
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.yellow[50],
                          radius: 17,
                          child: Icon(
                            Icons.message_outlined,
                            color: Colors.yellow,
                          ),
                        ),
                        Text('Message')
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.yellow[50],
                          radius: 17,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.yellow,
                          ),
                        ),
                        Text('Favorite')
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  ' My Name is Muhammad Saad ktk , Alhamdulillah I almost \n learnflutter ui ,Every type of Ui(design) i can make  it , \n and moving forward for overcoming every challange.'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Class Details',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              SizedBox(
                height: 9,
              ),
              Text('Monday, March 27 2023'),
              SizedBox(
                height: 7,
              ),
              Text('Total Time: 30 Mins'),
              SizedBox(
                height: 7,
              ),
              Text('Tuesday, March 28 2023'),
              SizedBox(
                height: 7,
              ),
              Text('Total Time: 30 Mins')
            ],
          )
        ],
      ),
    );
  }
}
