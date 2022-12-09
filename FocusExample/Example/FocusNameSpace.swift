//
//  FocusNameSpace.swift
//  FocusExample
//
//  Created by Nguyen Loc on 01/12/2022.
//

import SwiftUI

struct FocusNameSpace: View {
    @Namespace var nameSpace1
    @Namespace var nameSpace2
    @Environment(\.resetFocus) var resetFocus
    var body: some View {
        HStack {
            VStack {
                Button {
                    resetFocus(in: nameSpace1)
                } label: {
                    Text("Button0")
                }
                .focusScope(nameSpace1)
                
                Button {
                    resetFocus(in: nameSpace1)
                } label: {
                    Text("Button1")
                }
                .prefersDefaultFocus(in: nameSpace1)
                .focusScope(nameSpace1)
                
                Button {
                    resetFocus(in: nameSpace1)
                } label: {
                    Text("Button2")
                }
                .prefersDefaultFocus(in: nameSpace1)
                .focusScope(nameSpace1)
            }
            
            
            Divider()
                .padding()
            RightViewContainer(nameSpace: nameSpace2)
                .focusScope(nameSpace2)
        }
        .frame(alignment: .leading)
    }
}

struct RightViewContainer: View {
    @Environment(\.resetFocus) var resetFocus
    var nameSpace: Namespace.ID
    var body: some View {
        VStack {
            Button {
                resetFocus(in: nameSpace)
            } label: {
                Text("Button3")
            }
            
            Button {
                resetFocus(in: nameSpace)
            } label: {
                Text("Button4")
            }
            .prefersDefaultFocus(in: nameSpace)
            
            Button {
                resetFocus(in: nameSpace)
            } label: {
                Text("Button5")
            }
            
        }
//        .focusScope(nameSpace)
    }
}

struct FocusNameSpace_Previews: PreviewProvider {
    static var previews: some View {
        FocusNameSpace()
    }
}
