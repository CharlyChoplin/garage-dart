import 'voiture.dart';

abstract class Observer{

}

abstract class Observable{
  final observers = <Observer>[];
}

class CabinetComptable implements Observer{
  final clients = <Object, int>{};
  int _tresorerie = 0;

  void addClient(Object client) {
    clients[client] = null;
  }

  void addTresorerie() {
    this._tresorerie = _tresorerie + 15;
  }

  String toString() {
    return "clients : $clients , tresorerie : $_tresorerie";
  }
}

class Garage implements Observable{
  final _objetsAReparer = <Vehicule>[];
  final observers = <Observer>[]
  Garage();

  void nouvellePriseCharge(Vehicule vehicule) {
    _objetsAReparer.add(vehicule);
  }

  @override
  String toString() {
    return 'Je suis un garage avec les objets suivantes : $_objetsAReparer';
  }
}

class Voiture extends Vehicule {
  static const roues = 4;
  String couleur = 'blouge';

  @override
  void demarrer() {
    super.demarrer();
  }

  Voiture() {
    //  Coucou je suis le constructeur
  }
  @override
  String toString() {
    return 'Voiture $couleur';
  }
}

class Moto extends Vehicule {
  static const roues = 2;
  String couleur = 'bleue';

  void mettreLaBequille() {
    print("j'ai mis la béquille");
  }

  Moto() {
    //  Coucou je suis le constructeur
  }
  @override
  String toString() {
    return 'Moto $couleur';
  }
}
