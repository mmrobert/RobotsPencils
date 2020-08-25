//
//  NetworkServiceFactory.swift
//  RobotsPencils
//
//  Created by boqian cheng on 2020-08-25.
//  Copyright © 2020 boqiancheng. All rights reserved.
//

import Foundation

struct NetworkServiceFactory {
    
    enum NetworkServiceType {
        case restful
        case graphGL
    }
    
    static func createNetworkService(serviceType: NetworkServiceType) -> NetWorkService {
        switch serviceType {
        case .restful:
            return restfulService()
        case .graphGL:
            return graphGLService()
        }
    }
}

class restfulService: NetWorkService {
    func saveData(data: DataType, completion: (() -> Void)?) {
        // the restful api implementation
    }
}

class graphGLService: NetWorkService {
    func saveData(data: DataType, completion: (() -> Void)?) {
        // the grapgGL api implementation
    }
}

