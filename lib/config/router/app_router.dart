import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';
import 'package:widgets_app/presentation/screens/progress/progress_screen.dart';
import '../../presentation/screens/buttons/buttons_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: HomeScreen.path,
  routes: [
    GoRoute(
      path: HomeScreen.path,
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(key: state.pageKey),
    ),

    GoRoute(
      path: ButtonsScreen.path,
      name: ButtonsScreen.name,
      builder: (context, state) => ButtonsScreen(key: state.pageKey),
    ),

    GoRoute(
      path: CardsScreen.path,
      name: CardsScreen.name,
      builder: (context, state) => CardsScreen(key: state.pageKey),
    ),

    GoRoute(
      path: '/progress',
      name: 'progress',
      builder: (context, state) => ProgressScreen(),
    ),
  ],
);
