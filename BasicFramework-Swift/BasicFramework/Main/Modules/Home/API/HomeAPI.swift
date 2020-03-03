//
//  HomeAPI.swift
//  BasicFramework
//
//  Created by kk on 2020/3/3.
//  Copyright © 2020 kk. All rights reserved.
//

import Foundation
import Moya


enum HomeAPI {
    // 推荐广告
    case homeRequest
    case homeRequest1(channelId:Int)
}

extension HomeAPI: TargetType {
    
    // 请求头
    public var headers: [String: String]? {
        return nil
    }
    
    // 各个请求的具体路径
    public var path: String {
        switch self {
        case .homeRequest:
            return "/school/findStudents"
        case .homeRequest1:
            return "/school/findStudents"
        }
    }
    
    // 请求类型
    public var method: Moya.Method {
        return .post
    }
    
    // 这个就是做单元测试模拟的数据，只会在单元测试文件中有作用
    public var sampleData: Data {
        return "{}".data(using: String.Encoding.utf8)!
    }
    
    // 请求任务事件（这里附带上参数）
    public var task: Task {
        var parmeters:[String:Any] = [:]
        switch self {
        case .homeRequest:
            parmeters = [
                "device": "iPhone",
                "appid": 0,
                "categoryId": -2]
        case .homeRequest1(let channelId):
            parmeters = [
                "device": "iPhone",
                "appid": 0,
                "categoryId": -2]
            parmeters["channelId"] = channelId
        }
        return .requestParameters(parameters: parmeters, encoding: URLEncoding.default)
    }
    
    // 服务器地址
    public var baseURL: URL {
        return URL(string: "http://127.0.0.1:9010")!
    }
    
}
