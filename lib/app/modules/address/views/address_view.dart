import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/address_controller.dart';

class AddressView extends GetView<AddressController> {
  const AddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Container(
              padding: EdgeInsets.only(left: 10),
              child: Center(child: Icon(Icons.arrow_back_ios)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1),
              ),
            ),
            onPressed: () {},
          ),
          title: Text('Choose Address',
              style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.bold, letterSpacing: 2)),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Jenny Wilson",
                                  style: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                      fontSize: 18),
                                ),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  child: Text(
                                    "Home",
                                    style: GoogleFonts.ubuntu(
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                        fontSize: 12),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Colors.grey),
                                ),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  child: Text(
                                    "Default Address",
                                    style: GoogleFonts.ubuntu(
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                        fontSize: 12),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Colors.grey),
                                )
                              ],
                            ),
                            trailing: MenuAnchor(

                              menuChildren: <Widget>[
                                MenuItemButton(
                                  onPressed: () {},
                                  leadingIcon: Icon(Icons.edit_outlined),
                                  child: const Text('Edit'),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: DottedLine(
                                      direction: Axis.horizontal,
                                      alignment: WrapAlignment.center,
                                      lineLength: 90,
                                      lineThickness: 1.0,
                                      dashLength: 6.0,
                                      dashColor: Colors.black,
                                      dashRadius: 0.0,
                                      dashGapLength: 6.0,
                                      dashGapColor: Colors.transparent,
                                      dashGapRadius: 0.0,
                                    ),
                                  ),
                                ),
                                MenuItemButton(
                                  onPressed: () {},
                                  leadingIcon: Icon(CupertinoIcons.delete),
                                  child: const Text('Remove'),
                                ),
                              ],
                              builder: (_, MenuController controller,
                                  Widget? child) {
                                return IconButton(
                                  onPressed: () {
                                    if (controller.isOpen) {
                                      controller.close();
                                    } else {
                                      controller.open();
                                    }
                                  },
                                  icon: const Icon(Icons.more_vert),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DottedLine(
                              direction: Axis.horizontal,
                              alignment: WrapAlignment.center,
                              lineLength: double.infinity,
                              lineThickness: 1.0,
                              dashLength: 6.0,
                              dashColor: Colors.black,
                              dashRadius: 0.0,
                              dashGapLength: 6.0,
                              dashGapColor: Colors.transparent,
                              dashGapRadius: 0.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(CupertinoIcons.map),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("House 475 Ngumo, Mbagathi way, Nairobi"),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "+254 712356789",
                              style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1,
                                  fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 0.8,
                            color: Colors.brown,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Jenny Wilson",
                                  style: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                      fontSize: 18),
                                ),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  child: Text(
                                    "Home",
                                    style: GoogleFonts.ubuntu(
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                        fontSize: 12),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Colors.grey),
                                ),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  child: Text(
                                    "Default Address",
                                    style: GoogleFonts.ubuntu(
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                        fontSize: 12),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Colors.grey),
                                )
                              ],
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.more_vert_outlined),
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DottedLine(
                              direction: Axis.horizontal,
                              alignment: WrapAlignment.center,
                              lineLength: double.infinity,
                              lineThickness: 1.0,
                              dashLength: 6.0,
                              dashColor: Colors.black,
                              dashRadius: 0.0,
                              dashGapLength: 6.0,
                              dashGapColor: Colors.transparent,
                              dashGapRadius: 0.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(CupertinoIcons.map),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("House 475 Ngumo, Mbagathi way, Nairobi"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/img.png",
                              fit: BoxFit.fitWidth,
                              height: 50,
                              width: double.infinity,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "+254 712356789",
                              style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1,
                                  fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 0.8,
                            color: Colors.brown,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Jenny Wilson",
                                  style: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                      fontSize: 18),
                                ),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  child: Text(
                                    "Home",
                                    style: GoogleFonts.ubuntu(
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                        fontSize: 12),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Colors.grey),
                                ),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  child: Text(
                                    "Default Address",
                                    style: GoogleFonts.ubuntu(
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                        fontSize: 12),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Colors.grey),
                                )
                              ],
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.more_vert_outlined),
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DottedLine(
                              direction: Axis.horizontal,
                              alignment: WrapAlignment.center,
                              lineLength: double.infinity,
                              lineThickness: 1.0,
                              dashLength: 6.0,
                              dashColor: Colors.black,
                              dashRadius: 0.0,
                              dashGapLength: 6.0,
                              dashGapColor: Colors.transparent,
                              dashGapRadius: 0.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(CupertinoIcons.map),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("House 475 Ngumo, Mbagathi way, Nairobi"),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "+254 712356789",
                              style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1,
                                  fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 0.8,
                            color: Colors.brown,
                          )),
                    ),
                  ],
                ),
              ),
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
                        "Confirm",
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 2,
                            fontSize: 18),
                      ))),
            )
          ],
        ));
  }
}
