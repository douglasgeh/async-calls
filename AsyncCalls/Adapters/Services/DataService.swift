//
//  DataAdapter.swift
//  AsyncCalls
//
//  Created by Douglas Gehring on 17/11/20.
//  Copyright © 2020 Douglas Gehring. All rights reserved.
//

import Foundation

///Mark: DataService

/* Responsible for managing the adapters. Lets assume we
 are in a test environment and we want to use local generated
 data. Even if this is not always a great idea sometimes it
 might help you to get trought basic testing without a developed
 backend service.
*/

class DataService {
    static let shared = DataService()
    let adapter: ServicesAdapterProtocol = DatabaseAdapter()
}
