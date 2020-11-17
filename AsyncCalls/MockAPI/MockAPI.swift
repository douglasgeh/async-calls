//
//  MockAPI.swift
//  AsyncCalls
//
//  Created by Douglas Gehring on 17/11/20.
//  Copyright © 2020 Douglas Gehring. All rights reserved.
//

import Foundation

/// Mark: MockAPI

/* Responsible for simulating the API service, since
 for this specific project we don't have one setup.
 We are assuming the the MockAPI works as non relational
 database, such as firebase realtime database.
*/

class MockAPI {
    
    static let shared = MockAPI()
    
    func save(data: ModelAdapter, toPath path: String, completion: @escaping(_ callbackRef: String? , _ error: Error?) -> Void) {
        completion(nil, AppErrors.invalidData)
    }
    
    func loadData(fromPath path: String, completion: @escaping(_ data: Any?, _ error: Error?) -> Void) {
        completion(nil, AppErrors.undefinedPath)
    }
}
