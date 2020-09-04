//
//  CustomError.swift
//  DigitasWorld
//
//  Created by ashok on 02/09/20.
//  Copyright © 2020 eSoft Technologies. All rights reserved.
//

import Foundation

enum CustomError: Error {

    case UnableToConnect
    case NoNetwork //1009
    case HTTPError(err:Error)
    case ServerError
    case TimeOut //2102
    case ParsingError
    case BadRequest
    case DatabaseError
  
    
    var localizedDescription: String {
        switch  self {
        case .UnableToConnect:
            return "Unable to Connect to server"
        case .NoNetwork:
            return "No Network"
        case .HTTPError(let error):
            return "Response Error: \(error.localizedDescription)"
        case .TimeOut:
            return "The request has timed out."
        case .ParsingError:
            return "Unable to Serialize."
        case .BadRequest:
            return "Something went wrong, network failure!"
        case .ServerError:
            return "Server Error."
        case .DatabaseError:
            return "Local storage error, try again!"
        }
    }
}
