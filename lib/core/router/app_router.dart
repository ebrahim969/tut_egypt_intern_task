import 'package:go_router/go_router.dart';
import 'package:tut_egypt/features/auth/sign_in/sign_in_view.dart';
import 'package:tut_egypt/features/auth/sign_up/sign_up_view.dart';
import 'package:tut_egypt/main_screen.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SignInView(),
    ),
    GoRoute(
      path: "/SignUpView",
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: "/MainScreen",
      builder: (context, state) => const MainScreenView(),
    ),
  ],
);
