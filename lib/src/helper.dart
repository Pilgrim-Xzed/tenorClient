class Helper {
  static getGifs(Map<String, dynamic> data) {
    return data['results'] ?? [];
  }
}
