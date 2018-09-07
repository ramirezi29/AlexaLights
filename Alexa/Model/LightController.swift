//
//  LightController.swift
//  Alexa
//
//  Created by Ivan Ramirez on 9/6/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit
import CoreData

class LightController {
    
    /// Shared instance (Singleton)
    
    static let shared = LightController()
    private init (){}
    
    
    /// Source of Truth
    
    let mockLights: [Light] = {
       // run all this code
        
        let kitchen = Light(name: "Kitchen", icon: #imageLiteral(resourceName: "kitchen"))
        let office = Light(name: "office", icon: #imageLiteral(resourceName: "office"))
        let livingRoom = Light(name: "livingRoom", icon: #imageLiteral(resourceName: "livingRoom"))
        let laundryRoom = Light(name: "laundryRoom", icon: #imageLiteral(resourceName: "LaundryRoom"))
        let boomBoomRoom = Light(name: "BoomBoomROom", icon: #imageLiteral(resourceName: "bedroom"))
        
        return [kitchen, office, livingRoom, boomBoomRoom] // add living room once you get the image
    }()
    
    //CRUD
    func createLightWith(name: String, icon: UIImage){
        Light(name: name, icon: icon)
        saveToPersistenctStore()
    }
    
    func delete(light: Light) {
        // light what ever sand box your living in, im going to delte you, and what am i going to delte, you (light).
        light.managedObjectContext?.delete(light)
        saveToPersistenctStore()
    }
    
    ///NOTE: Save
    
    func saveToPersistenctStore(){
        do {
        try CoreDataStack.context.save()
        } catch {
           print("🧐 There was an error in \(#function) : \(error)  \(error.localizedDescription)")
        }
    
}
}
