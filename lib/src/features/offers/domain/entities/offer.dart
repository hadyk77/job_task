// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Offer extends Equatable {
  final int id;
  final String image;
  final double price;
  final double priceAfterDiscount;
  final DateTime date;
  const Offer({
    required this.id,
    required this.image,
    required this.price,
    required this.priceAfterDiscount,
    required this.date,
  });

  @override
  List<Object?> get props => [id, image, price, priceAfterDiscount, date];
}
