import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_garden/common/app_theme/app_colors.dart';

class TablePaginatorBar extends StatelessWidget {
  final int totalPage;
  final int currentPage;
  final void Function(int) onTapPage;
  final VoidCallback? onNext;
  final VoidCallback? onPrev;
  final VoidCallback? onMoveLastPage;
  final VoidCallback? onMoveFirstPage;

  const TablePaginatorBar({
    this.onNext,
    this.onPrev,
    this.onMoveFirstPage,
    this.onMoveLastPage,
    required this.onTapPage,
    this.totalPage = 1,
    this.currentPage = 1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [];
    if (totalPage <= 3) {
      for (int page = 1; page <= totalPage; page++) {
        pages.add(
          _Button(
            title: '$page',
            selected: page == currentPage,
            onTap: page == currentPage
                ? null
                : () {
                    onTapPage(page);
                  },
          ),
        );
        pages.add(SizedBox(width: 4.w));
      }
      pages.removeLast();
    } else {
      if (currentPage == 1) {
        pages.addAll([
          _Button(
            title: '$currentPage',
            selected: true,
          ),
          SizedBox(width: 4.w),
          _Button(
            title: '${currentPage + 1}',
            onTap: () {
              onTapPage(currentPage + 1);
            },
          ),
          SizedBox(width: 4.w),
          _Button(
            title: '${currentPage + 2}',
            onTap: () {
              onTapPage(currentPage + 2);
            },
          ),
          SizedBox(width: 4.w),
          const _Button(title: '...'),
        ]);
      } else if (currentPage == totalPage) {
        pages.addAll([
          const _Button(title: '...'),
          SizedBox(width: 4.w),
          _Button(
            title: '${currentPage - 2}',
            onTap: () {
              onTapPage(currentPage - 2);
            },
          ),
          SizedBox(width: 4.w),
          _Button(
            title: '${currentPage - 1}',
            onTap: () {
              onTapPage(currentPage - 1);
            },
          ),
          SizedBox(width: 4.w),
          _Button(
            title: '$currentPage',
            selected: true,
          ),
        ]);
      } else {
        pages.addAll([
          _Button(
            title: '${currentPage - 1}',
            onTap: () {
              onTapPage(currentPage - 1);
            },
          ),
          SizedBox(width: 4.w),
          _Button(
            title: '$currentPage',
            selected: true,
          ),
          SizedBox(width: 4.w),
          _Button(
            title: '${currentPage + 1}',
            onTap: () {
              onTapPage(currentPage + 1);
            },
          ),
        ]);

        if (currentPage + 2 <= totalPage) {
          pages.addAll([
            SizedBox(width: 4.w),
            const _Button(title: '...'),
          ]);
        }

        if (currentPage - 2 > 0) {
          pages.insertAll(0, [
            const _Button(title: '...'),
            SizedBox(width: 4.w),
          ]);
        }
      }
    }

    return SizedBox(
      height: 36,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (currentPage != 1)
            onMoveFirstPage != null
                ? _ControlButton(
                    onTap: onMoveFirstPage,
                    child: const Icon(
                      Icons.arrow_back_sharp,
                      size: 16.0,
                    ),
                  )
                : const SizedBox.shrink(),
          const SizedBox(width: 6.0),
          if (currentPage != 1)
            onPrev != null
                ? _ControlButton(
                    onTap: onPrev,
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 16.0,
                    ),
                  )
                : const SizedBox.shrink(),
          const SizedBox(width: 6.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: pages,
          ),
          const SizedBox(width: 6.0),
          if (currentPage != totalPage)
            onNext != null
                ? _ControlButton(
                    onTap: onNext,
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16.0,
                    ),
                  )
                : const SizedBox.shrink(),
          const SizedBox(width: 6.0),
          if (currentPage != totalPage)
            onMoveLastPage != null
                ? _ControlButton(
                    onTap: onMoveLastPage,
                    child: const Icon(
                      Icons.arrow_forward_sharp,
                      size: 16.0,
                    ),
                  )
                : const SizedBox.shrink(),
        ],
      ),
    );
  }
}

class _ControlButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget child;

  const _ControlButton({
    required this.child,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 36.0,
          width: 36.0,
          padding: const EdgeInsets.all(8.0),
          child: child,
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final bool selected;

  const _Button({
    required this.title,
    this.selected = false,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: onTap,
        child: Container(
          width: 36.0,
          height: 36.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: selected ? AppColors.primary700 : null,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: selected ? FontWeight.bold : FontWeight.w400,
                color: selected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
