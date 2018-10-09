//
//  MineRequest.swift
//  Wreath
//
//  Created by 杨引 on 2018/10/9.
//  Copyright © 2018 Y. All rights reserved.
//

import UIKit
import Moya


let mineProvider = MoyaProvider<MineReuest>(plugins: [NetworkLoggerPlugin(verbose: true, responseDataFormatter: JSONResponseDataFormatter)])

public enum MineReuest {
    case url1
    case url2(String,NSInteger)
    case url3(String,NSDictionary)
}

extension MineReuest: TargetType {
    
    public var baseURL: URL { return URL(string: BASE_URL)! }
    public var path: String {
        switch self {
        case .url1:
            return ""
        case .url2(let name,let count):
            return "/users/\(name)"+"/\(count)"
        case .url3(let name,_):
            return "?city=\(name.urlEscaped)"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .url1:
            return .get
        case .url2(_):
            return .get
        case .url3(_):
            return .post
        }
    }
    
    public var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }
    
    public var task: Task {
        switch self {
        case .url3(_,let param1):
            var params: [String: Any] = [:]
            params["param1"] = param1
            params["param2"] = "2017"
            return .requestParameters(parameters: params,
                                      encoding: URLEncoding.default)
        default:
            return .requestPlain
        }
    }
    
    public var headers: [String : String]? {
        return nil
    }
    
    
}
