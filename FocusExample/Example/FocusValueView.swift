//
//  FocusValueView.swift
//  FocusExample
//
//  Created by Nguyen Loc on 14/10/2022.
//

import SwiftUI

// Create new focused value key
struct FocusedNoteValue: FocusedValueKey {
    // Define value for key
    typealias Value = String
}
 
// Add new property to FocusedValues
extension FocusedValues {
    var note: FocusedNoteValue.Value? {
        get { self[FocusedNoteValue.self] }
        set { self[FocusedNoteValue.self] = newValue }
    }
}
 
struct FocusValueView: View {
    @State private var userName: String = ""
    @State private var password: String = ""
 
    // Create focused value note
    @FocusedValue(\.note) var note
    var body: some View {
        VStack {
            Text("NotePreview layout")
            Divider()
            Text("UserName \n \(userName)")
            Text("Password \n \(password)")
            // Username textfield binds to username state
            // Focused value note binds to userName state
            TextField("UserName", text: $userName)
                .focusedValue(\.note, userName)
            // Password textfield binds to password state
            // Focused value note binds to password state
            TextField("Password", text: $password)
                .focusedValue(\.note, password)
        }
    }
}

struct FocusValueContainerView: View {
    // Observed note value
    @FocusedValue(\.note) var note
    var body: some View {
        VStack {
            Text("FocusedValue: \n \(note ?? "")")
            FocusValueView()
        }
    }
}
 
struct FocusValueView_Previews: PreviewProvider {
    static var previews: some View {
        FocusValueContainerView()
    }
}
