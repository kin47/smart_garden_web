import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_garden/common/app_theme/app_colors.dart';
import 'package:smart_garden/common/app_theme/app_text_styles.dart';
import 'package:smart_garden/common/widgets/buttons/app_button.dart';

class UserInformationDialog extends StatefulWidget {
  final String name;
  final String email;
  final String phoneNumber;
  final bool canPredictDisease;
  final bool canReceiveNotification;
  final bool canAutoControl;
  final Function(bool, bool, bool) onSave;

  const UserInformationDialog({
    super.key,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.canPredictDisease,
    required this.canReceiveNotification,
    required this.canAutoControl,
    required this.onSave,
  });

  @override
  State<UserInformationDialog> createState() => _UserInformationDialogState();
}

class _UserInformationDialogState extends State<UserInformationDialog> {
  late bool canPredictDisease;
  late bool canReceiveNotification;
  late bool canAutoControl;

  @override
  void initState() {
    super.initState();
    canPredictDisease = widget.canPredictDisease;
    canReceiveNotification = widget.canReceiveNotification;
    canAutoControl = widget.canAutoControl;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 1.sw > 700 ? 0.3.sw : 0.2.sw,
        vertical: 0.2.sh,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text(
                    'user_information'.tr(),
                    style: AppTextStyles.s28w700,
                  ),
                ),
                SizedBox(height: 32.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'name'.tr(),
                      style: AppTextStyles.s18w500,
                    ),
                    Text(
                      widget.name,
                      style: AppTextStyles.s18w500,
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'email'.tr(),
                      style: AppTextStyles.s18w500,
                    ),
                    Text(
                      widget.email,
                      style: AppTextStyles.s18w500,
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'phone_number'.tr(),
                      style: AppTextStyles.s18w500,
                    ),
                    Text(
                      widget.phoneNumber,
                      style: AppTextStyles.s18w500,
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'can_predict_disease'.tr(),
                      style: AppTextStyles.s18w500,
                    ),
                    CupertinoSwitch(
                      value: canPredictDisease,
                      onChanged: (value) {
                        setState(() {
                          canPredictDisease = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'can_receive_notification'.tr(),
                      style: AppTextStyles.s18w500,
                    ),
                    CupertinoSwitch(
                      value: canReceiveNotification,
                      onChanged: (value) {
                        setState(() {
                          canReceiveNotification = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'can_auto_control'.tr(),
                      style: AppTextStyles.s18w500,
                    ),
                    CupertinoSwitch(
                      value: canAutoControl,
                      onChanged: (value) {
                        setState(() {
                          canAutoControl = value;
                        });
                      },
                    ),
                  ],
                ),
                const Spacer(),
                AppButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    widget.onSave(canPredictDisease, canReceiveNotification, canAutoControl);
                  },
                  title: 'save'.tr(),
                  textStyle: AppTextStyles.s16w500.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 16.h,
            right: 16.w,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
