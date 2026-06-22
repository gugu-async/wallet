import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet/src/feactures/home/presentation/widgets/avatar_w.dart';

class TransactionW extends StatelessWidget {
  final String? icon;
  final String title;
  final String subtitle;
  final double amount;
  final Color? colorAmount;
  final String? image;
  const TransactionW({
    super.key,
    this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
    this.image,
    this.colorAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(10),
      margin: .only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: .circular(15),
        color: Theme.of(context).canvasColor,
      ),
      child: Row(
        children: [
          if (icon == null && image != null) ...[
            AvatarW(image: image, size: 50),
          ] else ...[
            SizedBox(height: 50, width: 45, child: SvgPicture.asset(icon!)),
          ],
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium!.copyWith(fontWeight: .bold),
                  maxLines: 1,
                  overflow: .ellipsis,
                ),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.titleSmall,
                  maxLines: 1,
                  overflow: .ellipsis,
                ),
              ],
            ),
          ),
          Text(
            '\$$amount',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: .bold,
              color: colorAmount,
            ),
            maxLines: 1,
            overflow: .ellipsis,
          ),
        ],
      ),
    );
  }
}
