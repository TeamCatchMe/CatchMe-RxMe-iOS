//
//  NetworkResult.swift
//  MVVM-Example
//
//  Created by Thisisme Hi on 2021/08/25.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
