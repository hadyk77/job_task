import '../../domain/entities/address.dart';

class AddressModel extends Address {
  const AddressModel({
    required super.id,
    required super.name,
    required super.description,
  });

  factory AddressModel.fromJson(Map<String, dynamic> map) {
    return AddressModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
    );
  }
}
