// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:job_task/src/features/deals/domain/entities/deal.dart';

class CartItem extends Equatable {
  final int quantity;
  final Deal deal;

  const CartItem({required this.quantity, required this.deal});
  double get totalPrice => quantity * deal.priceAfterDiscount;

  @override
  List<Object?> get props => [
        deal,
        quantity,
      ];

  CartItem copyWith({
    int? quantity,
    Deal? deal,
  }) {
    return CartItem(
      quantity: quantity ?? this.quantity,
      deal: deal ?? this.deal,
    );
  }
}
