//
//  SecondScreen.swift
//  SwiftUINavigation
//
//  Created by Jorge on 4/6/24.
//

import SwiftUI

struct SecondScreen: View {
    @EnvironmentObject var navigator: UINavigationController

    var body: some View {
        Text("Second screen")
        
        Button {
            navigator.pushViewController(route: .firstScreen)
        } label: {
            Text("Pinchame para ir a otro push")
        }
    }
}

#Preview {
    SecondScreen()
}
