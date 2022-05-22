import 'package:flutter/material.dart';
import 'package:repairhome/utitlities.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "What's broken?",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20, top: 10),
                    // padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: .7,
                              spreadRadius: .8,
                              blurStyle: BlurStyle.outer)
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.search_outlined),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search appliances',
                        hintStyle: const TextStyle(color: Colors.grey),
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  const Text(
                    "Offers",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                  ),
                  const OfferRow(),
                  const Text(
                    "We can fix it",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black,
                        ),
                        child: const Text(
                          'Offers',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Text(
                        'Kitchen',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Text(
                        'Livingroom',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Text(
                        'Bathroom',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFFC7D9FF),
                          ),
                          child: Icon(Icons.tv_outlined),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
