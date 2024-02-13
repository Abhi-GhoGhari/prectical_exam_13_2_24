import 'package:flutter/material.dart';
import 'package:prectical_exam_13_2_24/utils/product_utils.dart';
import 'package:prectical_exam_13_2_24/view/screen/cart_page.dart';

import '../../utils/route_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff607274),
        leading: GestureDetector(
          child: Icon(
            Icons.person,
          ),
        ),
        centerTitle: true,
        title: Text(
          "HomePage",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          GestureDetector(
            child: Icon(
              Icons.shopping_cart_checkout_outlined,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CartPage(),
                ),
              );
            },
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      backgroundColor: Color(0xffDED0B6),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: allCategory
                    .map(
                      (e) => GestureDetector(
                        // onTap: (){
                        //   Navigator.of(context).push(route)
                        // },
                        child: Container(
                          child: Text(
                            e,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          alignment: Alignment.center,
                          height: 60,
                          width: 150,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Color(0xffB2A59B),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                child: Column(
                  children: [
                    ...allProducts.map(
                      (e) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            MyRoute.detialpage,
                            arguments: e,
                          );
                        },
                        child: Container(
                          height: size.height * 0.4,
                          width: double.infinity,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  // height: size.height * 0.3,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(20),
                                    ),
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        e['thumbnail'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  // height: size.height * 0.5,
                                  width: double.infinity,
                                  // margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                    color: Color(0xffB2A59B),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        e['title'],
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        e['description'],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "\$ " + e['price'].toString(),
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
