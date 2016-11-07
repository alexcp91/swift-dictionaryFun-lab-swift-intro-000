//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String: String] = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var names: [String] = [ ]
        for (key, value) in favoriteFlavorsOfIceCream {
            if value == flavor {
                names.append(key)
            }
        }
        if !names.isEmpty {
            return names
        } else {
            return names
        }
    }
        
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var count: Int = 0
        for (key, value) in favoriteFlavorsOfIceCream {
            if value == flavor {
                count += 1
            }
        }
        return count
    }
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        if let flavor = favoriteFlavorsOfIceCream[person] {
            return flavor
        } else {
            return nil
        }
    }
    
    // 5.
   
    
    func replace(flavor: String, forPerson: String) -> Bool {
        if favoriteFlavorsOfIceCream[forPerson] != nil {
            if favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson) != nil {
                return true
            } else {
                return false
            }
        }
        return false
    }
    
    // 6.
    
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream.removeValue(forKey: person) == nil {
            return false
        } else {
            return true
        }
    }
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.keys.count
    }
    
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor: String) -> Bool {
        if favoriteFlavorsOfIceCream.updateValue(withFlavor, forKey: person) == nil {
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        let count = allNames.count
        let lastName = allNames[count-1]
        
        var list: [String] = [ ]
        
        for name in allNames {
            if name != lastName {
                list.append("\(name) likes \(favoriteFlavorsOfIceCream[name]!)\n")
            } else {
                list.append("\(name) likes \(favoriteFlavorsOfIceCream[name]!)")
            }
        }
      return list.joined()
    }
}
