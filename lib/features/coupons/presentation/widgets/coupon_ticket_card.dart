import 'package:flutter/material.dart';

import '../../../../app/theme.dart';
import '../../domain/entities/coupon.dart';

const double _kStripeWidth = 68;
const double _kPerforationWidth = 10;
const double _kPerforationOffset = _kStripeWidth - 3.5;

class CouponTicketCard extends StatelessWidget {
  const CouponTicketCard({
    super.key,
    required this.coupon,
    this.onTap,
    this.onApplyPressed,
  });

  final Coupon coupon;
  final VoidCallback? onTap;
  final VoidCallback? onApplyPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: IntrinsicHeight(
          child: Stack(
            children: [
              Row(
                children: [
                  _PriceStripe(price: coupon.priceDisplay),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 14,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                coupon.name,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF424242),
                                  letterSpacing: -0.3,
                                ),
                              ),
                              GestureDetector(
                                onTap: onApplyPressed,
                                child: Row(
                                  children: [
                                    Transform(
                                      alignment: Alignment.center,
                                      transform: Matrix4.identity()
                                        ..scale(-1.0, 1.0),
                                      child: const Icon(
                                        Icons.local_offer_outlined,
                                        color: AppColors.apply,
                                        size: 22,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      'Apply',
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: AppColors.apply,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: -0.3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            coupon.description,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xFF757575),
                              height: 1.5,
                              letterSpacing: -0.2,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Container(height: 1, color: const Color(0xFFE0E0E0)),
                          const SizedBox(height: 12),
                          Text(
                            coupon.detailLabel,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xFF7D817D),
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: _kPerforationOffset,
                top: 0,
                bottom: 0,
                child: SizedBox(
                  width: _kPerforationWidth,
                  child: CustomPaint(
                    painter: const _PerforationPainter(
                      color: AppColors.apply,
                      background: AppColors.couponSurface,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PriceStripe extends StatelessWidget {
  const _PriceStripe({required this.price});

  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _kStripeWidth,
      color: AppColors.couponPrimary,
      alignment: Alignment.center,
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          price,
          style: const TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            letterSpacing: 4,
          ),
        ),
      ),
    );
  }
}

class _PerforationPainter extends CustomPainter {
  const _PerforationPainter({required this.color, required this.background});

  final Color color;
  final Color background;

  @override
  void paint(Canvas canvas, Size size) {
    final bgPaint = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.fill;
    canvas.drawRect(Offset.zero & size, bgPaint);

    final paint = Paint()
      ..color = color
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.square;

    const dashHeight = 10.0;
    const dashSpace = dashHeight / 1.2;
    double startY = 0;

    while (startY < size.height) {
      var endY = startY + dashHeight;
      if (endY > size.height && (size.height - startY) < dashHeight / 2) {
        startY = size.height - dashHeight;
        endY = size.height;
      } else if (endY > size.height) {
        endY = size.height;
      }

      canvas.drawLine(
        Offset(size.width / 2, startY),
        Offset(size.width / 2, endY),
        paint,
      );
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
