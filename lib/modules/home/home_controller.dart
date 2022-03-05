import 'dart:math';

import 'package:LetTutor/modules/home/home.dart';
import 'package:LetTutor/shared/shared.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  HomeController();

  var currentTab = MainTabs.home.obs;


  late MainTab mainTab;
  late DiscoverTab discoverTab;
  late ResourceTab resourceTab;
  late InboxTab inboxTab;
  late MeTab meTab;

  @override
  void onInit() async {
    super.onInit();

    mainTab = MainTab();

    discoverTab = DiscoverTab();
    resourceTab = ResourceTab();
    inboxTab = InboxTab();
    meTab = MeTab();
  }

  void signout() {
    var prefs = Get.find<SharedPreferences>();
    prefs.clear();

    NavigatorHelper.popLastScreens(popCount: 2);
  }

  void switchTab(index) {
    var tab = _getCurrentTab(index);
    currentTab.value = tab;
  }

  int getCurrentIndex(MainTabs tab) {
    switch (tab) {
      case MainTabs.home:
        return 0;
      case MainTabs.discover:
        return 1;
      case MainTabs.resource:
        return 2;
      case MainTabs.inbox:
        return 3;
      case MainTabs.me:
        return 4;
      default:
        return 0;
    }
  }

  MainTabs _getCurrentTab(int index) {
    switch (index) {
      case 0:
        return MainTabs.home;
      case 1:
        return MainTabs.discover;
      case 2:
        return MainTabs.resource;
      case 3:
        return MainTabs.inbox;
      case 4:
        return MainTabs.me;
      default:
        return MainTabs.home;
    }
  }
}
