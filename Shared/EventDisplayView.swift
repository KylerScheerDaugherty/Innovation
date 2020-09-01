//
//  EventDisplayView.swift
//  Innovation
//
//  Created by RMR0630 on 9/1/20.
//

import SwiftUI

struct EventDisplayView: View {
    @State var restaurant: String = ""
    @State var location: String = ""
    @State var description: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 50, content: {
            Text("MacDonalds")
                .font(.largeTitle)
            Image("Macdonalds")
                .resizable()
                .scaledToFit()
            Text("We have a play house for your kids")
//            Text("MacDonalds")
            //Shouldn't hard-code, but it works
            Spacer(minLength: 242)
            Button(action: {
                            debugPrint("hi")
                        }) {
                Text("Yay")
            }
            .padding(.trailing)
        }).multilineTextAlignment(.trailing)
        .padding(.top, 40.0)
        .navigationBarTitle("Restaurant Details", displayMode: .inline)
    }
}

struct EventDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        EventDisplayView()
    }
}
