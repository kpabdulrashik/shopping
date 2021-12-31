import 'package:ShoppingApp/screens/delivery/componnents/deliverSuccess.dart';
import 'package:ShoppingApp/screens/delivery/delivertScreen.dart';
import 'package:ShoppingApp/screens/productlist/productHome.dart';
import 'package:flutter/widgets.dart';
import 'package:ShoppingApp/screens/cart/cart_screen.dart';
import 'package:ShoppingApp/screens/complete_profile/complete_profile_screen.dart';
import 'package:ShoppingApp/screens/details/details_screen.dart';
import 'package:ShoppingApp/screens/forgot_password/forgot_password_screen.dart';
import 'package:ShoppingApp/screens/home/home_screen.dart';
import 'package:ShoppingApp/screens/login_success/login_success_screen.dart';
import 'package:ShoppingApp/screens/otp/otp_screen.dart';
import 'package:ShoppingApp/screens/profile/profile_screen.dart';
import 'package:ShoppingApp/screens/sign_in/sign_in_screen.dart';
import 'package:ShoppingApp/screens/splash/splash_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ProductHome.routeName: (context) => ProductHome(),
  DeliveryScreen.routeName: (context) => DeliveryScreen(),
  DeliverSuccessScreen.routeName: (context) => DeliverSuccessScreen(),
};
