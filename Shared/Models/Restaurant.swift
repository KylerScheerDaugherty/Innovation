//
//  Restaurant.swift
//  Innovation (iOS)
//
//  Created by Scheer, Kyler (STL) on 9/1/20.
//

import Foundation

public class Restaurant {
    let name: String
    let imageFileName: String
    let description: String
    
    init(name: String, imageFileName: String, description: String) {
        self.name = name
        self.imageFileName = imageFileName
        self.description = description
    }
}

extension Restaurant {
    public static var restaurantList: [Restaurant] = [
        Restaurant(name: "McDonalds", imageFileName: "Macdonalds", description: "We have a play house for your kids."),
        Restaurant(name: "Wendys", imageFileName: "Wendys", description: "It isn't McDonalds!"),
        Restaurant(name: "IHOP", imageFileName: "IHOP", description: "Breakfast food is the bomb."),
        Restaurant(name: "Olive Garden", imageFileName: "OliveGarden", description: "Who doesn't want unlimited breadsticks?"),
        Restaurant(name: "Texas Road House", imageFileName: "TexasRoadHouse", description: "Yeehaw!")
    ]
}
