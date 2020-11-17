//
//  ModelAdapterProtocol.swift
//  AsyncCalls
//
//  Created by Douglas Gehring on 17/11/20.
//  Copyright © 2020 Douglas Gehring. All rights reserved.
//

import Foundation

/// Mark: Model  adapter
/* Lets assume that we are dealing with
 a non relational database such as the firebase
 realtime database.
 */

typealias DataServiceModelType = [String: Any?]

protocol ModelAdapter {
    func toDatabaseValue() -> DataServiceModelType
}
