import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 72, 199, 241),
                Color.fromARGB(255, 148, 236, 193),
              ],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Top Picks',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      menuItemLeft(
                        'Amazon Pay',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3tgrI7BX_OzRXVXPKMeGekyp6wFT_S9UQ1vGjiPnzNxaK5KZHXfrSoQmohMkZdmGA3Ws&usqp=CAU',
                      ),
                      menuItemLeft(
                        'Mobiles & Electronics',
                        'https://m.media-amazon.com/images/G/31/certified_refurbished/anjaga/RenewedMarketing2024/RenewedBAUStore24/MobileStoreTiles/Tile_2.jpg',
                      ),
                      menuItemLeft(
                        'Deals & Savings',
                        'https://www.usatoday.com/gcdn/presto/2021/09/22/USAT/f55ac005-a813-461e-8716-5e440e740065-Amazon_Deals_of_the_Day_92221_new.jpg?width=660&height=372&fit=crop&format=pjpg&auto=webp',
                      ),
                      menuItemLeft(
                        'Groceries & Pet Supplies',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiiGMhjTEHvIUu4xWx56svAF5oo_rmVU_6ZJNbuBGJ95jI9kNgcvMvHxdduopzMZ6VgDo&usqp=CAU',
                      ),
                      menuItemLeft(
                        'Video & Music',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWIuRVOnItT363E6T-yidqeVBPbSdW2LG_Jw&s',
                      ),
                      menuItemLeft(
                        'Fashion & Beauty',
                        'https://images-eu.ssl-images-amazon.com/images/I/71TtkiOaU7L._AC_UL375_SR375,375_.jpg',
                      ),
                      menuItemLeft(
                        'Home & Furniture',
                        'https://m.media-amazon.com/images/I/61zfm9gKg8S._UF894,1000_QL80_.jpg',
                      ),
                      menuItemLeft(
                        'Prime',
                        'https://assets.aboutamazon.com/45/9c/14ea4d214798863d8752e37f174c/free-delivery-inline.jpg',
                      ),
                      menuItemLeft(
                        'Games & Live',
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGA7Q1VQkfeXOhmYr28tNi-vLgHZeNqP49wng0SNUXwWcIhX2jE4ZGzulz85_HX0_OU90&usqp=CAU',
                      ),
                      menuItemLeft(
                        'Pharmacy & household',
                        'https://assets.aboutamazon.com/da/bf/07f381464a26b9ccfc66da058b89/inline-0001-opening-box.jpg',
                      ),
                      menuItemLeft(
                        'Travel & Auto',
                        'https://miro.medium.com/v2/resize:fit:1400/1*DEAlNsotlBN24HFMoJuSkw.jpeg',
                      ),
                      menuItemLeft(
                        'Toys & Kids',
                        'https://m.media-amazon.com/images/I/61MRqvK3mNL._UF1000,1000_QL80_.jpg',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Top Categories For You',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Divider(),
                    categoryRow([
                      {
                        'img':
                            'https://m.media-amazon.com/images/I/71kduvIxBVL.jpg',
                        'text': 'Mobiles',
                      },
                      {
                        'img':
                            'https://people.com/thmb/W-Jjwe9i5626raNxrNSSDNW7A2w=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(599x0:601x2)/amazon-essential-dresses-summer-tout-24580aff63a4429b99d0ba65327c5a74.jpg',
                        'text': 'Fashion',
                      },
                      {
                        'img':
                            'https://m.media-amazon.com/images/G/01/US-hq/2018/img/Dash_x5BDigital_Device_7x5D/XCM_Manual_1154662_Devices_category_Page_750x390_Dash_x5BDigital_Device_7x5D_1154662_US_Dash_CatPage_750x390_1545065022_jpg.jpg',
                        'text': 'Electronics',
                      },
                    ]),
                    categoryRow([
                      {
                        'img':
                            'https://media.istockphoto.com/id/478212565/photo/collage-of-transport.jpg?s=612x612&w=0&k=20&c=J-QLtt9HWWaV5VVD0GUKQMO4ag5v5wnJfL82hSFgE8I=',
                        'text': 'Travel',
                      },
                      {
                        'img':
                            'https://www.shutterstock.com/image-vector/red-discount-label-various-shape-260nw-1593857527.jpg',
                        'text': 'Deals',
                      },
                      {
                        'img':
                            'https://m.media-amazon.com/images/I/41SbR-9cywL._UF894,1000_QL80_.jpg',
                        'text': 'Home',
                      },
                    ]),
                    categoryRow([
                      {
                        'img':
                            'https://i.pinimg.com/1200x/21/5e/31/215e31a98cb6fd49cf29b70d8af45d6c.jpg',
                        'text': 'Grocery',
                      },
                      {
                        'img':
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5N_JZ1gCf2kYwOFfOQDCufwveajgBxZw_xw&s',
                        'text': 'Movies',
                      },
                      {
                        'img':
                            'https://www.ubuy.ma/productimg/?image=aHR0cHM6Ly9pbWFnZXMtY2RuLnVidXkuY28uaW4vNjVmNTBkNjk1ZmExMDkwYjVjNDEzNGM3LXNraW4tY2FyZS1wcm9kdWN0cy1zZXQtZ3JlZW4tdGVhLXNraW4uanBn.jpg',
                        'text': 'Beauty',
                      },
                    ]),
                    categoryRow([
                      {
                        'img':
                            'https://channelx.world/wp-content/uploads/2022/11/Large-Appliances-is-Amazons-most-lucrative-category-shutterstock_318473174.jpg',
                        'text': 'Appliances',
                      },
                      {
                        'img':
                            'https://m.media-amazon.com/images/I/712mvIVTCDL.jpg',
                        'text': 'Furniture',
                      },
                      {
                        'img':
                            'https://m.media-amazon.com/images/I/61oiXjGW7oL.jpg',
                        'text': 'Kids & Toys',
                      },
                    ]),
                    categoryRow([
                      {
                        'img':
                            'https://yt3.googleusercontent.com/HkbJVMsJRgF8QZ6a_7UG8vTMRttEd2-6Imrm06tu2nIas2YQzB73GiG4g1dS4fq0FDxXLr2-9A=s900-c-k-c0x00ffffff-no-rj',
                        'text': 'Prime',
                      },
                      {
                        'img':
                            'https://hips.hearstapps.com/hmg-prod/images/shopping-cookbook-amazon-1538691235.png',
                        'text': 'Business',
                      },
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Row(
          children: [
            Expanded(child: bottomButton('Orders')),
            Expanded(child: bottomButton('Buy Again')),
            Expanded(child: bottomButton('Account')),
            Expanded(child: bottomButton('Lists')),
          ],
        ),
      ),
    );
  }

  Widget menuItemLeft(String label, String imageUrl) {
    return Container(
      width: 80,
      child: Column(
        children: [
          Image.network(imageUrl, height: 40, width: 40),
          SizedBox(height: 6),
          Text(
            label,
            style: TextStyle(fontSize: 11),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget categoryRow(List<Map<String, String>> items) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: items.map((item) {
          return Expanded(
            child: Column(
              children: [
                Image.network(item['img']!, height: 50, width: 50),
                SizedBox(height: 5),
                Text(
                  item['text']!,
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget bottomButton(String label) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
        minimumSize: Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: FittedBox(
        child: Text(
          label,
          style: TextStyle(fontSize: 14),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
