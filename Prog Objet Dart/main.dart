
import 'voiture.dart';

void main(List<String> arguments) {
  var voiture1 = new Voiture();
  var voiture2 = new Voiture();
  var moto1 = new Moto();

  voiture2.couleur = "verte";
  var garage = new Garage();

  print("Mon garage: $garage");
  garage.vehicules.add(voiture1);
  garage.vehicules.add(voiture2);
  garage.vehicules.add(moto1);
  print("Mon garage: $garage");

  garage.demarrerTousLesVehicules();
  voiture1.demarrer();
  moto1.mettreLaBequille();

  print("end");
}
