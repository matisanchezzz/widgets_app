import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar';
  static const path = '/snackbar';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snakback = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'OK!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snakback);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
          'Qui aliquip sunt quis qui id magna irure id aliquip occaecat esse ut ipsum amet. Excepteur sint laborum nisi est magna occaecat ipsum anim. Aliqua sit nulla excepteur pariatur. Lorem reprehenderit nulla nostrud aute ipsum in nulla do deserunt. Excepteur elit non aliqua veniam do consequat sint excepteur. Velit excepteur voluptate reprehenderit dolore mollit reprehenderit duis sunt est commodo labore velit.',
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars y Dialogos')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                      'Consequat est ullamco proident reprehenderit laboris commodo nulla in enim. Aute commodo eu Lorem aute aliquip duis. Proident eiusmod aliqua minim non Lorem commodo pariatur. Eiusmod non ex officia mollit. Aliqua mollit cillum et sunt fugiat. Commodo ullamco laboris enim qui ipsum sint sit ullamco esse aute excepteur deserunt nostrud minim. Incididunt voluptate ad incididunt eu adipisicing amet fugiat ullamco magna.',
                    ),
                  ],
                );
              },
              child: const Text('Licencias usadas'),
            ),

            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar dialogo'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
