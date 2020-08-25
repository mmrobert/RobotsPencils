//
//  NetworkServiceFactory.swift
//  RobotsPencils
//
//  Created by boqian cheng on 2020-08-25.
//  Copyright © 2020 boqiancheng. All rights reserved.
//

import Foundation

struct NetworkServiceFactory {
    
    // for future
    enum NetworkServiceType {
        case restful
        case graphGL
    }
    
    static func createNetworkService(serviceType: NetworkServiceType) -> NetWorkService {
        switch serviceType {
        case .restful:
            return RestfulService()
        case .graphGL:
            return GraphGLService()
        }
    }
}

class RestfulService: NetWorkService {
    func saveData(data: DataType, completion: (() -> Void)?) {
        // the restful api implementation
    }
}

class GraphGLService: NetWorkService {
    func saveData(data: DataType, completion: (() -> Void)?) {
        // the grapgGL api implementation
    }
}

