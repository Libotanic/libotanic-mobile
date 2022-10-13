class AppState {
  static int? garden;
  static int currentGarden() {
    return garden != null? garden!+1 : -1;
  }
  static setState(int garden) {
    AppState.garden = garden;
  }
}