import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:rating_summary/rating_summary.dart';
import 'package:readmore/readmore.dart';
import '../controllers/product_page_controller.dart';

class ProductPageView extends GetView<ProductPageController> {
  const ProductPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BottomButtonsBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: const Text('Product Details'),
        titleTextStyle: GoogleFonts.ubuntu(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
            letterSpacing: 2),
        centerTitle: true,
        actions: [
          IconButton(
            padding: EdgeInsets.all(10),
            onPressed: () {},
            icon: Icon(Bootstrap.heart),
            iconSize: 26,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImagesSlider(),
              ProductImagesSection(),
              ProductTitleSection(),
              Divider(),
              SizesSection(),
              SizedBox(
                height: 10,
              ),
              DescriptionSection(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Product rating',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 2),
              ),
              SizedBox(
                height: 15,
              ),
              ProductRatingSection(),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Inspired by your recent views",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Product Title section
class ProductTitleSection extends StatelessWidget {
  const ProductTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Pullover Hoodie',
            style: GoogleFonts.ubuntu(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
                letterSpacing: 2),
          ),
          Text(
            '\$720',
            style: GoogleFonts.ubuntu(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
                letterSpacing: 2),
          ),
        ],
      ),
    );
  }
}

// Product Rating Section
class ProductRatingSection extends StatelessWidget {
  const ProductRatingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.toNamed(Routes.RATINGS);
      },
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(8),
          child: RatingSummary(
            counter: 80,
            average: 4.846,
            showAverage: true,
            counterFiveStars: 50,
            counterFourStars: 10,
            counterThreeStars: 3,
            counterTwoStars: 10,
            counterOneStars: 7,
          )),
    );
  }
}

// Product Bottom Bar Section
class BottomButtonsBar extends StatelessWidget {
  const BottomButtonsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.grey[300],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
              child:
              Center(child:Icon(Bootstrap.cart)),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 5,
          child: SizedBox(
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Buy now"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff0166ED),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2)),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

// Product Image Slider
class ProductImagesSlider extends StatelessWidget {
  const ProductImagesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: CarouselSlider(
          items: [
            Image.network(
              "https://ke.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/86/0278432/1.jpg?0044",
              // fit: BoxFit.fill,
              // width: Get.width,
            ),
            Image.network(
              "https://ke.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/73/946934/1.jpg?4410",
              // fit: BoxFit.fill,
              // width: Get.width,
            ),
            Image.network(
              "https://ke.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/14/171952/1.jpg?4859",
              // fit: BoxFit.,
              // width: Get.width,
            ),
            Image.network(
              "https://ke.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/97/4268432/1.jpg?9307",
              // fit: BoxFit.fill,
              // width: Get.width,
            ),
          ],
          options: CarouselOptions(
              autoPlay: false, viewportFraction: 1, height: 400)),
    );
  }
}


// Product Description Section
class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
              letterSpacing: 2),
        ),
        SizedBox(
          height: 10,
        ),
        ReadMoreText(
          """Unisex pullover sweatshirt with hood from the "4F x Drift Masters" collection. It will be ideal for both casual and sporty everyday styling.

It has a regular cut that fits comfortably to the figure. This unisex sweatshirt is made from 80% cotton making it soft, durable and comfortable to wear. Thanks to the addition of polyester (20%), the fabric retains its shape and resists wear over many seasons.

The combed interior provides extra warmth, making this a great choice for colder days. Neckline with integrated hood. Elasticated cuffs with ribbing. The chest features the Drift Masters logo and specially designed labels. Open kangaroo pocket on the front. Pullover type. Wide ribbed hem.""",
          style: GoogleFonts.ubuntu(fontSize: 17),
          trimMode: TrimMode.Line,
          trimLines: 6,
          colorClickableText: Colors.blue,
          trimCollapsedText: 'Read more',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}


// Product Size Section
class SizesSection extends StatelessWidget {
  const SizesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select size',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
              letterSpacing: 2),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.all(8),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 1),
                padding: EdgeInsets.all(2),
                width: 60,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                child: Center(
                    child: Text(
                  "S",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                      letterSpacing: 2),
                )),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.all(2),
                width: 60,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                child: Center(
                    child: Text(
                  "M",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                      letterSpacing: 2),
                )),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.all(2),
                width: 60,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                child: Center(
                    child: Text(
                  "L",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                      letterSpacing: 2),
                )),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.all(2),
                width: 60,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                child: Center(
                    child: Text(
                  "XL",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                      letterSpacing: 2),
                )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Product Images Section
class ProductImagesSection extends StatelessWidget {
  const ProductImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(2),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 2, color: Colors.blue),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://ke.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/97/4268432/1.jpg?9307"))),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(2),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(15),
                // border: Border.all(width: 2, color: Colors.blue),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://ke.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/73/946934/1.jpg?4410"))),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(2),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(15),
                // border: Border.all(width: 2, color: Colors.blue),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://ke.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/14/171952/1.jpg?4859"))),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(2),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(15),
                // border: Border.all(width: 2, color: Colors.blue),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://ke.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/72/857033/1.jpg?2586"))),
          ),
        ],
      ),
    );
  }
}
