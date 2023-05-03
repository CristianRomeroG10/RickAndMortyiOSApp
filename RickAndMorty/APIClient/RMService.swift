//
//  RMService.swift
//  RickAndMorty
//
//  Created by Cristian guillermo Romero garcia on 02/05/23.
//

import Foundation


/// Primary API service object to get Rick and Morty  data
final class RMService{
    /// Shared singleton intance
    static let shared = RMService()
    
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback With data or error
    public func execute(_ request: RMRequest, completion: @escaping() -> Void){
        
    }
}
