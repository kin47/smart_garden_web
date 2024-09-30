import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_garden/common/app_theme/app_colors.dart';
import 'package:smart_garden/common/app_theme/app_text_styles.dart';

class BaseSearchTextField extends StatefulWidget {
  const BaseSearchTextField({
    Key? key,
    this.focusNode,
    this.searchTextController,
    this.onSearch,
    this.onChanged,
    this.hintText,
  }) : super(key: key);

  final FocusNode? focusNode;
  final TextEditingController? searchTextController;
  final Function(String)? onSearch;
  final Function(String)? onChanged;
  final String? hintText;

  @override
  State<BaseSearchTextField> createState() => _BaseSearchTextFieldState();
}

class _BaseSearchTextFieldState extends State<BaseSearchTextField> {
  late TextEditingController _searchTextController;
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = widget.focusNode ?? FocusNode();
    _searchTextController =
        widget.searchTextController ?? TextEditingController();
    _searchTextController.addListener(() {
      if (!mounted) return;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      controller: _searchTextController,
      style: AppTextStyles.s20w400.copyWith(
        color: AppColors.black,
      ),
      cursorHeight: 20,
      maxLines: 1,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        isDense: true,
        fillColor: AppColors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.primary200,
            width: 1.w,
          ),
        ),
        filled: true,
        hintStyle: AppTextStyles.s20w400.copyWith(
          color: AppColors.gray500,
        ),
        prefixIconConstraints: const BoxConstraints(
          minWidth: 40,
          maxWidth: 52,
        ),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(
            left: 12,
            right: 12,
          ),
          child: Icon(
            Icons.search,
            size: 24,
          ),
        ),
        suffixIconConstraints: BoxConstraints(
          minWidth: 30.w,
          maxWidth: 30.w,
        ),
        suffixIcon: _searchTextController.text.isNotEmpty
            ? Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                  onTap: () {
                    //clear text when tap icon clear
                    _searchTextController.text = '';
                    widget.onChanged?.call(_searchTextController.text.trim());
                  },
                  child: const Icon(Icons.close),
                ),
            )
            : const SizedBox(),
        hintText: widget.hintText ?? 'hint_input_search'.tr(),
      ),
      onChanged: (value) {
        widget.onChanged?.call(value.trim());
      },
      onSubmitted: (value) {
        widget.onSearch?.call(value.trim());
        _searchTextController.text = value.trim();
      },
    );
  }
}
