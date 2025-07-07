import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 42,
        flexibleSpace: Container(
          width: double.infinity,
          height: 110,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 72, 199, 241),
                Color.fromARGB(255, 148, 236, 193),
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  Image.network(
                    'https://www.pngall.com/wp-content/uploads/15/Amazon-Logo-White.png',
                    color: Colors.black,
                    width: 110,
                  ),
                  Spacer(),
                  Icon(Icons.notifications, size: 30),
                  SizedBox(width: 15),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Icon(Icons.search, size: 30),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Hello,", style: TextStyle(fontSize: 25)),
                  Text(
                    " Ajmal",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                    child: Icon(
                      Icons.account_circle,
                      size: 35,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  accountButton("Your Orders"),
                  accountButton("Buy Again"),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  accountButton("Your Account"),
                  accountButton("Wishlist"),
                ],
              ),

              SizedBox(height: 30),
              sectionHeader("Your Orders", "See all"),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildImageCard(
                      imageUrl:
                          'https://m.media-amazon.com/images/I/51BGH9oKKIL.jpg',
                      title: 'Sony Playstation5 Gaming console(Slim)\n₹54,990',
                    ),
                    buildImageCard(
                      imageUrl:
                          'https://zebronics.com/cdn/shop/files/zeb-companion-300-pic10.jpg?v=1698836112',
                      title: 'Zebronics Keyboard\n₹599',
                    ),
                    buildImageCard(
                      imageUrl:
                          'https://m.media-amazon.com/images/I/61eYPkT2zZL._UF1000,1000_QL80_.jpg',
                      title: 'iphone 16\n₹73,500',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              const Divider(thickness: 2),
              const SizedBox(height: 20),

              sectionHeader("Keep shopping for", "Edit   Browse History"),
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildImageCard(
                    imageUrl:
                        'https://m.media-amazon.com/images/I/51bGfdFAG5L.jpg',
                    title: 'Protronics Beem 440 Smart LED Projector\n₹6,399',
                  ),
                  buildImageCard(
                    imageUrl:
                        'https://m.media-amazon.com/images/I/51ODk5+ajJL._QL92_SH45_SS200_.jpg',
                    title: 'Notepad-daily-Planner\n₹159',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildImageCard(
                    imageUrl:
                        'https://m.media-amazon.com/images/I/714w5+3YqeL._UY1100_.jpg',
                    title: 'Skybags Stroke Bags\n₹3,999',
                  ),
                  buildImageCard(
                    imageUrl:
                        'https://m.media-amazon.com/images/I/41lYNaioT7L.jpg_BO30,255,255,255_UF900,850_SR1910,1000,0,C_PIRIOFOURANDHALF-medium,BottomLeft,30,-20_ZA110,500,900,420,420,AmazonEmber,50,4,0,0_QL100_.jpg',
                    title: 'Laptop Stand\n₹799',
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  buildImageCard({required String imageUrl, required String title}) {
    return Container(
      width: 150,
      margin:  EdgeInsets.all(8),
      child: Card(
        elevation: 4,
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius:  BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Image.network(
                imageUrl,
                width: double.infinity,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style:  TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  accountButton(String text) {
    return Container(
      width: 150,
      padding:  EdgeInsets.symmetric(vertical: 12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue),
      ),
      child: Text(text, style:  TextStyle(fontWeight: FontWeight.w500)),
    );
  }

  sectionHeader(String title, String actionText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          actionText,
          style:  TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 22, 178, 231),
          ),
        ),
      ],
    );
  }
}
