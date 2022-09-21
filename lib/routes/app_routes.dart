import 'package:hbs/presentation/splash_screen/splash_screen.dart';
import 'package:hbs/presentation/splash_screen/binding/splash_binding.dart';
import 'package:hbs/presentation/add_new_task_screen/add_new_task_screen.dart';
import 'package:hbs/presentation/add_new_task_screen/binding/add_new_task_binding.dart';
import 'package:hbs/presentation/home_screen/home_screen.dart';
import 'package:hbs/presentation/home_screen/binding/home_binding.dart';
import 'package:hbs/presentation/deallist_screen/deallist_screen.dart';
import 'package:hbs/presentation/deallist_screen/binding/deallist_binding.dart';
import 'package:hbs/presentation/more_screen/more_screen.dart';
import 'package:hbs/presentation/more_screen/binding/more_binding.dart';
import 'package:hbs/presentation/add_a_deal_screen/add_a_deal_screen.dart';
import 'package:hbs/presentation/add_a_deal_screen/binding/add_a_deal_binding.dart';
import 'package:hbs/presentation/contacts_screen/contacts_screen.dart';
import 'package:hbs/presentation/contacts_screen/binding/contacts_binding.dart';
import 'package:hbs/presentation/activity_screen/activity_screen.dart';
import 'package:hbs/presentation/activity_screen/binding/activity_binding.dart';
import 'package:hbs/presentation/tasks_screen/tasks_screen.dart';
import 'package:hbs/presentation/tasks_screen/binding/tasks_binding.dart';
import 'package:hbs/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:hbs/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splashScreen = '/splash_screen';

  static String addNewTaskScreen = '/add_new_task_screen';

  static String homeScreen = '/home_screen';

  static String deallistScreen = '/deallist_screen';

  static String moreScreen = '/more_screen';

  static String addADealScreen = '/add_a_deal_screen';

  static String contactsScreen = '/contacts_screen';

  static String activityScreen = '/activity_screen';

  static String tasksScreen = '/tasks_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: addNewTaskScreen,
      page: () => AddNewTaskScreen(),
      bindings: [
        AddNewTaskBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: deallistScreen,
      page: () => DeallistScreen(),
      bindings: [
        DeallistBinding(),
      ],
    ),
    GetPage(
      name: moreScreen,
      page: () => MoreScreen(),
      bindings: [
        MoreBinding(),
      ],
    ),
    GetPage(
      name: addADealScreen,
      page: () => AddADealScreen(),
      bindings: [
        AddADealBinding(),
      ],
    ),
    GetPage(
      name: contactsScreen,
      page: () => ContactsScreen(),
      bindings: [
        ContactsBinding(),
      ],
    ),
    GetPage(
      name: activityScreen,
      page: () => ActivityScreen(),
      bindings: [
        ActivityBinding(),
      ],
    ),
    GetPage(
      name: tasksScreen,
      page: () => TasksScreen(),
      bindings: [
        TasksBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
