//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = ["Joe":"Peanut Butter and Chocolate", "Tim":"Natural Vanilla", "Sophie":"Mexican Chocolate",
                                     "Deniz":"Natural Vanilla", "Tom":"Mexican Chocolate", "Jim":"Natural Vanilla", "Susan":"Cookies 'N' Cream"]

    // 2.
    func names(forFlavor flavor: String) -> [String]
    {
        var names:[String] = []
        
        for (name, flavor1) in favoriteFlavorsOfIceCream
        {
            if flavor1 == flavor
            {
                names.append(name)
            }
        }
        
        return names
    }
    
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int
    {
        var names:[String] = []
        
        for (name, flavor1) in favoriteFlavorsOfIceCream
        {
            if flavor1 == flavor
            {
                names.append(name)
            }
        }
        
        return names.count
    }
    
    // 4.
    func flavor(forPerson person: String) -> String?
    {
        for (name, flavor) in favoriteFlavorsOfIceCream
        {
            if name == person
            {
                return flavor
            }
        }
        
        return nil
    }
   
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool
    {
        for (name, flavor1) in favoriteFlavorsOfIceCream
        {
            if (name == person)
            {
                favoriteFlavorsOfIceCream[name] = flavor
                return true
            }

        }
        
        return false
    }

    // 6.
    func remove(person: String) -> Bool
    {
        for (name, flavor) in favoriteFlavorsOfIceCream
        {
            if name==person
            {
                favoriteFlavorsOfIceCream[name] = nil
                return true
            }
        }
        
        return false
    }
    
    // 7.
    func numberOfAttendees() -> Int
    {
        return favoriteFlavorsOfIceCream.count
    }

    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool
    {
        for (name, flavor) in favoriteFlavorsOfIceCream
        {
            if name==person
            {
                return false
            }
        }
        
        favoriteFlavorsOfIceCream[person] = flavor
        return true
    }

    // 9.
    func attendeeList() -> String
    {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var sentence:[String] = []
        
        for name in allNames
        {
            
            var last = allNames[allNames.count - 1]
            var iceCream = favoriteFlavorsOfIceCream[name]
            
            if var iceCream = iceCream
            {
                if name != last
                {
                    sentence.append("\(name) likes \(iceCream)\n")
                }
                else
                {
                    sentence.append("\(name) likes \(iceCream)")
                }
            }
            
        }
        
        return sentence.joined()
    }
    
    
    
    
    
    
    
    

}
