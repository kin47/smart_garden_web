import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_garden/common/constants/auth_constants.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/common/local_data/shared_pref.dart';
import 'package:smart_garden/common/widgets/cache_image_widget.dart';
import 'package:smart_garden/di/di_setup.dart';
import 'package:smart_garden/gen/assets.gen.dart';

class BaseHeaderInformation extends StatefulWidget {
  const BaseHeaderInformation({super.key});

  @override
  State<BaseHeaderInformation> createState() => _BaseHeaderInformationState();
}

class _BaseHeaderInformationState extends State<BaseHeaderInformation> {
  String username = '';
  String? avatar = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        final jwt = await getIt<LocalStorage>().get(AuthConstants.token);
        final userInformation = JwtDecoder.tryDecode(jwt);
        if (userInformation != null) {
          setState(() {
            username = userInformation.name ?? '';
            avatar = userInformation.avatar;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        avatar != null && avatar != ''
            ? CachedImageWidget(
                url: avatar!,
                width: 40,
                height: 40,
                radius: 20,
              )
            : Assets.images.avatarDefault.image(
                width: 40,
              ),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              username,
              style: AppTextStyles.s16w600,
            ),
            Text(
              'Admin',
              style: AppTextStyles.s14w400.copyWith(
                color: AppColors.gray500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
