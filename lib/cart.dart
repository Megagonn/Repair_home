import 'package:flutter/material.dart';
import 'package:repairhome/product.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool dropDown = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF9F9F9),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Cart',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left_outlined,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          color: Color(0xffF9F9F9),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    decoration: BoxDecoration(
                        color: const Color(0xFFEBF0FB),
                        borderRadius: BorderRadius.circular(8)),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          dropDown = !dropDown;
                        });
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => const Product()));
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
                      subtitle: Text(dropDown ? 'Living room' : '2 Service'),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            // dropDown ? 
                            // Text('') : 
                            Text('\$102'),
                            const Icon(Icons.chevron_right_outlined),
                          ],
                        ),
                      ),
                      // tileColor:
                    ),
                  ),
                  // dropDown
                      // ? 
                      ListTile(
                        leading: Icon(
                          Icons.remove_circle_outlined,
                          color: Colors.deepOrange,
                        ),
                        title: Text('Set up TV'),
                        trailing: Text('\$22'),
                        tileColor: (Color(0xFFEBF0FB)),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.remove_circle_outlined,
                          color: Colors.deepOrange,
                        ),
                        title: Text('Repair TV'),
                        trailing: Text('\$80'),
                        tileColor: Color(0xFFEBF0FB),
                      )
                      // : const SizedBox.shrink(),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              // Container(
              //   padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
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
              //   padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
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
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
