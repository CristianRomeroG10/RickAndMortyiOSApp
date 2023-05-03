//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Cristian guillermo Romero garcia on 02/05/23.
//

import Foundation

/// Object that represents a single API c all
final class RMRequest {
    /// API  Constants
    private struct Constants{
        static let baseUrl = "Https://rickandmortyapi.com/api"
    }
    /// Desired endpoint
    let endpoint: RMEndpoint
    
    ///  áth components for API, if any
    let pathComponents: Set<String>
    
    /// Query arguments for API, if any
    let queryParameters: [URLQueryItem]
    
    /// Constructor url for the api request in string format
    private var urlString: String{
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            string += "/"
            pathComponents.forEach ({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            // name = value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else{return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        
        return string
    }
    
    
    /// Computed & contructedAPI url
    public var url: URL?{
        return URL(string: urlString)
    }
    
    /// Desirred http Method
    public let httpMethod = "GET"
    
    // MARK: Public
    
    
    /// Construct Request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: collection of  path components
    ///   - queryParameters: collection of querry parameters
    public init(endpoint: RMEndpoint,
                pathComponents: Set<String> = [],
                queryParameters: [URLQueryItem]=[]
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
        
    }
    
    
}
