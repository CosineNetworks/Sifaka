//
//  ContentView.swift
//  Sifaka
//
//  Created by Aiden Fox Ivey on 2023-05-10.
//

import SwiftUI

enum Status {
    case connected, disconnected, error
}

private func color(for status: Status) -> Color {
    switch status {
    case .connected:
        return .green
    case .disconnected:
        return .yellow
    case .error:
        return .red
    }
}

struct ContentView: View {
    @State private var selectedNetwork = 0
    @State private var downloadAmount = 0.0
    @State private var isConnected = false
    @State private var username: String = ""
    @State private var networks = ["home", "other"]
    @State private var status: Status = .disconnected

    var body: some View {
        VStack {
            VStack{
                
                Image("cosinesvg").scaledToFit().padding(10)
            HStack {
            Button("Add a network") {
                networks.append(username)
                username = ""
            }
                TextField("network name", text: $username).frame(width: 150).clipped()
            }
                
            }.padding(10)
            VStack{
                Text("Select a network.")
                Picker("Network", selection: $selectedNetwork) {
                    ForEach(0 ..< networks.count, id: \.self) {
                        Text(self.networks[$0])
                    }
                }.labelsHidden().frame(width: 150).clipped()
            }.padding(10)
            
            HStack {
            Text("Connection Status:")
                Circle()
                    .fill(color(for: status))
                    .overlay(
                        Circle()
                            .stroke(Color.black, lineWidth:2)
                    )
                    .frame(width:20, height:20)
            }.padding(10)
        }.padding(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
