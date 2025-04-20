import 'package:ecommerce/app/app_colors.dart';
import 'package:ecommerce/core/extensions/localization_extension.dart';
import 'package:ecommerce/features/products/ui/widgets/color_picker.dart';
import 'package:ecommerce/features/products/ui/widgets/increment_decrement_counter_widget.dart';
import 'package:ecommerce/features/products/ui/widgets/product_image_carousel_slider.dart';
import 'package:ecommerce/features/products/ui/widgets/size_picker.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  static const String name = '/product-details';

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localization.productDetails)),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductImageCarouselSlider(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nike 320 2025 new edition',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                          Text('4.2'),
                                        ],
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text('Reviews'),
                                      ),
                                      Card(
                                        color: AppColors.themeColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Icon(
                                            Icons.favorite_border,
                                            size: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            IncrementDecrementCounterWidget(
                              onChange: (int value) {
                                print(value);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        ColorPicker(
                          colors: ['Red', 'White', 'Black', 'Pink'],
                          onChange: (selectedColor) {
                            print(selectedColor);
                          },
                        ),
                        const SizedBox(height: 16),
                        SizePicker(
                          sizes: ['S', 'M', 'L', 'XL'],
                          onChange: (selectedColor) {
                            print(selectedColor);
                          },
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '''Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator Reference site  about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator''',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          _buildPriceAndAddToCartSection(),
        ],
      ),
    );
  }

  Widget _buildPriceAndAddToCartSection() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.themeColor.withOpacity(0.1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Price'),
              Text(
                '\$1000',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.themeColor,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 140,
            child: ElevatedButton(onPressed: () {}, child: Text('Add to Card')),
          ),
        ],
      ),
    );
  }
}
