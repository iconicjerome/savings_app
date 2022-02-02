import 'package:flutter/material.dart';
import 'package:new_app/page4.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PageThree(),
  ));
}

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void showResponse() {
      print('We good');
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Profile();
              },
            ),
          );
        },
        child: Icon(
          Icons.arrow_forward_rounded,
          color: Colors.white,
        ),
        backgroundColor: Colors.teal[300],
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            height: 150,
            width: 411,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_back_sharp)),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_sharp,
                      color: Colors.teal[300],
                      size: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Travel',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Active Savings',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                padding: EdgeInsets.all(10),
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$500',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.monetization_on,
                          color: Colors.teal[300],
                          size: 30,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'GOAL',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          '\$2000',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      )),
                      onPressed: showResponse,
                      icon: Icon(
                        Icons.arrow_downward_rounded,
                        color: Colors.teal[300],
                      ),
                      label: Text(
                        'CASH OUT',
                        style: TextStyle(
                          color: Colors.teal[300],
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                        Colors.teal[300],
                      )),
                      onPressed: () {
                        print('Good job!!');
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      label: Text('SAVE MONEY',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ))),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Latest Transactions',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 80,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: ListTile(
              title: Text(
                'Saved',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '17/11/2021',
                style: TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.grey[600]),
              ),
              leading: Icon(
                Icons.arrow_circle_up,
                color: Colors.teal[300],
                size: 50,
              ),
              trailing: Text(
                '\$40',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.teal[300],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.show_chart_sharp),
              label: 'Progress',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
    );
  }
}
