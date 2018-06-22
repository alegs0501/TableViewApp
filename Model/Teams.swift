//
//  Teams.swift
//  TableViewApp
//
//  Created by CICE on 20/6/18.
//  Copyright © 2018 alegs0501. All rights reserved.
//

import Foundation

//Creating a new class to manage teams
class Teams {
    //Teams Attributes
    var name = ""
    var city = ""
    var nick = ["",""]
    var colors =  ["", ""]
    var image = ""
    
    //Class Constructor
    init(name: String, city: String, nick: Array<String>, colors: Array<String>, image: String) {
        self.name = name
        self.city = city
        self.nick = nick
        self.colors = colors
        self.image = image
    }
    
    //Return in a Sting team nicknames
    func getNicks() -> String {
        var nick = ""
        for i in self.nick{
            nick = "\(nick) .\(i)"
        }
        return nick
    }
}
