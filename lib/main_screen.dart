import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:tut_egypt/core/utils/assets.dart';
import 'package:tut_egypt/core/utils/colors.dart';
import 'package:tut_egypt/core/utils/styles.dart';
import 'package:tut_egypt/features/home/presentation/screen/home_view.dart';

PersistentTabController _controller = PersistentTabController();

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(),
      controller: _controller,
      navBarStyle: NavBarStyle.style9,
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeView(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        Assets.imagesHome,
        color: AppColors.primaryColor,
      ),
      inactiveIcon: SvgPicture.asset(
        Assets.imagesHome,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        Assets.imagesSearch,
        color: AppColors.primaryColor,
      ),
      inactiveIcon: SvgPicture.asset(Assets.imagesSearch),
    ),
    PersistentBottomNavBarItem(
      icon: Stack(
        clipBehavior: Clip.none,
        children: [
          SvgPicture.asset(
            Assets.imagesCart,
            color: AppColors.primaryColor,
          ),
          Positioned(
            top: -3,
            right: -3,
            child: CircleAvatar(
              backgroundColor: AppColors.socendryColor,
              radius: 7,
              child: Center(
                child: Text(
                  "2",
                  style: Styles.poppins40010,
                ),
              ),
            ),
          )
        ],
      ),
      inactiveIcon: Stack(
        clipBehavior: Clip.none,
        children: [
          SvgPicture.asset(Assets.imagesCart),
          Positioned(
            top: -3,
            right: -3,
            child: CircleAvatar(
              backgroundColor: AppColors.socendryColor,
              radius: 7,
              child: Center(
                child: Text(
                  "2",
                  style: Styles.poppins40010,
                ),
              ),
            ),
          )
        ],
      ),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        Assets.imagesOffer,
        color: AppColors.primaryColor,
      ),
      inactiveIcon: SvgPicture.asset(Assets.imagesOffer),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        Assets.imagesAccount,
        color: AppColors.primaryColor,
      ),
      inactiveIcon: SvgPicture.asset(Assets.imagesAccount),
    ),
  ];
}
