//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Jorge on 4/6/24.
//

import SwiftUI

struct FirstScreen: View {
    @EnvironmentObject var navigator: UINavigationController

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("PRUEBAAA NAVEGACION")
            Button {
                navigator.pushViewController(route: .firstScreen)
            } label: {
                Text("Pinchame para ir a otro push")
            }

            Button {
                navigator.pop()
            } label: {
                Text("Pincha aqui para hacer pop")
            }

            Button {
                navigator.pushViewController(route: .secondScreen)
            } label: {
                Text("Pincha aqui para ir al second screen")
            }

            Button {
                navigator.popToRoot()
            } label: {
                Text("Pincha aqui para volver al root")
            }

            Button {
                navigator.popToView(route: .secondScreen)
            } label: {
                Text("Pincha aqui para volver a second screen")
            }

            
            Button {
                navigator.presentScreen(route: .secondScreen)
            } label: {
                Text("Pincha aqui para present nuevo navigation")
            }

        }
        .padding()
    }
}
