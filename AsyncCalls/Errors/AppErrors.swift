//
//  AppErrors.swift
//  AsyncCalls
//
//  Created by Douglas Gehring on 17/11/20.
//  Copyright © 2020 Douglas Gehring. All rights reserved.
//

import Foundation


/// Mark: AppErrors

/* Some differente erros definitions that
 you can use to handle the API most common
 errors.
*/


enum AppErrors: LocalizedError {
    case undefinedPath
    case invalidData
    case nullObjects
    
    var errorDescription: String? {
        switch self {
        case .undefinedPath: return "Invalid path"
        case .invalidData: return "Invalid data type"
        case .nullObjects: return "Null objects"
        }
    }
    
    var errorCode: Int? {
        switch self {
        case .undefinedPath: return nil
        case .invalidData: return nil
        case .nullObjects: return nil
        }
    }
}
