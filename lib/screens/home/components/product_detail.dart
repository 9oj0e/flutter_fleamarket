import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/product.dart';
import '../../../theme.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({required this.product});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // 부모 위젯의 너비만큼 확장
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.title, style: textTheme().bodyLarge),
          const SizedBox(height: 4.0),
          Text('${product.address} • ${product.publishedAt}'),
          const SizedBox(height: 4.0),
          Text(
            '${numberFormat(product.price)}원',
            style: textTheme().displayMedium,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                // 데이터 상태에 따라 위젯을 감추거나 보여줄 때 사용
                visible: product.commentsCount > 0,
                child: _buildIcons(
                  product.commentsCount,
                  CupertinoIcons.chat_bubble_2,
                ),
              ),
              const SizedBox(width: 8.0),
              Visibility(
                visible: product.heartCount > 0,
                child: _buildIcons(
                  product.heartCount,
                  CupertinoIcons.heart,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  String numberFormat(String price) { // intl 라이브러리
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(price));
  }

  Widget _buildIcons(int count, IconData iconData) {
    return Row( // 반복적인 작업 메서드화
      children: [
        Icon(iconData, size: 14.0),
        const SizedBox(width: 4.0),
        Text('$count'),
      ],
    );
  }
}
