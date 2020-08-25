//
//  ExampleUsage.swift
//  RobotsPencils
//
//  Created by boqian cheng on 2020-08-25.
//  Copyright © 2020 boqiancheng. All rights reserved.
//

import Foundation

class ExampleUsage {
    
    func saveData() {
        // saving 'RPAnnotation' through 'RPComment'
        let rPAnnotation = RPAnnotation()
        let rPComment = RPComment()
        rPComment.save(data: rPAnnotation, to: .restful)
        // also saving 'RPComment'
        rPComment.save(to: .restful)
    }
}

struct RPAnnotation: DataType {
    
    func encode(to encoder: Encoder) throws {
        // the custom 'encode' function
        // to match data format on server
    }
}
