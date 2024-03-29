//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Cristian guillermo Romero garcia on 02/05/23.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String{
    /// Endpoint to get character info
    case character
    /// Endpoint to get locationr info
    case location
    /// Endpoint to get episode info
    case episode
}
