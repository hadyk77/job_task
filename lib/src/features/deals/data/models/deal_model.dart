import '../../domain/entities/deal.dart';

class DealModel extends Deal {
  const DealModel({
    required super.id,
    required super.name,
    required super.peices,
    required super.price,
    required super.priceAfterDiscount,
    required super.minuteAway,
    required super.color,
    super.isLiked = false,
  });

  factory DealModel.fromJson(Map<String, dynamic> map) {
    return DealModel(
      id: map['id'],
      name: map['name'],
      peices: map['pieces'],
      price: (map['price'] as num).toDouble(),
      priceAfterDiscount: (map['price_after_discount'] as num).toDouble(),
      minuteAway: map['minutes_away'],
      color: map['color'],
    );
  }
}
