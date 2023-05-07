
void main() {

  // Las clases abstracts no pueden ser inicializadas
  // final EnergyPlant windPlant = new EnergyPlant();

  final WindPlant windPlant = WindPlant(initialEnergy: 100);
  final NuclearPlant nuclearPlant = NuclearPlant(energyLeft: 1000);

  // print(windPlant);
  
  // Extienden de EnergyPlant
  print('Wind: ${ chargePhone( windPlant ) }');
  print('Nuclear: ${ chargePhone( nuclearPlant ) }');
  
}

// Principio de inversion de dependencias
double chargePhone( EnergyPlant plant ) {
  if ( plant.energyLeft < 10 ) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {

  double energyLeft;
  final PlantType type; // nuclear, wind, water

  EnergyPlant({ 
    required this.energyLeft,
    required this.type,
  });

  void consumeEnergy(double amount);
  // void consumeEnergy(double amount) {
  //   throw UnimplementedError(); // Para cuando no esta implementado
  // }

}

// Crear clase
//** extends
class WindPlant extends EnergyPlant {

  WindPlant({
    required double initialEnergy
  }) : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
 
}

//** implements
class NuclearPlant implements EnergyPlant {

  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({ required this.energyLeft });

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount  * 0.5);
  }
  
}