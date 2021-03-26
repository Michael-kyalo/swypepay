import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swypepay/screens/account/account_statement_screen.dart';
import 'package:swypepay/screens/point_of_sales_screen.dart';
import 'file:///C:/Users/ADMIN/AndroidStudioProjects/swypepay/lib/screens/customer/customers_screen.dart';
import 'package:swypepay/theme/theme_bloc.dart';
import 'package:swypepay/theme/theme_state.dart';
import 'package:swypepay/theme/app_themes.dart';
import 'screens/home_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/auth/sign_up_screen.dart';
import 'screens/auth/phone_verification.dart';
import 'package:swypepay/services/navigation_service.dart';
import 'screens/auth/forgot_screen.dart';
import 'screens/auth/sign_up_step_two_screen.dart';
import 'screens/banking/banking_screen.dart';
import 'screens/banking/add_bank_screen.dart';
import 'screens/account/sub_account_screens.dart';
import 'screens/customer/add_customer_screen.dart';
import 'screens/account/add_sub_account.dart';
import 'screens/settings/business_account_set_up_screen.dart';
import 'screens/settings/display_settings_screen.dart';
import 'screens/settings/notification_settings_screen.dart';
import 'screens/settings/personal_infomation_screen.dart';
import 'screens/settings/security_settings_screen.dart';
import 'screens/add_product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>ThemeBloc(ThemeState(themeData: appThemeData[AppTheme.BlueLight])),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state){
          return MaterialApp(
              title: 'SwypePay',
              theme: state.themeData,
              debugShowCheckedModeBanner: false,

              navigatorKey: NavigationService.instance.navigationKey,
              routes:{
                "login":(BuildContext context) => LoginScreen(),
                "forgot":(BuildContext context) => ForgotScreen(),
                "signup":(BuildContext context)=> SignUpScreen(),
                "step2": (BuildContext context)=> SignUpStepTwo(),
                "home": (BuildContext context)=> HomeScreen(),
                "banking":(BuildContext context)=> BankingScreen(),
                "customers":(BuildContext context)=> CustomerScreen(),
                "addbank":(BuildContext context)=> AddBankScreen(),
                "verification": (BuildContext context)=> PhoneVerificationScreen(),
                "subaccount":(BuildContext context)=> SubAccountScreen(),
                "addcustomer":(BuildContext context)=> AddCustomerScreen(),
                "addsubaccount":(BuildContext context)=> AddSubAccount(),
                "accountstatement":(BuildContext context)=> AccountStatementScreen(),
                "pointofsale":(BuildContext context)=> PointOfSaleScreen(),
                "personalinformation":(BuildContext context)=> PersonalInfomationScreen(),
                "displaysettings":(BuildContext context)=> DisplaySettingsScreen(),
                "notificationsettings":(BuildContext context)=> NotificationSettingsScreen(),
                "businessaccountsetup":(BuildContext context)=> BusinessAccountSetUpScreen(),
                "securitysettings":(BuildContext context)=> SecuritySettingsScreen(),
                "addproduct":(BuildContext context)=> AddProductScreen(),

              },
              home: OnboardingScreen()
          );
        },
      ),

    );

  }
}

