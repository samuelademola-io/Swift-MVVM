//
//  PersonViewModel.swift
//  MVVM
//
//  Created by Samuel F. Ademola on 11/18/20.
//

import Foundation
import SwiftUI

// ViewModel
class PersonViewModel: ObservableObject {
    @Published private var user = Person(name: "Alice", birthday: Date())
    
    var name: String {
        user.name
    }
    
    var age: String {
        // date magic -> age string
        
        return "32"
    }
    
    // Intent
    func changeName(name: String) {
        user.name = name
    }
    
}
