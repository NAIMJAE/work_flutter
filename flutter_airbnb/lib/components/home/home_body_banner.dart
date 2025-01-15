import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Stack(
        children: [
          _buildBannerImage(),
          _buildBannerCaption(),
        ],
      ),
    );
  }

  Widget _buildBannerImage() {
    return Text('_buildBannerImage');
  }

  Widget _buildBannerCaption() {
    return Text('_buildBannerCaption');
  }
}
