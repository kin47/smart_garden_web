import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/base/bloc/base_bloc.dart';
import 'package:smart_garden/base/bloc/base_bloc_state.dart';
import 'package:smart_garden/base/bloc/bloc_status.dart';

part 'kit_management_event.dart';
part 'kit_management_state.dart';
part 'kit_management_bloc.freezed.dart';
part 'kit_management_bloc.g.dart';

@injectable
class KitManagementBloc extends BaseBloc<KitManagementEvent, KitManagementState> {
  KitManagementBloc() : super(KitManagementState.init()) {
    on<KitManagementEvent>((event, emit) {

    });
  }
}
