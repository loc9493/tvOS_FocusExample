//
//  FocusSection.swift
//  FocusExample
//
//  Created by Nguyen Loc on 14/10/2022.
//

import SwiftUI

struct FocusSection: View {
    var body: some View {
        HStack {
            HStack {
                VStack {
                    Button {
                    } label: {
                        Text("Btn1")
                    }
                    Button {
                    } label: {
                        Text("Btn2")
                    }
                    Button {
                    } label: {
                        Text("Btn3")
                    }
                    Button {
                    } label: {
                        Text("Btn4")
                    }
                    Button {
                    } label: {
                        Text("Btn5")
                    }
                    Button {
                    } label: {
                        Text("Btn6")
                    }
                }.frame(maxHeight: .infinity, alignment: .top)

                VStack {
                    Button {
                    } label: {
                        Text("Btn1")
                    }
                    Button {
                    } label: {
                        Text("Btn2")
                    }
                    Button {
                    } label: {
                        Text("Btn3")
                    }
                    Button {
                    } label: {
                        Text("Btn4")
                    }
                }.frame(maxHeight: .infinity, alignment: .bottom)
            }
            .frame(maxHeight: .infinity)
            .background(.green)
            HStack {
                VStack {
                    Button {
                    } label: {
                        Text("Btn1")
                    }
                    Button {
                    } label: {
                        Text("Btn2")
                    }
                    Button {
                    } label: {
                        Text("Btn3")
                    }
                    Button {
                    } label: {
                        Text("Btn4")
                    }
                    Button {
                    } label: {
                        Text("Btn5")
                    }
                    Button {
                    } label: {
                        Text("Btn6")
                    }
                }.frame(maxHeight: .infinity, alignment: .top)

                VStack {
                    Button {
                    } label: {
                        Text("Btn1")
                    }
                    Button {
                    } label: {
                        Text("Btn2")
                    }
                    Button {
                    } label: {
                        Text("Btn3")
                    }
                    Button {
                    } label: {
                        Text("Btn4")
                    }
                }.frame(maxHeight: .infinity, alignment: .bottom)
                    .focusSection()
            }
            .frame(maxHeight: .infinity)
            .background(.red)
        }
    }
}

struct FocusSection_Previews: PreviewProvider {
    static var previews: some View {
        FocusSection()
    }
}
