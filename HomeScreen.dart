import 'dart:async';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _imageUrls = [
    'https://img.choice.com.au/-/media/5e741f64a7f642caa9c857e168bf2898.ashx?w=660&jq=80%20660w',
    'https://exchange4media.gumlet.io/news-photo/115888-Amazon-Prime-Video-Channels-Launch-2.jpg',
    'https://sm.ign.com/ign_in/screenshot/default/3_8g11.png',
    'https://flipshope.com/blog/wp-content/uploads/2025/05/Amazon-Mega-Electronics-Days.webp',
    'https://hyyzo.com/blog/content/images/2024/06/Artboard-1.jpg',
  ];

  int _currentPage = 0;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    Future.delayed(Duration(seconds: 2), () {
      Timer.periodic(const Duration(seconds: 4), (timer) {
        if (_pageController.hasClients) {
          _currentPage = (_currentPage + 1) % _imageUrls.length;
          _pageController.animateToPage(
            _currentPage,
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeInOut,
          );
        }
      });
    });
  }

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 73,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 72, 199, 241),
                Color.fromARGB(255, 148, 236, 193),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(9),
            child: Column(
              children: [
                SizedBox(height: 45),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.camera_alt_outlined),

                    hintText: 'Search Amazon.in',
                    fillColor: Colors.white,

                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 116, 94, 94),
                        width: 0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              color: Color.fromARGB(255, 137, 217, 235),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    SizedBox(width: 5),
                    Text("Deliver to Ajmal - Kannur , Thalasssery 670101"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),

            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  circleImage(
                    image: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNN4Lx7RZD6Rg1t_smg_jbUrLqbsIsold5HQ&s',
                    ),
                    text: "MxPlayer",
                  ),
                  circleImage(
                    text: "Bazar",
                    image: Image.network(
                      'https://www.livemint.com/lm-img/img/2024/04/06/1600x900/amazon_bazaar_1712397627668_1712397640112.jpeg',
                    ),
                  ),
                  circleImage(
                    text: "Home",
                    image: Image.network(
                      'https://media.licdn.com/dms/image/v2/D5622AQEAlSTDEI1E-g/feedshare-shrink_2048_1536/feedshare-shrink_2048_1536/0/1712916667960?e=2147483647&v=beta&t=KCy8dBEPfycR0JhBRyVqLdaZf69FeMtl2o_Mdn_YHPQ',
                    ),
                  ),
                  circleImage(
                    text: "Electronics",
                    image: Image.network(
                      'https://m.media-amazon.com/images/G/01/kindle/merch/2018/SMP/Category_Page_and_Shared_Assets//750x390_fireTV_v4.jpg',
                    ),
                  ),
                  circleImage(
                    text: "Rewards",
                    image: Image.network(
                      'https://previews.123rf.com/images/denis08131/denis081311609/denis08131160900051/67556291-isolated-gold-cartoon-crown-vector.jpg',
                    ),
                  ),
                  circleImage(
                    text: "Beauty",
                    image: Image.network(
                      'https://www.ubuy.ma/productimg/?image=aHR0cHM6Ly9pbWFnZXMtY2RuLnVidXkuY28uaW4vNjVmNTBkNjk1ZmExMDkwYjVjNDEzNGM3LXNraW4tY2FyZS1wcm9kdWN0cy1zZXQtZ3JlZW4tdGVhLXNraW4uanBn.jpg',
                    ),
                  ),
                  circleImage(
                    text: "Fashion",
                    image: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0Rc5YQR7IOwUsb4ezxxLLuC3-eiENpmJhYw&s',
                    ),
                  ),
                  circleImage(
                    text: "Groceries",
                    image: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRUCOVX9FISMvp9TaiTHBU_OkIk8xvdn1BYQ&s',
                    ),
                  ),
                  circleImage(
                    text: "Prime",
                    image: Image.network(
                      'https://images.fonearena.com/blog/wp-content/uploads/2019/07/Amazon-Prime.png',
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            SizedBox(
              height: 200,
              width: double.infinity,
              child: PageView.builder(
                controller: _pageController,
                itemCount: _imageUrls.length,
                itemBuilder: (context, index) => Image.network(
                  _imageUrls[index],

                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              ),
            ),

            SizedBox(height: 1),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    elevation: 5,
                    child: Container(
                      color: const Color.fromARGB(255, 236, 235, 232),
                      width: 200,
                      height: 230,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              circleImage(
                                image: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0NrHT4rEeertzPwN7CT7V6DSYqxNq0cWv8g&s',
                                ),
                                text: 'Amazon Pay',
                              ),
                              circleImage(
                                image: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5PTxh22ZySEYWNjlaYyDmVb8I-iQN6Tuw_BVlWnORYvNuE1lsP6Dkmz4R44J627aaj2c&usqp=CAU',
                                ),
                                text: 'Recharge',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              circleImage(
                                image: Image.network(
                                  'https://m.media-amazon.com/images/G/31/img17/APay/Coupons/Coupon-Image-131.jpg',
                                ),
                                text: 'Reward',
                              ),
                              circleImage(
                                image: Image.network(
                                  'https://m.media-amazon.com/images/G/31/FaceoutCoupon/Coupon-Image-Bill-Recharge.jpg',
                                ),
                                text: 'Pay Bills',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Card(
                    child: SizedBox(
                      width: 200,
                      height: 230,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Keep Shopping for",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 15),
                          Image.network(
                            'https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/2024/AUGUST/1/S8MeGtKk_0226c6444c11474c8ccff7c11308215f.jpg',
                            width: 130,
                          ),
                        ],
                      ),
                    ),
                  ),

                  Card(
                    child: SizedBox(
                      width: 200,
                      height: 230,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Deals Under ₹500\nShoes",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Image.network(
                            'https://i.ebayimg.com/images/g/7hYAAOSwol5Yw2GJ/s-l400.jpg',
                            width: 130,
                          ),
                        ],
                      ),
                    ),
                  ),

                  Card(
                    child: SizedBox(
                      width: 200,
                      height: 230,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Deals Related to your Saved items",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Image.network(
                            'https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/26174312/2024/4/18/de8a1700-67d4-4090-b508-b90acac47f281713437565088-Saint-G-Graphic-Printed-Water-Resistant-Leather-Jacket-98317-1.jpg',
                            width: 130,
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

  circleImage({required Widget image, required String text}) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: image,
            ),
          ),
          SizedBox(height: 5),
          Text(text, style: TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
