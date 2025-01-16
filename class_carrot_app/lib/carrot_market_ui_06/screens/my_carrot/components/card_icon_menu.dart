import 'package:class_carrot_app/carrot_market_ui_01/theme.dart';
import 'package:class_carrot_app/carrot_market_ui_06/models/icon_menu.dart';
import 'package:flutter/material.dart';

class CardIconMenu extends StatelessWidget {
  final List<IconMenu> iconMenuList;
  const CardIconMenu({required this.iconMenuList, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: List.generate(
            iconMenuList.length,
            (index) => _buildIconMenuItem(iconMenuList[index]),
          ),
        ),
      ),
    );
  }

  Widget _buildIconMenuItem(item) {
    return InkWell(
      onTap: () {
        print('${item.title} CLICK!');
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(item.iconData, size: 16),
            const SizedBox(width: 20),
            Text(
              item.title,
              style: textTheme().titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
