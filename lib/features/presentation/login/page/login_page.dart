import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_garden/base/base_widget.dart';
import 'package:smart_garden/base/bloc/bloc_status.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/common/widgets/buttons/app_button.dart';
import 'package:smart_garden/common/widgets/textfields/app_text_form_field.dart';
import 'package:smart_garden/features/presentation/login/bloc/login_bloc.dart';
import 'package:smart_garden/gen/assets.gen.dart';
import 'package:smart_garden/routes/app_pages.gr.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState
    extends BaseState<LoginPage, LoginEvent, LoginState, LoginBloc> {
  final TextEditingController _accountIdController =
      TextEditingController(text: '');
  final TextEditingController _passwordController =
      TextEditingController(text: '');

  @override
  void listener(BuildContext context, LoginState state) {
    super.listener(context, state);
    switch (state.status) {
      case BaseStateStatus.success:
        context.router.replaceAll([
          const CoreRoute(),
        ]);
        break;
      case BaseStateStatus.failed:
        if (state.message == 'account_not_verified'.tr()) {
          DialogService.showActionDialog(
            context,
            description: state.message,
            leftButtonText: 'resend_email'.tr(),
            rightButtonText: 'cancel'.tr(),
            callBackAfterClose: true,
            onPressedLeftButton: () {
              bloc.add(const LoginEvent.resendEmail());
            },
          );
        } else {
          DialogService.showInformationDialog(
            context,
            title: 'error'.tr(),
            description: state.message ?? 'error_system'.tr(),
          );
        }
        break;
      case BaseStateStatus.showPopUp:
        DialogService.showInformationDialog(
          context,
          description: 'resend_email_success'.tr(),
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      hasBackgroundImage: true,
      backgroundImage: Assets.images.background.path,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 1.sw > 700 ? 0.3.sw : 0.2.sw,
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 24.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.1),
                  blurRadius: 16.w,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'login'.tr(),
                  style: AppTextStyles.s24w600,
                ),
                SizedBox(height: 24.h),
                _buildUsername(),
                SizedBox(height: 26.h),
                _buildPassword(),
                SizedBox(height: 12.h),
                _buildCheckBox(),
                SizedBox(height: 29.h),
                _loginButton(),
                SizedBox(height: 24.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: blocBuilder(
        (context, state) {
          return AppButton(
            borderRadius: 28.r,
            height: 56.h,
            onPressed: state.validInput ? _login : null,
            backgroundColor:
                state.validInput ? AppColors.primary700 : AppColors.disable,
            title: 'login'.tr(),
            textStyle: AppTextStyles.s16w600,
            textColor: state.validInput
                ? AppColors.white
                : AppColors.white.withOpacity(0.6),
            shadowColor: AppColors.black.withOpacity(0.8),
            elevation: 2.h,
          );
        },
        buildWhen: (previous, current) =>
            previous.validInput != current.validInput,
      ),
    );
  }

  Widget _buildUsername() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'email'.tr(),
            style: AppTextStyles.s16w600,
          ),
          SizedBox(height: 8.h),
          AppTextFormField(
            controller: _accountIdController,
            hintText: 'please_enter'.tr(),
            prefixIcon: SizedBox(width: 16.w),
            fillColor: AppColors.primary050,
            contentPadding: EdgeInsets.only(
              top: 16.h,
              bottom: 16.h,
              right: 16.w,
            ),
            onChanged: (value) {
              bloc.add(
                LoginEvent.onInputUsername(
                  username: value,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPassword() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: blocBuilder(
        (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'password'.tr(),
                style: AppTextStyles.s16w600,
              ),
              SizedBox(height: 8.h),
              AppTextFormField(
                controller: _passwordController,
                hintText: 'please_enter'.tr(),
                obscureText: !state.isPasswordVisible,
                obscuringCharacter: '*',
                prefixIcon: SizedBox(width: 16.w),
                fillColor: AppColors.primary050,
                contentPadding: EdgeInsets.only(
                  top: 16.h,
                  bottom: 16.h,
                  right: 16.w,
                ),
                onChanged: (value) {
                  bloc.add(
                    LoginEvent.onInputPassword(
                      password: value,
                    ),
                  );
                },
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegexConstants.password,
                  ),
                ],
              ),
            ],
          );
        },
        buildWhen: (previous, current) =>
            previous.isPasswordVisible != current.isPasswordVisible,
      ),
    );
  }

  Widget _buildCheckBox() {
    return GestureDetector(
      onTap: () {
        bloc.add(
          LoginEvent.onPasswordVisibilityChanged(
            isVisible: !bloc.state.isPasswordVisible,
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: blocBuilder(
          (context, state) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 22.w,
                  width: 22.w,
                  child: IconButton(
                    key: const Key('show_password_button'),
                    onPressed: () {
                      bloc.add(
                        LoginEvent.onPasswordVisibilityChanged(
                          isVisible: !bloc.state.isPasswordVisible,
                        ),
                      );
                    },
                    padding: EdgeInsets.zero,
                    icon: blocBuilder(
                      buildWhen: (p, c) =>
                          p.isPasswordVisible != c.isPasswordVisible,
                      (context, state) => SvgPicture.asset(
                        state.isPasswordVisible
                            ? Assets.svg.icon16CheckOn.path
                            : Assets.svg.icon16CheckOff.path,
                        height: 16.w,
                        width: 16.w,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Text(
                  'show_password'.tr(),
                  style: AppTextStyles.s14w400,
                ),
              ],
            );
          },
          buildWhen: (previous, current) =>
              previous.isPasswordVisible != current.isPasswordVisible,
        ),
      ),
    );
  }

  void _login() {
    bloc.add(const LoginEvent.login());
  }

  void _navigateToSignUp() {
    context.replaceRoute(const RegisterRoute());
  }
}
