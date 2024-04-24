import 'package:flutter/material.dart';
import 'package:snapshop/widgets/custom_app_bar.dart';

class DeliveryAddress extends StatefulWidget {
  const DeliveryAddress({super.key});

  @override
  State<DeliveryAddress> createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          centreTitle: true,
          title: "Delivery Address",
        ),
        body: Container(
            padding: const EdgeInsets.all(22.0),
            child: Column(children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "HOME",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.check_circle,
                              color: Colors.white,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "2280 Wiseman Street",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Fort Benning ,Georgia, United States\n865-512-8826",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                          color: Colors.white)),
                                  backgroundColor: Colors.black,
                                  surfaceTintColor: Colors.black,
                                  foregroundColor: Colors.white,
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  // Add functionality here
                                  // print('Button pressed');
                                },
                                child: const Text("Edit Address"),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side:
                                        const BorderSide(color: Colors.white)),
                                backgroundColor: Colors.black,
                                surfaceTintColor: Colors.black,
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                // Add functionality here
                                // print('Button pressed');
                              },
                              child: const Icon(Icons.more_horiz_rounded),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //   Second Address
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "HOME",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.circle_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "2280 Wiseman Street",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Fort Benning ,Georgia, United States\n865-512-8826",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                          color: Colors.white)),
                                  backgroundColor: Colors.black,
                                  surfaceTintColor: Colors.black,
                                  foregroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  // Add functionality here
                                  // print('Button pressed');
                                },
                                child: const Text("Edit Address",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side:
                                        const BorderSide(color: Colors.white)),
                                backgroundColor: Colors.black,
                                surfaceTintColor: Colors.black,
                                foregroundColor: Colors.white,
                              ),
                              onPressed: () {
                                // Add functionality here
                                // print('Button pressed');
                              },
                              child: const Icon(Icons.more_horiz_rounded,color: Colors.grey,),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ])));
  }
}
