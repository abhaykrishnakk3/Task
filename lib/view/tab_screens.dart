import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: [
                Image.asset(
                  'assets/6186787.jpg',
                  height: MediaQuery.of(context).size.height * 0.17,
                  width: MediaQuery.of(context).size.width * 0.34,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "shipment ID:#123456",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const Text("pickup location"),
                      const Text("678 muscat streat"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                          const Text(
                            "view in details",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
