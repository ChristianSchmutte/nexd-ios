//
// AuthenticationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import RxSwift



open class AuthenticationAPI {
    /**

     - parameter loginPayload: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<ResponseTokenDto>
     */
    open class func authControllerLogin(loginPayload: LoginPayload, apiResponseQueue: DispatchQueue = NexdClientAPI.apiResponseQueue) -> Observable<ResponseTokenDto> {
        return Observable.create { observer -> Disposable in
            authControllerLoginWithRequestBuilder(loginPayload: loginPayload).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    observer.onNext(response.body!)
                case let .failure(error):
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     - POST /api/auth/login
     - parameter loginPayload: (body)  
     - returns: RequestBuilder<ResponseTokenDto> 
     */
    open class func authControllerLoginWithRequestBuilder(loginPayload: LoginPayload) -> RequestBuilder<ResponseTokenDto> {
        let path = "/api/auth/login"
        let URLString = NexdClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: loginPayload)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ResponseTokenDto>.Type = NexdClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter registerPayload: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<ResponseTokenDto>
     */
    open class func authControllerRegister(registerPayload: RegisterPayload, apiResponseQueue: DispatchQueue = NexdClientAPI.apiResponseQueue) -> Observable<ResponseTokenDto> {
        return Observable.create { observer -> Disposable in
            authControllerRegisterWithRequestBuilder(registerPayload: registerPayload).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    observer.onNext(response.body!)
                case let .failure(error):
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     - POST /api/auth/register
     - parameter registerPayload: (body)  
     - returns: RequestBuilder<ResponseTokenDto> 
     */
    open class func authControllerRegisterWithRequestBuilder(registerPayload: RegisterPayload) -> RequestBuilder<ResponseTokenDto> {
        let path = "/api/auth/register"
        let URLString = NexdClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: registerPayload)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ResponseTokenDto>.Type = NexdClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
