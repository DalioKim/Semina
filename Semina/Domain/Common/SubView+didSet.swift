//
//  SubView+didSet.swift
//  Semina
//
//  Created by 김동현 on 2022/06/21.
//

import SwiftUI

enum ViewConfigure {
    case main
}

protocol SubView: View {
    associatedtype V: View
    func didSet(_ viewConfigure: ViewConfigure) -> V
}
