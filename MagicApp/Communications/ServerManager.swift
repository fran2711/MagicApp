//
//  ServerManager.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 20/5/23.
//

import Foundation
import Alamofire

class ServerManager {
    
    static let shared = ServerManager()
    
    var manager: Session
    
    init() {
        let configuration = URLSessionConfiguration.default
        manager = Session(configuration: configuration)
    }
    
    // MARK: - Request
    
    func request(_ url: URLConvertible,
                 method: HTTPMethod = .get,
                 parameters: Parameters? = nil,
                 encoding: ParameterEncoding = JSONEncoding.default) async throws -> Data {
        return try await withCheckedThrowingContinuation { continuation in
            manager.request(url, method: method, parameters: parameters, encoding: encoding)
                .validate()
                .responseData { dataResponse in
                    switch dataResponse.result {
                    case let .failure(error):
                        continuation.resume(throwing: self.handleError(error: error))
                    case let .success(data):
                        continuation.resume(returning: data)
                    }
                }
        }
    }
    
    private func handleError(error: AFError) -> Error {
        if let underlyingError = error.underlyingError {
            let nserror = underlyingError as NSError
            let code = nserror.code
            if code == NSURLErrorNotConnectedToInternet ||
                code == NSURLErrorTimedOut ||
                code == NSURLErrorInternationalRoamingOff ||
                code == NSURLErrorDataNotAllowed ||
                code == NSURLErrorCannotFindHost ||
                code == NSURLErrorCannotConnectToHost ||
                code == NSURLErrorNetworkConnectionLost
            {
                var userInfo = nserror.userInfo
                userInfo[NSLocalizedDescriptionKey] = "Unable to connect to the server"
                let currentError = NSError(
                    domain: nserror.domain,
                    code: code,
                    userInfo: userInfo
                )
                return currentError
            }
        }
        return error
    }
}
