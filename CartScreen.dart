import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/widget.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _Cartpage2State();
}

class _Cartpage2State extends State<Cartscreen> {
  int count = 1;
  bool isChecked = false;
  int total = 89900;
  int defaultPR = 89900;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Color.fromARGB(255, 137, 217, 235),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined, size: 25),
                      SizedBox(width: 10),

                      Text(
                        "Deliver to Ajmal- Manjeri 670102",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: Text(
                        "Subtotal ₹$total",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text("Emi Available"),
                      Text(
                        "  Details",
                        style: TextStyle(
                          color: Color.fromARGB(255, 33, 177, 243),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(),

                  Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.green),

                      Expanded(
                        child: Text(
                          " Your Order is eligible for Free Delivary.",

                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 1, 102, 18),
                          ),
                        ),
                      ),

                      Text("Select this", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        " option at checkout ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Details",
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.yellow[600],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Proceed to Buy (1 items)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        "Send as a gift. include custom message",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Divider(),
                  Card(
                    child: SizedBox(
                      width: double.infinity,
                      height: 350,
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Image.network(
                                    'https://m.media-amazon.com/images/I/619oqSJVY5L.UF1000,1000_QL80.jpg',
                                    width: 170,
                                  ),
                                ],
                              ),

                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "Apple iPhone 16 Pro Max(1TB)",

                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "₹$total                   ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Eligible for FREE shiping               ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Colour : Deep Blue                       ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Size : 256 GB                                 ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "₹20 Cashback applied . buy with\nitems in cart",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 5, 147, 14),
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 130,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey[300]!,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        color: Color.fromRGBO(238, 238, 238, 1),
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              count = 1;
                                              total = defaultPR;
                                            });
                                          },
                                          icon: Icon(Icons.delete),
                                        ),
                                      ),
                                      Container(child: Text(count.toString())),
                                      Container(
                                        color: Colors.grey[200],
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              if (count < 4) {
                                                count++;
                                                total = count * defaultPR;
                                              }
                                            });
                                          },
                                          icon: Icon(Icons.add),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                containerBtn(text: 'delete', width: 100),
                                containerBtn(width: 120, text: "text"),
                              ],
                            ),
                          ),

                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: containerBtn(
                                width: 150,
                                text: "see more like this",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
