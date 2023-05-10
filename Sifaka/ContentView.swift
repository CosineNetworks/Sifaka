//
//  ContentView.swift
//  Sifaka
//
//  Created by Aiden Fox Ivey on 2023-05-10.
//

import SwiftUI

func m() {
    
}
struct ContentView: View {
    @State private var downloadAmount = 0.0
    
    var body: some View {
        VStack {
        Text("Cosine Newtorks")
            .font(.title)
        Text("Like the internet but easier lmfao.")
            Button(action:{
                print("Hello World!")
            }) {Text("Connect")}
        }
        ProgressView("Downloading…", value: downloadAmount, total: 100)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
