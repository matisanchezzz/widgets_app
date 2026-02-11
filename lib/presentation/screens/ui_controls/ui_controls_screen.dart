import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  static const path = '/ui-controls';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI Controls')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation _selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),

        RadioGroup(
          groupValue: _selectedTransportation,
          onChanged: (value) {
            if (value == null) return;
            setState(() {
              _selectedTransportation = value;
            });
          },
          child: Column(
            children: [
              ExpansionTile(
                title: Text('Vehiculo de transporte'),
                subtitle: Text('$_selectedTransportation'),
                children: [
                  RadioListTile(
                    title: Text('By Car'),
                    subtitle: Text('Viajar por carro'),
                    value: Transportation.car,
                  ),

                  RadioListTile(
                    title: Text('By Boat'),
                    subtitle: Text('Viajar por barco'),
                    value: Transportation.boat,
                  ),

                  RadioListTile(
                    title: Text('By Plane'),
                    subtitle: Text('Viajar por avion'),
                    value: Transportation.plane,
                  ),

                  RadioListTile(
                    title: Text('By Submarine'),
                    subtitle: Text('Viajar por submarino'),
                    value: Transportation.submarine,
                  ),
                ],
              ),

              CheckboxListTile(
                title: const Text('Desayuno?'),
                value: wantsBreakfast,
                onChanged: (value) {
                  if (value == null) return;
                  setState(() {
                    wantsBreakfast = !wantsBreakfast;
                  });
                },
              ),

              CheckboxListTile(
                title: const Text('Almuerzo?'),
                value: wantsLunch,
                onChanged: (value) {
                  if (value == null) return;
                  setState(() {
                    wantsLunch = !wantsLunch;
                  });
                },
              ),

              CheckboxListTile(
                title: const Text('Cena?'),
                value: wantsDinner,
                onChanged: (value) {
                  if (value == null) return;
                  setState(() {
                    wantsDinner = !wantsDinner;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
