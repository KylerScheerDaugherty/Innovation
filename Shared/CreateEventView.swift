//
//  CreateEventView.swift
//  Innovation
//
//  Created by Scheer, Kyler (STL) on 8/31/20.
//

import SwiftUI

struct CreateEventView: View {
    @State var numberOfUsers: String = ""
    @State var location: String = ""
    @State var distance: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 50, content: {
            NumberOfUsersView(numberOfUsers: $numberOfUsers)
            LocationView(location: $location)
            DistanceView(distance: $distance)
            //Shouldn't hard-code, but it works
            Spacer(minLength: 242)
            DoneButton(numberOfUsers: numberOfUsers, location: location, distance: distance)
        })
        .padding(.top, 40.0)
        .navigationBarTitle("Event Details", displayMode: .inline)
    }
}


struct CreateEventView_Previews: PreviewProvider {
    static var previews: some View {
        CreateEventView()
    }
}

struct NumberOfUsersView: View {
    let numberOfUsers: Binding<String>
    
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
            Text("Number Of Users")
            TextField("10", text: numberOfUsers)
                .multilineTextAlignment(.center)
                .lineLimit(1)
                .border(Color.black, width: 1)
                .padding(.init(top: 0, leading: 160, bottom: 0, trailing: 160))
        })
        
    }
}

struct LocationView: View {
    let location: Binding<String>
    
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
            Text("Starting Location")
            TextField("Enter the starting location", text: location)
                .multilineTextAlignment(.center)
                .lineLimit(1)
                .border(Color.black, width: 1)
                .padding(.init(top: 0, leading: 60, bottom: 0, trailing: 60))
        })
    }
}

struct DistanceView: View {
    let distance: Binding<String>
    
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
            Text("Search Distance (in miles)")
            TextField("10", text: distance)
                .multilineTextAlignment(.center)
                .lineLimit(1)
                .border(Color.black, width: 1)
                .padding(.init(top: 0, leading: 160, bottom: 0, trailing: 160))
        })
    }
}

struct DoneButton: View {
    let numberOfUsers: String
    let location: String
    let distance: String
    
    var body: some View {
        GeometryReader { geometry in
            NavigationLink(destination: EventDisplayView(restaurantList: Restaurant.restaurantList)) {
                Text("Find Me Food")
                    .font(.title)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
            }.background(ColorManager.lightBlue).frame(width: geometry.size.width, height: 50, alignment: .center)
        }
    }
}
