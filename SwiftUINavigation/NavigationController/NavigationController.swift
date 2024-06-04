//
//  NavigationController.swift
//  SwiftUINavigation
//
//  Created by Jorge on 4/6/24.
//

import UIKit

extension UINavigationController: ObservableObject {

    func pushViewController(route: AppRoute) {
        AppNavigation.shared.pushViewController(route, source: self)
    }

    func presentScreen(route: AppRoute) {
        AppNavigation.shared.present(route, source: self)
    }
    
    func pop() {
        popViewController(animated: true)
    }

    func popToRoot() {
        popToRootViewController(animated: true)
    }

    func popToView(route: AppRoute) {
        AppNavigation.shared.popToView(route, source: self)
    }
}
