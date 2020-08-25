//
//  Protocols.swift
//  RobotsPencils
//
//  Created by boqian cheng on 2020-08-25.
//  Copyright © 2020 boqiancheng. All rights reserved.
//

import Foundation

protocol DataType: Encodable {
    
    // any data type conforming to this 'empty' protocol
    // will be saved using 'NetWorkService'
    
    // the data type could provides the custom 'encode'
    // function to match data format on server
}

protocol NetWorkService {
    
    // For different server store (RESTful, GraphQL, firebase)
    // their network service conforming to this protocol
    
    // the completion block could provide info
    // for saving success or failure
    
    func saveData(data: DataType, completion: (() -> Void)?)
}
