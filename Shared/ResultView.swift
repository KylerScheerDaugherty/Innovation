//
//  ResultView.swift
//  Innovation (iOS)
//
//  Created by Scheer, Kyler (STL) on 9/1/20.
//

import SwiftUI

struct ResultView: View {
    let winner: Restaurant
    
    var body: some View {
        VStack(alignment: .center, spacing: 200, content: {
            VStack(alignment: .center, spacing: 20, content: {
                Text("You're eating at...")
                    .font(.largeTitle)
                Text(winner.name)
                    .font(.largeTitle)
                Image(winner.imageFileName)
                    .resizable()
                    .scaledToFit()
                Text(winner.description)
            })
            
            NavigationLink(destination: EntryView()) {
                Text("Thanks for playing")
                    .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
                    .background(ColorManager.lightBlue)
                    .foregroundColor(.black)
            }
        })
        .navigationBarTitle("Results")
        .navigationBarBackButtonHidden(true)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(winner: Restaurant.restaurantList[Int.random(in: 0..<5)])
    }
}
