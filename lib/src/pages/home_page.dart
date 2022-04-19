import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final estiloTexto = const TextStyle( fontSize: 25 );

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('Numero de Clicks:', style: estiloTexto ),
            Text('$_conteo', style: estiloTexto ),
          ],
        ),
      ),
      floatingActionButton: _crearBotones()
    );
  }

  _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 30.0),
        FloatingActionButton( child: const Icon(Icons.add) ,onPressed: _agregar),
        FloatingActionButton( child: const Icon(Icons.remove) ,onPressed: _restar),
        const Expanded(child: SizedBox()),
        FloatingActionButton( child: const Icon(Icons.clear) ,onPressed: _limpiar),
      ],
    );
  }
  void _agregar() {
    setState(() => _conteo++);
  }
  void _restar() {
  
    setState(() => _conteo > 0 ? _conteo--: _conteo = 0 );
  }
  void _limpiar() {
    setState(() => _conteo = 0);
  }

}


