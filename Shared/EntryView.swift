//
//  ContentView.swift
//  Shared
//
//  Created by Scheer, Kyler (STL) on 8/31/20.
//

import SwiftUI

struct EntryView: View {
    var body: some View {
        NavigationView {
            ButtonView()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EntryView()
        CreateEventView()
    }
}

struct ButtonView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 200, content: {
            NavigationLink(destination: CreateEventView()) {
                Text("Create Event")
                    .font(.title)
                    .foregroundColor(.blue)
            }.buttonStyle(PlainButtonStyle())
            NavigationLink(destination: CreateEventView()) {
                Text("Join Event")
                    .font(.title)
                    .foregroundColor(.green)
            }.buttonStyle(PlainButtonStyle())
        })
    }
}
