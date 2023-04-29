import 'package:flutter/material.dart';
import 'package:nft_tuto/components/nft_card.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NftCard(
        imagePath: 'lib/img/bird.jpg',
      ),
    );
  }
}
