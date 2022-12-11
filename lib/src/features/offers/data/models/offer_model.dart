import '../../domain/entities/offer.dart';

class OfferModel extends Offer {
  const OfferModel({
    required super.id,
    required super.image,
    required super.price,
    required super.priceAfterDiscount,
    required super.date,
  });

  factory OfferModel.fromJson(Map<String, dynamic> map) {
    return OfferModel(
      id: map['id'],
      image: map['image'],
      price: (map['price'] as num).toDouble(),
      priceAfterDiscount: (map['price_after_discount'] as num).toDouble(),
      date: DateTime.parse(map['date']),
    );
  }
}
