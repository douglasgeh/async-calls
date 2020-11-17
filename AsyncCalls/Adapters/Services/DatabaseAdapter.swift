//
//  FirebaseAdapter.swift
//  AsyncCalls
//
//  Created by Douglas Gehring on 17/11/20.
//  Copyright © 2020 Douglas Gehring. All rights reserved.
//

import Foundation

///Mark: DatabaseAdapter

/* Responsible for delivering the API service
 to the client. Currently beeing accessed from
 the DataService class.
*/

class DatabaseAdapter : ServicesAdapterProtocol {
    
    func save(data: ModelAdapter, to path: String, completion: @escaping SaveDataCompletionHandler) {
        MockAPI.shared.save(data: data, toPath: path) { _, _error in
            guard let error = _error else {
                completion(.onSucces)
                return
            }
            completion(.onError(error))
        }
    }
    
    func loadData(fromPath path: String, completion: @escaping LoadDataCompletionHandler) {
        MockAPI.shared.loadData(fromPath: path) { _data, _error in
            guard let data = _data else {
                if let error = _error {
                    completion(.onError(error))
                } else {
                    completion(.onUndefined)
                }
                return
            }
            completion(.onSuccess(data))
        }
    }
}
