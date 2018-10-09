//
//  BaseRequest.swift
//  Wreath
//
//  Created by 杨引 on 2018/10/9.
//  Copyright © 2018 Y. All rights reserved.
//

import Foundation
import Moya

public func JSONResponseDataFormatter(_ data: Data) -> Data {
    do {
        let dataAsJSON = try JSONSerialization.jsonObject(with: data)
        let prettyData =  try JSONSerialization.data(withJSONObject: dataAsJSON, options: .prettyPrinted)
        return prettyData
    } catch {
        return data // fallback to original data if it can't be serialized.
    }
}

public extension String {
    var urlEscaped: String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }
}

let baseRequest = MoyaProvider<BaseRequest>(plugins: [NetworkLoggerPlugin(verbose: true, responseDataFormatter: JSONResponseDataFormatter)])

public enum BaseRequest {
    case base
   
}

extension BaseRequest: TargetType {
    
    public var baseURL: URL { return URL(string: BASE_URL)! }
    public var path: String {
        switch self {
        case .base:
            return ""
        }
    }
    public var method: Moya.Method {
        switch self {
        case .base:
        return .get
        }
    }
    
    public var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }
    
    public var task: Task {
        return .requestPlain
    }
    
    public var headers: [String : String]? {
        return nil
    }
    
    
}
