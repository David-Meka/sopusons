import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.purple,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // Handle icon press
            },
            icon: const Icon(
              Icons.shopping_cart,
            ), // Replace with your desired icon
          ),
        ],
        title: Text(
          'Favourites',
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              width: 550,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(''),
                        const Column(
                          children: [
                            // TODO name of item collected from the api
                            Text('Apple Smartwatch Series 6'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 6),
                            ),
                            Row(
                              children: [Text('N 8000'), Text('N 000,000')],
                            ),
                          ],
                        )
                      ],
                    ),
                    const Text('In stock'),
                    Row(
                      children: [
                        Container(
                          color: Colors.white10,
                          child: const Text('Remove'),
                        ),
                        const Spacer(),
                        Container(
                          color: Colors.blue,
                          width: 100,
                          height: 20,
                          child: const Text('Buy Now'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
