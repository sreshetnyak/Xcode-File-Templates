//
//  NetworkProvider.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Moya
import RxSwift

class NetworkProvider {
    
    var provider: MoyaProvider<APIService>
    
    init() {
        self.provider = MoyaProvider<APIService>(plugins: [CustomNetworkLoggerPlugin(verbose: true)])
    }
    
    /*
     add here handle on 401 error
     */
    func request(target: APIService) -> Single<Response> {
        return privateRequest(target: target)
    }
    
    private func privateRequest(target: APIService) -> Single<Response> {
        return provider.rx.request(target)
            .do(onSuccess: { _ in
                NetworkActivityIndicatorManager.networkOperationFinished()
            }, onError: { _ in
                NetworkActivityIndicatorManager.networkOperationFinished()
            }, onSubscribe: {
                NetworkActivityIndicatorManager.networkOperationStarted()
            })
    }
}

