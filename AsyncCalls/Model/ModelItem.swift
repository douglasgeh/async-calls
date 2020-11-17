//
//  ModelItem.swift
//  AsyncCalls
//
//  Created by Douglas Gehring on 17/11/20.
//  Copyright © 2020 Douglas Gehring. All rights reserved.
//

import Foundation

struct ModelItem : ModelAdapter {
    func toDatabaseValue() -> DataServiceModelType {
        return [:]
    }
}
