class Coupon {
  const Coupon({
    required this.name,
    required this.description,
    required this.priceDisplay,
    this.detailLabel = 'Read more',
  });

  final String name;
  final String description;
  final String priceDisplay;
  final String detailLabel;
}
