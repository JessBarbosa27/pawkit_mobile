import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pawkit/core/app_export.dart';
import 'package:pawkit/presentation/splash_screen/bloc/splash_bloc.dart';
import 'package:pawkit/presentation/splash_screen/models/splash_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutDevScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: AboutDevScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: appTheme.cyan300,
          resizeToAvoidBottomInset: false,
          body: _buildDevDetails(context)),
    );
  }

  Widget _buildDevDetails(BuildContext context) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgPawkitLogo,
          alignment: Alignment.center,
          height: 140.v,
          width: 115.h),
      SizedBox(height: 12.v),
      Text(
        "lbl_dev1_name".tr,
        style: CustomTextStyles.titleMediumOnPrimaryContainer,
      ),
      SizedBox(height: 12.v),
      GestureDetector(
        onTap: _launchGithubURL,
        child: Text(
          "dev1_git_url".tr,
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 60, 151),
            decoration: TextDecoration.underline,
          ),
        ),
      ),
      SizedBox(height: 12.v),
      GestureDetector(
        onTap: _launchLinkedInURL,
        child: Text(
          "dev1_linkedIn_url".tr,
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 60, 151),
            decoration: TextDecoration.underline,
          ),
        ),
      ),
      SizedBox(height: 12.v),
      Text(
        "lbl_dev1_phone".tr,
        style: CustomTextStyles.titleMediumOnPrimaryContainer,
      ),
      CustomImageView(
        margin: EdgeInsetsDirectional.all(20),
        imagePath: ImageConstant.jessResume,
        alignment: Alignment.center,
      )
    ]);
  }

  void _launchGithubURL() async {
    if (await canLaunchUrlString("dev1_git_url".tr)) {
      await launchUrlString("dev1_git_url".tr);
    } else {
      throw 'Could not launch : ' + "dev1_git_url".tr;
    }
  }

  void _launchLinkedInURL() async {
    if (await canLaunchUrl(Uri(path: "dev1_linkedIn_url".tr))) {
      await launchUrl(Uri(path: "dev1_linkedIn_url".tr));
    } else {
      throw 'Could not launch : ' + "dev1_linkedIn_url".tr;
    }
  }
}
