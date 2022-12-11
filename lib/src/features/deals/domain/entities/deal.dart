// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../data/models/deal_model.dart';

class Deal extends Equatable {
  final int id;
  final String name;
  final int peices;
  final double price;
  final double priceAfterDiscount;

  final int minuteAway;
  final String color;
  final bool isLiked;
  const Deal({
    required this.id,
    required this.name,
    required this.peices,
    required this.price,
    required this.priceAfterDiscount,
    required this.minuteAway,
    required this.color,
    this.isLiked = false,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        peices,
        price,
        priceAfterDiscount,
        minuteAway,
        color,
        isLiked,
      ];

  DealModel copyWith({
    int? id,
    String? name,
    int? peices,
    double? price,
    double? priceAfterDiscount,
    int? minuteAway,
    String? color,
    bool? isLiked,
  }) {
    return DealModel(
      id: id ?? this.id,
      name: name ?? this.name,
      peices: peices ?? this.peices,
      price: price ?? this.price,
      priceAfterDiscount: priceAfterDiscount ?? this.priceAfterDiscount,
      minuteAway: minuteAway ?? this.minuteAway,
      color: color ?? this.color,
      isLiked: isLiked ?? this.isLiked,
    );
  }
}
