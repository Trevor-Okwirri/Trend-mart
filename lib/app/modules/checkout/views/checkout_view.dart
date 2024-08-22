import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        title: Text(
          'Checkout',
          style:
              GoogleFonts.ubuntu(fontWeight: FontWeight.bold, letterSpacing: 2),
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Delivery Address",
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 70,
              child: Center(
                child: ListTile(
                  leading: Icon(Icons.add_circle_outline),
                  title: Text("Add a new Address"),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.red,
                  border: Border.all(width: 1.2)),
            ),
            ListTile(
              title: Text(
                "Your order (3)",
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    fontSize: 18),
              ),
              trailing: IconButton(
                icon: Icon(Icons.add_circle_outline),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 150,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      "https://pictures-kenya.jijistatic.com/60289023_MTA5OS0xMzE3LWIyMWY0YjQ0ZjY.webp",
                      width: 100,
                      fit: BoxFit.fill,
                      height: 120,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Printed Short-Sleeved Silk Shirt",
                          style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              fontSize: 13),
                        ),
                        Text(
                          "Size : XL",
                          style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              fontSize: 12),
                        ),
                        Text(
                          "Color : Black",
                          style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              fontSize: 12),
                        ),
                        Text(
                          "Quantity : 1",
                          style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              fontSize: 12),
                        ),
                        Text(
                          "\$140.00",
                          style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              fontSize: 12),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(Icons.add_box_outlined),
                            ),
                            Text("1"),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(CupertinoIcons.minus_rectangle),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.red,
                  border: Border.all(width: 1.2)),
            ),
            ListTile(
              title: Text(
                "Delivery",
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 70,
              child: Center(
                child: ListTile(
                  title: Text("Choose Delivery"),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.red,
                  border: Border.all(width: 1.2)),
            ),
            ListTile(
              title: Text(
                "Select Payment method",
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 70,
              child: Center(
                child: ListTile(
                  leading: Icon(Icons.add_circle_outline),
                  title: Text("Cedit card"),
                  trailing: Transform.rotate(
                      angle: -8,
                      child: Icon(Icons.arrow_back_ios_new_outlined)),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.red,
                  border: Border.all(width: 1.2)),
            ),
            ListTile(
              title: Text(
                "Order Summary",
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal (3 items)",
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            letterSpacing: 1,
                            fontSize: 16),
                      ),
                      Text(
                        "\$316",
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            letterSpacing: 1,
                            fontSize: 16),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal (3 items)",
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            letterSpacing: 1,
                            fontSize: 16),
                      ),
                      Text(
                        "\$316",
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            letterSpacing: 1,
                            fontSize: 16),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal (3 items)",
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            letterSpacing: 1,
                            fontSize: 16),
                      ),
                      Text(
                        "\$316",
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            letterSpacing: 1,
                            fontSize: 16),
                      )
                    ],
                  ),
                  Divider()
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.red,
                  border: Border.all(width: 1.2)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.black),
                      onPressed: () {},
                      child: Text(
                        "Checkout",
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 2,
                            fontSize: 18),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
