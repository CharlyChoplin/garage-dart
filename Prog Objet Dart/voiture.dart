abstract class Vehicule {
  void demarrer() {
    print("$hashCode ($runtimeType) vroum");
  }
}

class Voiture extends Vehicule {
  static const roues = 4;
  String couleur = 'blouge';

  Voiture() {
    //  Coucou je suis le constructeur
  }
  String toString() {
    return "Voiture $couleur";
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
  String toString() {
    return "Moto $couleur";
  }
}

class Garage {
  var vehicules = <Vehicule>[];
  Garage();

  void demarrerTousLesVehicules() {
    vehicules.forEach((element) {
      element.demarrer();
      // element.mettreLaBequille();
    });
  }

  String toString() {
    return "Je suis un garage avec les voitures suivantes : $vehicules";
  }
}
