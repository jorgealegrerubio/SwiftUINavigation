//
//  Router.swift
//  SwiftUINavigation
//
//  Created by Jorge on 4/6/24.
//

import SwiftUI

public protocol Router {

    associatedtype V: View

    @ViewBuilder
    func view() -> V
}
