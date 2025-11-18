import 'package:flutter/material.dart';

import '../../../../app/theme.dart';
import '../../domain/entities/coupon.dart';
import '../widgets/widgets.dart';

void _showNoNavigationSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: const Text(
        'No page to navigate',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: AppColors.critical,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      duration: const Duration(seconds: 2),
    ),
  );
}

class CouponDashboardPage extends StatelessWidget {
  const CouponDashboardPage({super.key});

  static const _featuredCoupons = [
    Coupon(
      name: 'LONGSTAY',
      description:
          '15% off when you book for 5 days or more and 20% off when you book for 30 days or more.',
      priceDisplay: '₹6,900',
    ),
    Coupon(
      name: 'LONGSTAY',
      description:
          '15% off when you book for 5 days or more and 20% off when you book for 30 days or more.',
      priceDisplay: '₹6,900',
    ),
  ];

  static const _paymentOffers = [
    Coupon(
      name: 'BANKWEEK',
      description: '10% instant discount on partner cards + wallet boost.',
      priceDisplay: '₹6,900',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffold,
      bottomNavigationBar: const _BookingSummary(),
      body: SafeArea(
        child: Column(
          children: [
            Material(
              elevation: 4,
              shadowColor: Colors.black.withOpacity(0.28),
              color: AppColors.scaffold,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    child: SpaceZAppBar(
                      onMenuPressed: () => _showNoNavigationSnackBar(context),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    child: _CouponsHeader(
                      onBackPressed: () => _showNoNavigationSnackBar(context),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 12,
                  bottom: 20,
                ),
                children: [
                  ..._featuredCoupons.map(
                    (coupon) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CouponTicketCard(
                        coupon: coupon,
                        onTap: () => _showNoNavigationSnackBar(context),
                        onApplyPressed: () =>
                            _showNoNavigationSnackBar(context),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Payment offers:',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 12),
                  ..._paymentOffers.map(
                    (coupon) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CouponTicketCard(
                        coupon: coupon,
                        onTap: () => _showNoNavigationSnackBar(context),
                        onApplyPressed: () =>
                            _showNoNavigationSnackBar(context),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CouponsHeader extends StatelessWidget {
  const _CouponsHeader({required this.onBackPressed});

  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: onBackPressed,
          icon: const Icon(Icons.arrow_back, size: 22),
        ),
        const SizedBox(width: 12),
        Text(
          'Coupons',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xFF424242),
            letterSpacing: -0.3,
          ),
        ),
      ],
    );
  }
}

class _BookingSummary extends StatelessWidget {
  const _BookingSummary();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          color: AppColors.success,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Center(
            child: Text(
              'Book now & Unlock exclusive rewards!',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          '₹19,500',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: AppColors.critical,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '₹16,000',
                          style: Theme.of(
                            context,
                          ).textTheme.titleLarge?.copyWith(fontSize: 24),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'for 2 nights',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          '24 Apr - 26 Apr | 8 guests',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: AppColors.header),
                        ),
                        const SizedBox(width: 6),
                        GestureDetector(
                          onTap: () => _showNoNavigationSnackBar(context),
                          child: Icon(
                            Icons.edit_outlined,
                            color: AppColors.header,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () => _showNoNavigationSnackBar(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.couponPrimary,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  minimumSize: const Size(0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text(
                  'Reserve',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
