import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product_model.dart';
import 'package:flutter_application_1/models/star_display.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductWidget extends StatefulWidget {
  Function? function;
  ProductModel productModel;
  ProductWidget(this.productModel, [this.function]);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            height: 70.h,
            width: 70.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(widget.productModel.image ?? ''),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              widget.productModel.name ?? '',
              maxLines: 1,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          StarDisplay(widget.productModel.rating!),
          const SizedBox(
            width: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('\$'),
              Text(widget.productModel.price.toString()),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                  onTap: () {
                    widget.productModel.isChecked =
                        !widget.productModel.isChecked;
                    setState(() {});
                  },
                  child: const Icon(
                    Icons.add_shopping_cart_outlined,
                    size: 30,
                  )),
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
