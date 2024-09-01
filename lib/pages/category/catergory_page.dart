import 'package:flutter/material.dart';
import 'package:sopusons/widgets/bottom_navigation.dart';
import 'package:sopusons/widgets/product_container.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Categories'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => const BottomNavigation(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          //TODO learn to implement the category picker

          Wrap(
            children: [
              FilterChip(
                  avatar: Image.asset(
                    'images/catergory_avatar/Vector (3).png',
                    color: Colors.black,
                  ),
                  label: const Text('Laptop'),
                  selected: isChecked,
                  onSelected: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  deleteIcon: null)
            ],
          ),

          // the catergories downward
          Container(
            height: 50,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 5, bottom: 5),
              child: Row(
                children: [
                  const Text(
                    'Laptops',
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 16)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: [
                  ProductContainer('images/assets/iphone.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  ProductContainer('images/assets/headset.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  ProductContainer('images/assets/tv.png'),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
          Container(
            height: 50,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 5, bottom: 5),
              child: Row(
                children: [
                  const Text(
                    'Phone',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: [
                  ProductContainer('images/assets/phone3.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  ProductContainer('images/assets/laptop.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  ProductContainer('images/assets/ps game.png'),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
          ),
          Container(
            height: 50,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 5, bottom: 5),
              child: Row(
                children: [
                  const Text(
                    'Cameras',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 16.0)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: [
                  ProductContainer('images/assets/phone1.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  ProductContainer('images/assets/phone 2.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  ProductContainer('images/assets/wrist.png'),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
