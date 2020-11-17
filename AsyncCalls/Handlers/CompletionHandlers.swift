//
//  CompletionHandlers.swift
//  AsyncCalls
//
//  Created by Douglas Gehring on 16/11/20.
//  Copyright © 2020 Douglas Gehring. All rights reserved.
//

import Foundation


typealias LoadDataCompletionHandler = (LoadDataCompletion) -> Void
typealias SaveDataCompletionHandler = (SaveDataCompletion) -> Void

/// Mark: LoadDataCompletion

/* The callback associated with the load data completion handler
*/

enum LoadDataCompletion {
    case onSuccess (Any)
    case onError (Error)
    case onUndefined
}

/// Mark: SaveDataCompletion

/* The callback associated with the saving data completion handler
*/


enum SaveDataCompletion {
    case onSucces
    case onError(Error)
}

