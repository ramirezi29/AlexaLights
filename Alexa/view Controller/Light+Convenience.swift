//
//  Light+Convenience.swift
//  Alexa
//
//  Created by Ivan Ramirez on 9/6/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation
import CoreData
import UIKit

extension Light {
    
    // its going to call upon the designated init/primary init
    // all core date objects  have one designated init of NSManageObject **** NSMN..O is the super
    
    convenience init(name: String, icon: UIImage, isOn: Bool = true) {
        // the *SELF* is a specific instance
        self.init(context: CoreDataStack.context) // this is the mock
        self.name = name // set name to that template
        self.isOn = isOn
        
        
        
        let iconData = UIImageJPEGRepresentation(icon, 1.0)
        self.iconData = iconData
    }
    // Computed property
    var icon: UIImage? {
        guard let iconData = iconData else { return nil }
        return UIImage(data: iconData)
    }
}
