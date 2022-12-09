//
//  FocusEqual.swift
//  FocusExample
//
//  Created by Nguyen Loc on 09/12/2022.
//

import SwiftUI

struct FocusEqual: View {
    @State var items: [Int] = Array(0..<6)
    @FocusState var focusItem: Int?
    var body: some View {
        let _ = print("Debug: \(focusItem)")
        ScrollView {
            
            VStack {
                Text("Focus Item: \(focusItem?.description ?? "")")
                ForEach(items, id: \.self) { item in
                    Button {
                        
                    } label: {
                        Text("Label \(item)")
                    }
                    .focused($focusItem, equals: item)
//                    .padding()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct FocusEqual_Previews: PreviewProvider {
    static var previews: some View {
        FocusEqual()
    }
}
