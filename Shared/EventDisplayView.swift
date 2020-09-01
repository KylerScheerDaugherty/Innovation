//
//  EventDisplayView.swift
//  Innovation
//
//  Created by RMR0630 on 9/1/20.
//

import SwiftUI

struct EventDisplayView: View {
    @State var restaurantList: [Restaurant]
    @State var index: Int = 0
    @State var goodRestaurants: [Restaurant] = []
    @State var present = false
    @State var winner = Restaurant(name: "Wendys", imageFileName: "Wendys", description: "It isn't McDonalds!")
    
    var body: some View {
        VStack(alignment: .center, spacing: 50, content: {
            Text(restaurantList[index].name)
                .font(.largeTitle)
            Image(restaurantList[index].imageFileName)
                .resizable()
                .scaledToFit()
            Text(restaurantList[index].description)
            //Shouldn't hard-code, but it works
            Spacer(minLength: 242)
            HStack(alignment: .center, spacing: 1, content: {
                NavigationLink(destination: ResultView(winner: winner), isActive: $present) {
                    EmptyView()
                }
                
                Button(action: {
                    guard self.index < self.restaurantList.count - 1 else {
                        if goodRestaurants.count != 0 {
                            winner = restaurantList[Int.random(in: 0..<goodRestaurants.count)]
                        }
                        present = true
                        return
                    }
                    self.index += 1
                    
                }) {
                    Image("thumbs_down")
                        .resizable()
                        .scaledToFit()
                }
                Button(action: {
                    guard self.index < self.restaurantList.count - 1 else {
                        self.goodRestaurants.append(restaurantList[index])
                        winner = restaurantList[Int.random(in: 0..<goodRestaurants.count)]
                        present = true
                        return
                    }
                    self.goodRestaurants.append(restaurantList[index])
                    self.index += 1
                }) {
                    Image("thumbs_up")
                        .resizable()
                        .scaledToFit()
                }
            })
        })
        .padding(.top, 40.0)
        .navigationBarTitle("Restaurant Details", displayMode: .inline)
    }
}

struct EventDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        EventDisplayView(restaurantList: Restaurant.restaurantList)
    }
}
