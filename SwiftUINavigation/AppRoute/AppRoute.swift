//
//  AppRoute.swift
//  SwiftUINavigation
//
//  Created by Jorge on 4/6/24.
//

import SwiftUI

enum AppRoute: Router {

    case firstScreen
    case secondScreen
//    case thirdScreen(number: Int)

    @ViewBuilder
    func view() -> some View {
        switch self {
            case .firstScreen:
                FirstScreen()
            case .secondScreen:
                SecondScreen()
//            case .thirdScreen(let number):
//                ThirdExampleView(numb: .constant(number))
        }
    }

    func localization() -> String {
        switch self {
            case .firstScreen:
               "FirstScreen"
            case .secondScreen:
                "SecondScreen"
                //            case .thirdScreen(let number):
                //                ThirdExampleView(numb: .constant(number))
        }
    }
}
