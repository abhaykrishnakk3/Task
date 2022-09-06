import 'package:flutter/material.dart';
import 'package:work/view/tab_screens.dart';
import 'package:work/widgets/card.dart';
import 'package:work/widgets/google_map.dart';
import 'package:work/widgets/icon_text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            actions: [
              Switch(value: true, onChanged: (va) {}),
            ],
            backgroundColor: Colors.white,
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: double.infinity,
                color: Colors.teal[300],
                child: Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  const Icon(
                    Icons.message,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  const Text(
                    "You have new pickup request",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Today's Task",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            HomeCard(
                                test1: "Today's Pickup",
                                test2: "Jobs",
                                num: "5",
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                width: MediaQuery.of(context).size.width * 0.43,
                                color: Color.fromARGB(255, 37, 95, 142)),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                HomeCard(
                                    test1: "Assigned Delivery",
                                    test2: "Jobs",
                                    num: "12",
                                    height: MediaQuery.of(context).size.height *
                                        0.12,
                                    width: MediaQuery.of(context).size.width *
                                        0.46,
                                    color: Colors.teal),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.0,
                                ),
                                HomeCard(
                                    test1: "Today's",
                                    test2: "Revenue",
                                    num: "5",
                                    height: MediaQuery.of(context).size.height *
                                        0.12,
                                    width: MediaQuery.of(context).size.width *
                                        0.46,
                                    color: Color.fromARGB(255, 118, 203, 195))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Google(),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 61, 91, 71))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextAndIcon(icon: Icons.wheelchair_pickup, name: "Pickups"),
                              TextAndIcon(
                                  icon: Icons.fastfood_outlined,
                                  name: "Delivery"),
                              TextAndIcon(icon: Icons.reviews, name: "Revenue"),
                              TextAndIcon(icon: Icons.report, name: "Report")
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    DefaultTabController(
                      
                      length: 4,
                      child: Column(
                        children: [
                          const TabBar(
                             indicator: BoxDecoration(
              color: Color.fromARGB(255, 114, 213, 165),
            ),
                            labelColor: Colors.black,
                            labelStyle: TextStyle(fontSize: 10),
                            tabs: [
                              Tab(
                                icon: Icon(
                                  Icons.grid_view_outlined,
                                  color: Colors.black,
                                ),
                                text: "All",
                              ),
                              Tab(
                                icon: Icon(
                                  Icons.location_city,
                                  color: Colors.black,
                                ),
                                text: "Pickup Request",
                              ),
                              Tab(
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                text: "Accepted",
                              ),
                              Tab(
                                icon: Icon(
                                  Icons.delivery_dining,
                                  color: Colors.black,
                                ),
                                text: "Delivery jobs",
                              )
                            ],
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.9,
                              child: const TabBarView(children: [
                                TabScreen(),
                                 TabScreen(),
                                  TabScreen(),
                                   TabScreen(),
                               
                              ]))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(items: [
          const BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "Home"),
          const BottomNavigationBarItem(
              icon: const Icon(
                Icons.note_add,
                size: 50,
                color: Colors.black,
              ),
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_important,
                color: Colors.black,
              ),
              label: "Notification")
        ]));
  }
}
