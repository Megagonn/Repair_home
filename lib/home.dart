import 'package:flutter/material.dart';

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
                            blurStyle: BlurStyle.outer
                          )
                        ]),
                    child: TextFormField(
                      decoration:  InputDecoration(
                        suffixIcon: Icon(Icons.search_outlined),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search appliances',
                        hintStyle: TextStyle(color: Colors.grey),
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Offers",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // shrinkWrap: true,
                          // scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xFFF9F9F9)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: const EdgeInsets.all(16),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),
                                      color: Color(0xFFCAE8F2),
                                    ),
                                    child: const Text(
                                      'valid until june 30th',
                                      style:
                                          TextStyle(fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(16),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                            width: 90,
                                            child: Text(
                                              'Cashback 5% from each repair',
                                              softWrap: true,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700),
                                            )),
                                        Expanded(
                                            // flex: ,
                                            child: Image.asset('assets/r1.PNG')),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xFFD1D3FA)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: const EdgeInsets.all(16),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),
                                      color: Color(0xFFEEEDF3),
                                    ),
                                    child: const Text(
                                      'valid until june 30th',
                                      style:
                                          TextStyle(fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(16),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                            width: 90,
                                            child: Text(
                                              'Cashback 5% from each repair',
                                              softWrap: true,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700),
                                            )),
                                        Expanded(
                                            // flex: ,
                                            child: Image.asset('assets/r1.PNG')),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.amber),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: const EdgeInsets.all(16),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),
                                      color: Colors.lightBlue,
                                    ),
                                    child: const Text(
                                      'valid until june 30th',
                                      style:
                                          TextStyle(fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(16),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                            width: 90,
                                            child: Text(
                                              'Cashback 5% from each repair',
                                              softWrap: true,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700),
                                            )),
                                        Expanded(
                                            // flex: ,
                                            child: Image.asset('assets/r1.PNG')),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                      ),
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
