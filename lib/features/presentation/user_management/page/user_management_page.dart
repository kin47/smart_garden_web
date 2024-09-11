import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:smart_garden/base/base_widget.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/features/presentation/user_management/bloc/user_management_bloc.dart';

@RoutePage()
class UserManagementPage extends StatefulWidget {
  const UserManagementPage({super.key});

  @override
  State<UserManagementPage> createState() => _UserManagementPageState();
}

class _UserManagementPageState extends BaseState<UserManagementPage,
    UserManagementEvent, UserManagementState, UserManagementBloc> {
  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      body: Container(),
    );
  }
}
