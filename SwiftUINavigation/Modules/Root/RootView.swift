//
//  RootView.swift
//  SwiftUINavigation
//
//  Created by Jorge on 4/6/24.
//

import SwiftUI

struct RootView: UIViewControllerRepresentable {
    @EnvironmentObject var coordinator: AppNavigation

    func makeUIViewController(context: Context) -> UINavigationController {
        coordinator.startingViewController()
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        // No se necesita ninguna actualización
    }
}
