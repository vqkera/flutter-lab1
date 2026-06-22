import 'package:flutter/material.dart';
import '../models/sms_provider.dart';

class ProviderCard extends StatelessWidget {
  final SmsProvider provider;

  const ProviderCard({
    super.key,
    required this.provider,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: provider.selected ? Colors.green.shade50 : Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: provider.selected ? Colors.green : Colors.black12,
        ),
      ),
      child: Row(
        children: [
          Icon(
            provider.selected
                ? Icons.check_box
                : Icons.check_box_outline_blank,
            color: provider.selected ? Colors.green : Colors.grey,
          ),
          const SizedBox(width: 12),
          if (provider.favorite) ...[
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 22,
            ),
            const SizedBox(width: 8),
          ],
          Expanded(
            child: Text(
              provider.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            provider.price,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}