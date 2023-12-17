import 'package:flutter/material.dart';
import 'package:pawkit/presentation/about_dev/about_dev_screen.dart';
import 'package:pawkit/presentation/splash_screen/splash_screen.dart';
import 'package:pawkit/presentation/login_screen/login_screen.dart';
import 'package:pawkit/presentation/signup_screen/signup_screen.dart';
import 'package:pawkit/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:pawkit/presentation/dr_list_screen/dr_list_screen.dart';
import 'package:pawkit/presentation/dr_details_screen/dr_details_screen.dart';
import 'package:pawkit/presentation/book_an_appointment_screen/book_an_appointment_screen.dart';
import 'package:pawkit/presentation/chat_screen/chat_screen.dart';
import 'package:pawkit/presentation/settigns_screen/settigns_screen.dart';
import 'package:pawkit/presentation/pharmacy_screen/pharmacy_screen.dart';
import 'package:pawkit/presentation/drug_details_screen/drug_details_screen.dart';
import 'package:pawkit/presentation/article_screen/article_screen.dart';
import 'package:pawkit/presentation/cart_screen/cart_screen.dart';
import 'package:pawkit/presentation/ambulance_screen/ambulance_screen.dart';
import 'package:pawkit/presentation/schedule_tab_container_screen/schedule_tab_container_screen.dart';
import 'package:pawkit/presentation/message_tab_container_screen/message_tab_container_screen.dart';
import 'package:pawkit/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String drListScreen = '/dr_list_screen';

  static const String drDetailsScreen = '/dr_details_screen';

  static const String bookAnAppointmentScreen = '/book_an_appointment_screen';

  static const String chatScreen = '/chat_screen';

  static const String settignsScreen = '/settigns_screen';

  static const String pharmacyScreen = '/pharmacy_screen';

  static const String drugDetailsScreen = '/drug_details_screen';

  static const String articleScreen = '/article_screen';

  static const String cartScreen = '/cart_screen';

  static const String ambulanceScreen = '/ambulance_screen';

  static const String schedulePage = '/schedule_page';

  static const String scheduleTabContainerScreen =
      '/schedule_tab_container_screen';

  static const String messagePage = '/message_page';

  static const String messageTabContainerScreen =
      '/message_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String aboutDevScreen = '/about_dev_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        loginScreen: LoginScreen.builder,
        signupScreen: SignupScreen.builder,
        dashboardScreen: DashboardScreen.builder,
        drListScreen: DrListScreen.builder,
        drDetailsScreen: DrDetailsScreen.builder,
        bookAnAppointmentScreen: BookAnAppointmentScreen.builder,
        chatScreen: ChatScreen.builder,
        settignsScreen: SettignsScreen.builder,
        pharmacyScreen: PharmacyScreen.builder,
        drugDetailsScreen: DrugDetailsScreen.builder,
        articleScreen: ArticleScreen.builder,
        cartScreen: CartScreen.builder,
        ambulanceScreen: AmbulanceScreen.builder,
        scheduleTabContainerScreen: ScheduleTabContainerScreen.builder,
        messageTabContainerScreen: MessageTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        aboutDevScreen: AboutDevScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
