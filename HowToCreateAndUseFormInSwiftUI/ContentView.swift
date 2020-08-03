//
//  ContentView.swift
//  HowToCreateAndUseFormInSwiftUI
//
//  Created by michael tamsil on 03/08/20.
//  Copyright © 2020 michael tamsil. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var name : String = ""
    @State var phoneNumber: String = ""
    @State var isActive: Bool = true
    @State var notificationEnable: Bool = true
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("User Information")){
                    TextField("Name", text: $name)
                    TextField("Phone Number", text: $phoneNumber)
                    Toggle(isOn: $isActive) {
                        Text("Account is Active")
                    }
                }
                Section(header: Text("Notification")) {
                    Toggle(isOn: $notificationEnable) {
                        Text("Enabled")
                    }
                }
            }
            .navigationBarTitle("Settings")
        
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        

    }
}
