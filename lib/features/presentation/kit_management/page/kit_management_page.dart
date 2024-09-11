import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:smart_garden/base/base_widget.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/features/presentation/kit_management/bloc/kit_management_bloc.dart';

@RoutePage()
class KitManagementPage extends StatefulWidget {
  const KitManagementPage({super.key});

  @override
  State<KitManagementPage> createState() => _KitManagementPageState();
}

class _KitManagementPageState extends BaseState<KitManagementPage,
    KitManagementEvent, KitManagementState, KitManagementBloc> {
  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      body: Container(),
    );
  }
}
