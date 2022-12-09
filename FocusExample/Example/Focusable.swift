//
//  Focusable.swift
//  FocusExample
//
//  Created by Nguyen Loc on 14/10/2022.
//

import SwiftUI

struct Focusable: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Button {
                    
                } label: {
                    Text("Btn1")
                }
                Button {
                    
                } label: {
                    Text("Btn5")
                }
                Text("Btn4")
            }
            
            HStack {
                Button {
                    
                } label: {
                    Text("Btn3")
                }
                
                Text("Btn4")
                    .focusable()
            }
        }
    }
}

struct Focusable_Previews: PreviewProvider {
    static var previews: some View {
        Focusable()
    }
}
