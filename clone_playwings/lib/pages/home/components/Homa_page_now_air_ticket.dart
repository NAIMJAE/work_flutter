import 'package:clone_playwings/theme.dart';
import 'package:flutter/material.dart';

class HomaPageNowAirTicket extends StatelessWidget {
  const HomaPageNowAirTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          SizedBox(
            height: 350,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildAirTicketBox(),
                _buildAirTicketBox(),
                _buildAirTicketBox(),
                _buildAirTicketBox(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.grey)),
            child: Text(
              '더 많은 항공 가격 알아보기',
              style: ctBodyMedium(mColor: Colors.black87),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAirTicketBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/clone4.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(125),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('일본', style: ctBodyMedium(mColor: Colors.white)),
                Text('도쿄', style: ctBodyXLarge(mColor: Colors.white)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text('2022.12.3 ~ 2022.12.8',
              style: ctBodySmallBold(mColor: Colors.grey)),
          Text('최저 1,971,411원', style: ctBodySmallBold(mColor: Colors.red)),
        ],
      ),
    );
  }
}
