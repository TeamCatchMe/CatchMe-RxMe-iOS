////
////  ArticleService.swift
////  MVVM-Example
////
////  Created by Thisisme Hi on 2021/08/25.
////
//
//import Foundation
//
//import Alamofire
//
//class ArticleService {
//    static let shared = ArticleService()
//    
//    func fetchNews(completion: @escaping(NetworkResult<Any>) -> Void) {
//        let decoder = JSONDecoder()
//        let dataRequest = AF.request(APIConstant.baseURL,
//                                     method: .get,
//                                     parameters: nil,
//                                     encoding: JSONEncoding.default,
//                                     headers: nil).validate(statusCode: 200..<300)
//        
//        dataRequest.responseData { response in
//            switch response.result {
//            case .success:
//                guard let data = response.value else { return }
//                guard let decodedData = try? decoder.decode(ArticleModel.self, from: data)
//                else { return completion(.pathErr) }
//                completion(.success(decodedData))
//                
//            case .failure:
//                completion(.networkFail)
//            }
//        }
//        
//    }
//}
//
