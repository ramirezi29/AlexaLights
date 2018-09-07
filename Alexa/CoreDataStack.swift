//
//  CoreDataStack.swift
//  Alexa
//
//  Created by Ivan Ramirez on 9/6/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation
import CoreData

//this code be an enum / class/ struct
enum CoreDataStack {
        //the NSManagedObjectContext  is the sand box
        // we are creating the entire core data stack in  here.
        //this code is getting the string of the core data
        static let container: NSPersistentContainer = {
            let appName = Bundle.main.object(forInfoDictionaryKey: (kCFBundleNameKey as String)) as! String
            let container = NSPersistentContainer(name: "Alexa")
            container.loadPersistentStores { (_, error) in
                if let error = error as NSError? {
                    fatalError("Unresolved error \(error), \(error.userInfo)")
                }
            }
            return container
        }()
        static var context: NSManagedObjectContext { return container.viewContext }
    }

