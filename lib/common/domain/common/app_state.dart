class GardenState {
  static int? garden;
  static int currentGarden() {
    return garden!;
  }
  static enterGarden(int garden) {
    garden = garden;
  }

  static exitGarden() {
    garden = null;
  }
}