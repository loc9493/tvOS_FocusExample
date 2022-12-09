//
//  ContentView.swift
//  FocusExample
//
//  Created by Nguyen Loc on 14/10/2022.
//

import SwiftUI

enum TestExample: String, CaseIterable, Identifiable {
    var id: String {
        self.rawValue
    }
    
    case focusable
    case focusSection
    case focused
    case focusState
    case focusValue
    case isFocused
    case focusScope
    
    @ViewBuilder
    func destination() -> some View {
        switch self {
        case .focusable:
            Focusable()
        case .focusSection:
            FocusSection()
        case .focused:
            FocusEqual()
        case .focusState:
            EmptyView()
        case .focusValue:
            FocusValueContainerView()
        case .isFocused:
            IsFocused()
        case .focusScope:
            FocusNameSpace()
        }
    }
}
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                ForEach(TestExample.allCases) { item in
                    NavigationLink(item.rawValue.uppercased()) {
                        item.destination()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
