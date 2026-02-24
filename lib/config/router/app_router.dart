import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

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
      path: ProgressScreen.path,
      name: ProgressScreen.name,
      builder: (context, state) => ProgressScreen(key: state.pageKey),
    ),

    GoRoute(
      path: SnackbarScreen.path,
      name: SnackbarScreen.name,
      builder: (context, state) => SnackbarScreen(key: state.pageKey),
    ),

    GoRoute(
      path: AnimatedScreen.path,
      name: AnimatedScreen.name,
      builder: (context, state) => AnimatedScreen(key: state.pageKey),
    ),

    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.name,
      builder: (context, state) => UiControlsScreen(key: state.pageKey),
    ),

    GoRoute(
      path: '/tutorial_screen',
      name: AppTutorialScreen.name,
      builder: (context, state) => AppTutorialScreen(key: state.pageKey),
    ),

    GoRoute(
      path: '/infinite_screen',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => InfiniteScrollScreen(key: state.pageKey),
    ),
  ],
);
