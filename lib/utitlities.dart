import 'package:flutter/material.dart';

class FlatBtn extends StatelessWidget {
  final String label;
  final Color? labelColor;
  final Color? color;
  final IconData? leading;
  final FontWeight? fontWeight;
  final onPress;
  const FlatBtn(
      {Key? key,
      required this.label,
      this.leading,
      this.labelColor,
      this.color,
      this.fontWeight,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                offset: Offset(1, 2),
                color: Colors.blueGrey,
                blurRadius: .4,
                spreadRadius: 2,
                blurStyle: BlurStyle.normal)
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: labelColor, fontWeight: fontWeight),
          ),
        ),
      ),
    );
  }
}

class OfferRow extends StatelessWidget {
  const OfferRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                        style: TextStyle(fontWeight: FontWeight.w700),
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
                                style: TextStyle(fontWeight: FontWeight.w700),
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
              const SizedBox(
                width: 20,
              ),
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
                        'valid until july 2nd',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          const SizedBox(
                              width: 90,
                              child: Text(
                                'Sale on appliances repair!',
                                softWrap: true,
                                style: TextStyle(fontWeight: FontWeight.w700),
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
              const SizedBox(
                width: 20,
              ),
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
                        'Refer a friend',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          const SizedBox(
                              width: 90,
                              child: Text(
                                'Refer a friend and win a cashback',
                                softWrap: true,
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),),
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
    );
  }
}
