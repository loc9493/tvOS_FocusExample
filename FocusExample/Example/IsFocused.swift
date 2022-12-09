//
//  IsFocused.swift
//  FocusExample
//
//  Created by Nguyen Loc on 09/12/2022.
//

import SwiftUI

struct IsFocused: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Button 1")
        }
        .buttonStyle(RoundButtonStyle())
        .padding()
        Button {
            
        } label: {
            Text("Button 2")
        }
        .buttonStyle(RoundButtonStyle())
        .padding()
    }
}

/// RoundButtonStyle with scale effect and corner radius
struct RoundButtonStyle: ButtonStyle {
    @Environment(\.isFocused) var isFocused: Bool
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .background(isFocused ? Color.white : Color.cyan)
            .foregroundColor(isFocused ? .black : Color.white)
            .cornerRadius(8)
            .scaleEffect(isFocused ? 1.05 : 1)
            .scaleEffect(configuration.isPressed ? 1.05 : 1)
            .animation(.easeIn(duration: 0.1), value: isFocused)
    }
}


struct IsFocused_Previews: PreviewProvider {
    static var previews: some View {
        IsFocused()
    }
}
