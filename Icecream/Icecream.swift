//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream:[String:String] = [
        "Joe":"Peanut Butter and Chocolate",
        "Tim":"Natural Vanilla",
        "Sophie":"Mexican Chocolate",
        "Deniz":"Natural Vanilla",
        "Tom":"Mexican Chocolate",
        "Jim":"Natural Vanilla",
        "Susan":"Cookies 'N' Cream"]


    // 2.
    func names(forFlavor flavor:String)->[String]{
       let allStaff = favoriteFlavorsOfIceCream.keys
        
        var staffByFlavor:[String] = []
        for(staff) in allStaff{
            if flavor == favoriteFlavorsOfIceCream[staff]{
                staffByFlavor.append(staff)
            }
        }
        return staffByFlavor
    }
    
    
    // 3.
    func count(forFlavor flavor:String)->Int{
        
        var flavCount:Int = 0
        let allStaff = favoriteFlavorsOfIceCream.keys
        
        for(staff) in allStaff{
            if flavor == favoriteFlavorsOfIceCream[staff]{
                flavCount += 1
            }
        }
        return flavCount
    }
    
        // 4.
    func flavor(forPerson person:String)->String?{
        
        return favoriteFlavorsOfIceCream[person]
    }
   
    
    // 5.
    func replace(flavor:String, forPerson:String)->Bool{
       let replaceList = favoriteFlavorsOfIceCream.keys
        
        for(name) in replaceList{
            if(name == forPerson){
                favoriteFlavorsOfIceCream[forPerson] = flavor
                return true
            }else{
                
            }
        }
        return false
    }
    // 6.
    
    func remove(person:String)->Bool{
        
        let removePerson = favoriteFlavorsOfIceCream.removeValue(forKey: person)
        if removePerson != nil{
            return true
        }
        else {
            return false
        }
    }
    
    
    // 7.
    
    func numberOfAttendees()->Int{
        return favoriteFlavorsOfIceCream.keys.count
    }
    
    // 8.
    
    func add(person:String, withFlavor:String)->Bool{
        if( withFlavor != favoriteFlavorsOfIceCream[person]){
            favoriteFlavorsOfIceCream.updateValue(withFlavor, forKey: person)
            return true
        }
        else{
            return false
        }
    }
    
    // 9
    func attendeeList()->String{
        
        let rsvpNames = favoriteFlavorsOfIceCream.keys.sorted()
        var rsvpList = ""
        var rsvpCount: Int = 0
        
        for selectedRsvp in rsvpNames{
            if let iceCreamFlavor = favoriteFlavorsOfIceCream[selectedRsvp]{
                rsvpCount += 1
                
                if(rsvpCount < favoriteFlavorsOfIceCream.keys.count){
                    rsvpList += "\(selectedRsvp) likes \(iceCreamFlavor)\n"
                                    }
                else{
                    rsvpList += "\(selectedRsvp) likes \(iceCreamFlavor)"
                }
            }
        }
        return rsvpList
        }
}
