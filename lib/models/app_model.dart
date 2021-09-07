library models.app_model;

/// An App can have multiple tabs, each tab can have multiple
/// windows.
class AppModel {
  late String userName;
  late String fileName;
  late List<TabModel> tabs;

  AppModel.fromJson(Map<String, dynamic> input) {
    userName = input['userName'] ?? '';
    fileName = input['fileName'] ?? '';
    tabs = [for (var tab in input['tabs']) TabModel.fromJson(tab)];
  }
}

/// A tab can contain several windows.
class TabModel {
  TabModel(this.name, this.windows);
  late String name;
  late List<WindowModel> windows;

  TabModel.fromJson(Map<String, dynamic> input) {
    if (!input.containsKey('tabName')) {
      throw ArgumentError('tabName can\'t be null');
    }
    name = input['tabName']!;
    if (!input.containsKey('windows')) {
      throw ArgumentError('windows can\'t be null for tab $name');
    }
    windows = [for (var window in input['windows']) WindowModel.parse(window)];
  }
}

/// Lowest level of information on the screen.  Has a chart and a script
/// associated with it.
class WindowModel {
  WindowModel(this.id, {this.text = ''});
  late int id;

  /// the code to parse
  late String text;

  WindowModel.parse(Map<String, dynamic> input) {
    id = int.parse(input['id']);
    text = input['text'] ?? '';
  }
}
