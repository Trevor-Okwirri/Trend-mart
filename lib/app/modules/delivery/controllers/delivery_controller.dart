import 'package:get/get.dart';

class DeliveryController extends GetxController {
  //TODO: Implement DeliveryController
  var selectedOptionIndex = 0.obs;
  final List<DeliveryOption> deliveryOptions = [
    DeliveryOption(
      name: 'TNT Express',
      estimatedArrival: '24-25 Dec, 2024',
      price: 7.00,
      logoPath: 'assets/logos/tnt.png', // Update with the correct path
    ),
    DeliveryOption(
      name: 'FedEx Express',
      estimatedArrival: '24-25 Dec, 2024',
      price: 6.00,
      logoPath: 'assets/logos/fedex.png', // Update with the correct path
    ),
    DeliveryOption(
      name: 'Aramex',
      estimatedArrival: '24-25 Dec, 2024',
      price: 8.00,
      logoPath: 'assets/logos/aramex.png', // Update with the correct path
    ),
    DeliveryOption(
      name: 'UPS (United Parcel Service)',
      estimatedArrival: '24-25 Dec, 2024',
      price: 12.00,
      logoPath: 'assets/logos/ups.png', // Update with the correct path
    ),
    DeliveryOption(
      name: 'Estes Express Lines',
      estimatedArrival: '24-25 Dec, 2024',
      price: 14.00,
      logoPath: 'assets/logos/estes.png', // Update with the correct path
    ),
  ];
  void selectOption(int index) {
    selectedOptionIndex.value = index;
  }
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}class DeliveryOption {
  final String name;
  final String estimatedArrival;
  final double price;
  final String logoPath; // Add the path to the logo image

  DeliveryOption({
    required this.name,
    required this.estimatedArrival,
    required this.price,
    required this.logoPath,
  });
}