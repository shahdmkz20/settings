import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsUtil {
  static const String _keyLatestSearches = 'recentSearches';

  static Future<List<String>> getRecentSearchesLike(String query) async {
    final pref = await SharedPreferences.getInstance();
    final allSearches = pref.getStringList("recentSearches");
    return allSearches!.where((search) => search.startsWith(query)).toList();
  }

  static Future<void> saveToRecentSearches(String searchText) async {
    // ignore: unnecessary_null_comparison
    if (searchText == null) return; //Should not be null
    final pref = await SharedPreferences.getInstance();

    //Use `Set` to avoid duplication of recentSearches
    Set<String> allSearches =
        pref.getStringList("recentSearches")?.toSet() ?? {};

    //Place it at first in the set
    allSearches = {searchText, ...allSearches};
    pref.setStringList("recentSearches", allSearches.toList());
  }

  // Clear all searches
  static Future<void> clearLatestSearches() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyLatestSearches);
  }

  // Clear a specific item from recentSearches list
  static Future<void> clearSearchItem(String searchItem) async {
    // ignore: unnecessary_null_comparison
    if (searchItem == null) return; // Don't proceed if searchItem is null

    final prefs = await SharedPreferences.getInstance();
    List<String> allSearches = prefs.getStringList(_keyLatestSearches) ?? [];

    allSearches.remove(searchItem);

    await prefs.setStringList(_keyLatestSearches, allSearches);
  }
}
