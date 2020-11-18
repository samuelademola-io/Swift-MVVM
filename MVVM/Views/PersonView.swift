//
//  PersonView.swift
//  MVVM
//
//  Created by Samuel F. Ademola on 11/18/20.
//

import SwiftUI

// View

struct PersonView: View {
    
    //    @ObservedObject var personModel: PersonViewModel
        @StateObject var personModel = PersonViewModel()
    
    var body: some View {
        VStack {
            Text(personModel.name)
                .padding()
            Text(String(personModel.age))
                .padding()
            Button("Change Name") {
                // Change name to Bob
                personModel.changeName(name: "Bob")
                
            }
        }
        .font(.largeTitle)
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView()
    }
}
