import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/delivery_controller.dart';

class DeliveryView extends GetView<DeliveryController> {
  const DeliveryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        title: Text(
          'Choose Delivery',
          style:
              GoogleFonts.ubuntu(fontWeight: FontWeight.w600, letterSpacing: 1),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: controller.deliveryOptions.length,
              itemBuilder: (context, index) {
                return Obx(() {
                  return Container(
                    margin: EdgeInsets.all(10),
                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // color: Colors.red,
                        border: Border.all(width: 0.6)),
                    child: ListTile(
                      title: Row(
                        children: [
                          CircleAvatar(
                            // Add your image inside the CircleAvatar
                            backgroundImage: AssetImage(
                                controller.deliveryOptions[index].logoPath),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            // Expanded to push the text to the left and radio button to the right
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.deliveryOptions[index].name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Estimated arrival: ${controller.deliveryOptions[index].estimatedArrival}',
                                ),
                              ],
                            ),
                          ),
                          Radio<int>(
                            value: index,
                            groupValue: controller.selectedOptionIndex.value,
                            onChanged: (value) {
                              controller.selectOption(index);
                            },
                          ),
                        ],
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 52.0),
                        // Add padding to align with text
                        child: Text(
                            '\$${controller.deliveryOptions[index].price.toStringAsFixed(2)}'),
                      ),
                      onTap: () {
                        controller.selectOption(index);
                      },
                    ),
                  );
                });
              },
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
          ),
        ],
      ),
    );
  }
}
