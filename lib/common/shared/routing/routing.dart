

import 'package:dream_soft/common/presentation/view/car_details/car_details_view.dart';
import 'package:dream_soft/common/presentation/view/home/home_view.dart';
import 'package:dream_soft/common/presentation/view/home/widget/story_view.dart';
import 'package:dream_soft/common/presentation/view/splash/splash_view.dart';
import 'package:dream_soft/common/shared/routing/routing_config.dart';

import '../../presentation/view/dashboard/dashboard_view.dart';

class SplashRouting extends RoutingConfig {
  SplashRouting();

  static RoutingConfig config() => RoutingConfig(path: "/splash/", widget: const SplashView());
}

class DashboardRouting extends RoutingConfig {
  DashboardRouting();

  static RoutingConfig config() => RoutingConfig(path: "/dashboard/", widget: const DashboardView());
}

class CarHomeRouting extends RoutingConfig {
  CarHomeRouting();

  static RoutingConfig config() => RoutingConfig(path: "/CarHomeView/", widget:  CarHomeView());
}


class StoryRouting extends RoutingConfig {
  StoryRouting();

  static RoutingConfig config() => RoutingConfig(path: "/StoryView/", widget:  StoryViewWidget());
}

class CarDetailsViewRouting extends RoutingConfig {
  CarDetailsViewRouting();

  static RoutingConfig config() => RoutingConfig(path: "/CarDetailsView/", widget:   CarDetailsView());
}


