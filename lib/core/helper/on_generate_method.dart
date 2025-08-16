import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/auth/login/presentation/view/login_view.dart';
import 'package:puresoft_task/feature/auth/phone/presentation/view/phone_view.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/ready_view.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/register_view.dart';
import 'package:puresoft_task/feature/auth/verification/presentation/view/verify_view.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/check_out_view.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/confirm_payment_view.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/opps_view.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/main_view.dart';
import 'package:puresoft_task/feature/main/seller_name/presentation/view/seller_name_view.dart';
import 'package:puresoft_task/feature/main/setting/presentation/view/profile_view.dart';
import 'package:puresoft_task/feature/main/setting/presentation/view/widget/contact_view.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:puresoft_task/feature/orders/presentation/view/my_orders_view.dart';
import 'package:puresoft_task/feature/orders/presentation/view/tracking_order_view.dart';
import 'package:puresoft_task/feature/profile/presentation/view/terms_view.dart';
import 'package:puresoft_task/feature/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());

    case ContactView.routeName:
      return MaterialPageRoute(builder: (_) => const ContactView());
    case TermsView.routeName:
      return MaterialPageRoute(builder: (_) => const TermsView());
    case MyOrdersView.routeName:
      return MaterialPageRoute(builder: (_) => const MyOrdersView());
    case TrackingOrderView.routeName:
      return MaterialPageRoute(builder: (_) => const TrackingOrderView());
    case ProfileView.routeName:
      return MaterialPageRoute(builder: (_) => const ProfileView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => const LoginView());
    case OppsView.routeName:
      return MaterialPageRoute(builder: (_) => const OppsView());
    case ReadyView.routeName:
      return MaterialPageRoute(builder: (_) => const ReadyView());
    case RegisterView.routeName:
      return MaterialPageRoute(builder: (_) => const RegisterView());
    case PhoneView.routeName:
      return MaterialPageRoute(builder: (_) => const PhoneView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    case SellerNameView.routeName:
      return MaterialPageRoute(builder: (_) => const SellerNameView());
    case CheckoutView.routeName:
      return MaterialPageRoute(builder: (_) => const CheckoutView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (_) => const MainView());
    case VerifyView.routeName:
      return MaterialPageRoute(builder: (_) => const VerifyView());
    case ConfirmPaymentView.routeName:
      return MaterialPageRoute(builder: (_) => const ConfirmPaymentView());
    default:
      return MaterialPageRoute(builder: (_) => SizedBox());
  }
}
