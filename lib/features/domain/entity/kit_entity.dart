import 'package:smart_garden/features/data/model/kit_model/kit_model.dart';

class KitEntity {
  final int id;
  final String name;
  final String password;
  final bool connected;

  KitEntity({
    required this.id,
    required this.name,
    required this.password,
    required this.connected,
  });

  factory KitEntity.fromModel(KitModel model) {
    return KitEntity(
      id: model.id ?? 0,
      name: model.name ?? '',
      password: model.password ?? '',
      connected: model.connected ?? false,
    );
  }
}
