import 'package:flutter/material.dart';

import '../features/coupons/presentation/pages/coupon_dashboard_page.dart';
import 'theme.dart';

class SpaceZApp extends StatelessWidget {
  const SpaceZApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpaceZ',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const CouponDashboardPage(),
    );
  }
}
