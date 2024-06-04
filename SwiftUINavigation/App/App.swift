//
//  SwiftUINavigationApp.swift
//  SwiftUINavigation
//
//  Created by Jorge on 4/6/24.
//

import SwiftUI

@main

struct SwiftUINavigationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(appDelegate.coordinator!)
        }
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var coordinator: AppNavigation?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let navigationController = UINavigationController()
        coordinator = AppNavigation(startingRoute: .firstScreen)

        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = navigationController
        self.window = window
        window.makeKeyAndVisible()

        return true
    }
}
