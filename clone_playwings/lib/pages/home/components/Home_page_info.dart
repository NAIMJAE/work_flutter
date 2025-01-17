import 'package:clone_playwings/theme.dart';
import 'package:flutter/material.dart';

class HomePageInfo extends StatelessWidget {
  const HomePageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Wrap(
        spacing: 12,
        children: [
          _buildInfoCard(displayWidth),
          _buildInfoCard(displayWidth),
          _buildInfoCard(displayWidth),
          _buildInfoCard(displayWidth),
        ],
      ),
    );
  }

  Widget _buildInfoCard(displayWidth) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: displayWidth / 2 - 22,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/images/clone4.jpg', fit: BoxFit.cover),
          ),
          const SizedBox(height: 8),
          Text(
            '자가격리 없는 해외 여행지 #유럽',
            style: ctBodySmallBold(),
            softWrap: true,
            overflow: TextOverflow.visible,
          ),
        ],
      ),
    );
  }
}
