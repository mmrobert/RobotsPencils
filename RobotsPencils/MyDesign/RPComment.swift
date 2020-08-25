//
//  RPComment.swift
//  RobotsPencils
//
//  Created by boqian cheng on 2020-08-25.
//  Copyright © 2020 boqiancheng. All rights reserved.
//

import Foundation

struct RPComment: DataType {
    
    // Future improvement:
    // we could use oberver pattern or
    // 'Combine' framework to notify 'data saving result'
    // to client who is using this data
    
    // this function save 'self' to server store
    func save(to network: NetworkServiceFactory.NetworkServiceType) {
        let service = NetworkServiceFactory.createNetworkService(serviceType: network)
        service.saveData(data: self, completion: nil)
    }
    
    // this function save other data (RPAnnotation) to server store
    func save(data: DataType, to network: NetworkServiceFactory.NetworkServiceType) {
        let service = NetworkServiceFactory.createNetworkService(serviceType: network)
        service.saveData(data: data, completion: nil)
    }
}
