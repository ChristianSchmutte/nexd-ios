//
// UserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import RxSwift



open class UserAPI {
    /**

     - parameter id: (path) user id 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<User>
     */
    open class func userControllerFindOne(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<User> {
        return Observable.create { observer -> Disposable in
            userControllerFindOneWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/user/{id}
     - BASIC:
       - type: http
       - name: bearer
     - parameter id: (path) user id 
     - returns: RequestBuilder<User> 
     */
    open class func userControllerFindOneWithRequestBuilder(id: Int) -> RequestBuilder<User> {
        var path = "/api/user/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<User>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<[User]>
     */
    open class func userControllerGetAll(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<[User]> {
        return Observable.create { observer -> Disposable in
            userControllerGetAllWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     - GET /api/user
     - BASIC:
       - type: http
       - name: bearer
     - returns: RequestBuilder<[User]> 
     */
    open class func userControllerGetAllWithRequestBuilder() -> RequestBuilder<[User]> {
        let path = "/api/user"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[User]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter id: (path) user id 
     - parameter updateUserDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<User>
     */
    open class func userControllerUpdate(id: Int, updateUserDto: UpdateUserDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<User> {
        return Observable.create { observer -> Disposable in
            userControllerUpdateWithRequestBuilder(id: id, updateUserDto: updateUserDto).execute(apiResponseQueue) { result -> Void in
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
     - PUT /api/user/{id}
     - BASIC:
       - type: http
       - name: bearer
     - parameter id: (path) user id 
     - parameter updateUserDto: (body)  
     - returns: RequestBuilder<User> 
     */
    open class func userControllerUpdateWithRequestBuilder(id: Int, updateUserDto: UpdateUserDto) -> RequestBuilder<User> {
        var path = "/api/user/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateUserDto)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<User>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}