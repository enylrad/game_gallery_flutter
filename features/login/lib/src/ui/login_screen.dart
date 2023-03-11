import 'package:common_dependencies/common_dependencies.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:login/src/analytics/login_analytics_logger.dart';
import 'package:login/src/localization/login_localization.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AnalyticsLogger _analyticsLogger = AppInjector.I.get();

  late LoginLocalization _intl;
  late AppRouter _appRouter;

  @override
  Widget build(BuildContext context) {
    _intl = LoginLocalization.of(context);
    _appRouter = AppInjector.I.get<AppRouter>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          const Spacer(),
          Text(_intl.tr('login_screen.title')),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                _analyticsLogger.logEvent(LoginEvents.loginButtonClick);
                _appRouter.navigate(const HomeRoute());
              },
              child: Text(_intl.tr('login_screen.action')),
            ),
          ),
          const SizedBox(height: 16),
        ]),
      ),
    );
  }
}
