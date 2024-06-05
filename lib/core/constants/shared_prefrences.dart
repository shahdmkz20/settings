import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsUtil {
  static const String _keyLatestSearches = 'latestSearches';

  // Save a list of strings to SharedPreferences
  static Future<void> saveLatestSearches(List<String> searches) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_keyLatestSearches, searches);
  }

  // Retrieve the list of strings from SharedPreferences
  static Future<List<String>> getLatestSearches() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_keyLatestSearches) ?? [];
  }

  // Add a new search to the list and save it
  static Future<void> addLatestSearch(String search) async {
    List<String> searches = await getLatestSearches();
    if (!searches.contains(search)) {
      searches.add(search);
      await saveLatestSearches(searches);
    }
  }

  // Clear all searches
  static Future<void> clearLatestSearches() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyLatestSearches);
  }
}
