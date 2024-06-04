//
//  AppNavigation.swift
//  SwiftUINavigation
//
//  Created by Jorge on 4/6/24.
//

import SwiftUI

class AppNavigation: Observable, ObservableObject {

    static var shared = AppNavigation(startingRoute: .firstScreen)
    let startingRoute: AppRoute

    init(navigationController: UINavigationController = .init(), startingRoute: AppRoute) {
        self.startingRoute = startingRoute
    }

    func startingViewController() -> UINavigationController {
        let view = startingRoute.view()
        let navigationController: UINavigationController = .init()
        let viewWithCoordinator = view.environmentObject(navigationController)
        let viewController = UIHostingController(rootView: viewWithCoordinator)
        navigationController.setViewControllers([viewController], animated: false)
        return navigationController
    }

    func present(_ route: AppRoute, animated: Bool = true, source: UINavigationController) {
        let view = route.view()
        let destinationNavigationController: UINavigationController = .init()
        let viewWithNavigator = view.environmentObject(destinationNavigationController)
        let viewController = UIHostingController(rootView: viewWithNavigator)
        destinationNavigationController.modalPresentationStyle = .fullScreen
        destinationNavigationController.setViewControllers([viewController], animated: animated)
        source.present(destinationNavigationController, animated: animated)
    }

    func pushViewController(_ route: AppRoute, animated: Bool = true, source: UINavigationController) {
        let view = route.view()
        let viewWithNavigator = view.environmentObject(source)
        let viewController = UIHostingController(rootView: viewWithNavigator)
        viewController.restorationIdentifier = route.localization()
        source.pushViewController(viewController, animated: animated)
    }

    func presentModally(_ route: AppRoute, animated: Bool = true, source: UINavigationController) {
        let view = route.view()
        let destinationNavigationController: UINavigationController = .init()
        let viewWithNavigator = view.environmentObject(destinationNavigationController)
        let viewController = UIHostingController(rootView: viewWithNavigator)
        destinationNavigationController.modalPresentationStyle = .formSheet
        destinationNavigationController.setViewControllers([viewController], animated: animated)
        source.present(destinationNavigationController, animated: animated)
    }

    func popToView(_ route: AppRoute, animated: Bool = true, source: UINavigationController) {
        if let vc = source.viewControllers.last(where: { $0.restorationIdentifier == route.localization() }) {
            source.popToViewController(vc, animated: animated)
        }
    }
}
