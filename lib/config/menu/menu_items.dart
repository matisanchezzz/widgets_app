import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/counter/counter_screen.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Riverpod Counter',
    subTitle: 'Introduccion a riverpod',
    link: CounterScreen.name,
    icon: Icons.list_alt_rounded,
  ),

  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: ButtonsScreen.name,
    icon: Icons.smart_button_outlined,
  ),

  MenuItem(
    title: 'Tarjets',
    subTitle: 'Un contenedor estilizado',
    link: CardsScreen.name,
    icon: Icons.credit_card,
  ),

  MenuItem(
    title: 'ProgressIndicators',
    subTitle: 'Generales y controlados',
    link: ProgressScreen.name,
    icon: Icons.refresh_rounded,
  ),

  MenuItem(
    title: 'Snackbars y dialogos',
    subTitle: 'Indicadores en pantalla',
    link: SnackbarScreen.name,
    icon: Icons.info_outline,
  ),

  MenuItem(
    title: 'Animated container',
    subTitle: 'Stateful widget animado',
    link: AnimatedScreen.name,
    icon: Icons.check_box_outline_blank_rounded,
  ),

  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'Una serie de controles de Flutter',
    link: UiControlsScreen.name,
    icon: Icons.car_rental_outlined,
  ),

  MenuItem(
    title: 'Introduccion a la aplicacion',
    subTitle: 'Pequeño tutorial introductorio',
    link: AppTutorialScreen.name,
    icon: Icons.accessible_rounded,
  ),

  MenuItem(
    title: 'InfiniteScroll y Pull',
    subTitle: 'Listas infinitas y pull to refresh',
    link: InfiniteScrollScreen.name,
    icon: Icons.list_alt_rounded,
  ),

  MenuItem(
    title: 'Cambiar tema',
    subTitle: 'Cambiar tema de la aplicacion',
    link: ThemeChangerScreen.name,
    icon: Icons.color_lens_outlined,
  ),
];
