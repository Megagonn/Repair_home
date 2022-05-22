import 'package:flutter/material.dart';
import 'package:repairhome/product.dart';
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
          // height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "What's broken?",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              ),
              Container(
                margin: const EdgeInsets.only(
                    bottom: 20, top: 10, right: 5, left: 5),
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
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Offers",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 30),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const OfferRow(),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "We can fix it",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 30),
                      ),
                      const SizedBox(
                        height: 15,
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
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 12),
                        decoration: BoxDecoration(
                            color: const Color(0xFFEBF0FB),
                            borderRadius: BorderRadius.circular(8)),
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Product()));
                          },
                          leading: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xFFC7D9FF),
                            ),
                            child: const Icon(Icons.tv_outlined),
                          ),
                          title: const Text('Fix TV set'),
                          subtitle: const Text('Living room'),
                          trailing: const Icon(Icons.chevron_right_outlined),
                          // tileColor:
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 12),
                        decoration: BoxDecoration(
                            color: const Color(0xFFEBF0FB),
                            borderRadius: BorderRadius.circular(8)),
                        child: ListTile(
                          onTap: () {},
                          leading: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xFFC7D9FF),
                            ),
                            child: const Icon(Icons.tv_outlined),
                          ),
                          title: const Text('Fix TV set'),
                          subtitle: const Text('Living room'),
                          trailing: const Icon(Icons.chevron_right_outlined),
                          // tileColor:
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      // Container(
                      //   padding: const EdgeInsets.symmetric(
                      //       vertical: 6, horizontal: 12),
                      //   decoration: BoxDecoration(
                      //       color: const Color(0xFFEBF0FB),
                      //       borderRadius: BorderRadius.circular(8)),
                      //   child: ListTile(
                      //     onTap: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => const Product()));
                      //     },
                      //     leading: Container(
                      //       padding: const EdgeInsets.all(5),
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(8),
                      //         color: const Color(0xFFC7D9FF),
                      //       ),
                      //       child: const Icon(Icons.tv_outlined),
                      //     ),
                      //     title: const Text('Fix TV set'),
                      //     subtitle: const Text('Living room'),
                      //     trailing: const Icon(Icons.chevron_right_outlined),
                      //     // tileColor:
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 15,
                      // ),
                      // Container(
                      //   padding: const EdgeInsets.symmetric(
                      //       vertical: 6, horizontal: 12),
                      //   decoration: BoxDecoration(
                      //       color: const Color(0xFFEBF0FB),
                      //       borderRadius: BorderRadius.circular(8)),
                      //   child: ListTile(
                      //     onTap: () {},
                      //     leading: Container(
                      //       padding: const EdgeInsets.all(5),
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(8),
                      //         color: const Color(0xFFC7D9FF),
                      //       ),
                      //       child: const Icon(Icons.tv_outlined),
                      //     ),
                      //     title: const Text('Fix TV set'),
                      //     subtitle: const Text('Living room'),
                      //     trailing: const Icon(Icons.chevron_right_outlined),
                      //     // tileColor:
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 15,
                      // ),
                      // Container(
                      //   padding: const EdgeInsets.symmetric(
                      //       vertical: 6, horizontal: 12),
                      //   decoration: BoxDecoration(
                      //       color: const Color(0xFFEBF0FB),
                      //       borderRadius: BorderRadius.circular(8)),
                      //   child: ListTile(
                      //     onTap: () {},
                      //     leading: Container(
                      //       padding: const EdgeInsets.all(5),
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(8),
                      //         color: const Color(0xFFC7D9FF),
                      //       ),
                      //       child: const Icon(Icons.tv_outlined),
                      //     ),
                      //     title: const Text('Fix TV set'),
                      //     subtitle: const Text('Living room'),
                      //     trailing: const Icon(Icons.chevron_right_outlined),
                      //     // tileColor:
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
