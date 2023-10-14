//
//  HTTPStatus.swift
//  Networking
//
//  Created by Theo Ntogiakos on 14/10/2023.
//

public enum HTTPStatus: Int {
    // Informational
    case `continue` = 100
    case switchingProtocols = 101
    case earlyHints = 103
    
    // Successful
    case ok = 200
    case created = 201
    case accepted = 202
    case nonAuthoritativeInformation = 203
    case noContent = 204
    case resetContent = 205
    case partialContent = 206
    
    // Redirection
    case multipleChoices = 300
    case movedPermanently = 301
    case found = 302
    case seeOther = 303
    case notModified = 304
    case temporaryRedirect = 307
    case permanentRedirect = 308
    
    // Client Error
    case badRequest = 400
    case unauthorized = 401
    case paymentRequired = 402
    case forbidden = 403
    case notFound = 404
    case methodNotAllowed = 405
    case notAcceptable = 406
    case proxyAuthenticationRequired = 407
    case requestTimeout = 408
    case conflict = 409
    case gone = 410
    case lengthRequired = 411
    case preconditionFailed = 412
    case payloadTooLarge = 413
    case uriTooLong = 414
    case unsupportedMediaType = 415
    case rangeNotSatisfiable = 416
    case expectationFailed = 417
    case imATeapot = 418
    case unprocessableEntity = 422
    case tooEarly = 425
    case upgradeRequired = 426
    case preconditionRequired = 428
    case tooManyRequests = 429
    case requestHeaderFieldsTooLarge = 431
    case unavailableForLegalReasons = 451
    
    // Server Error
    case internalServerError = 500
    case notImplemented = 501
    case badGateway = 502
    case serviceUnavailable = 503
    case gatewayTimeout = 504
    case httpVersionNotSupported = 505
    case variantAlsoNegotiates = 506
    case insufficientStorage = 507
    case loopDetected = 508
    case notExtended = 510
    case networkAuthenticationRequired = 511
    
    var responseType: String {
        switch self {
        case .`continue`, .switchingProtocols, .earlyHints:
            return "Informational"
        case .ok, .created, .accepted, .nonAuthoritativeInformation, .noContent, .resetContent, .partialContent:
            return "Successful"
        case .multipleChoices, .movedPermanently, .found, .seeOther, .notModified, .temporaryRedirect, .permanentRedirect:
            return "Redirection"
        case .badRequest, .unauthorized, .paymentRequired, .forbidden, .notFound, .methodNotAllowed, .notAcceptable,
                .proxyAuthenticationRequired, .requestTimeout, .conflict, .gone, .lengthRequired, .preconditionFailed,
                .payloadTooLarge, .uriTooLong, .unsupportedMediaType, .rangeNotSatisfiable, .expectationFailed,
                .imATeapot, .unprocessableEntity, .tooEarly, .upgradeRequired, .preconditionRequired, .tooManyRequests,
                .requestHeaderFieldsTooLarge, .unavailableForLegalReasons:
            return "Client Error"
        case .internalServerError, .notImplemented, .badGateway, .serviceUnavailable, .gatewayTimeout,
                .httpVersionNotSupported, .variantAlsoNegotiates, .insufficientStorage, .loopDetected, .notExtended,
                .networkAuthenticationRequired:
            return "Server Error"
        }
    }
    
    var message: String {
        switch self {
        case .`continue`: return "Continue"
        case .switchingProtocols: return "Switching Protocols"
        case .earlyHints: return "Early Hints"
        case .ok: return "OK"
        case .created: return "Created"
        case .accepted: return "Accepted"
        case .nonAuthoritativeInformation: return "Non-Authoritative Information"
        case .noContent: return "No Content"
        case .resetContent: return "Reset Content"
        case .partialContent: return "Partial Content"
        case .multipleChoices: return "Multiple Choices"
        case .movedPermanently: return "Moved Permanently"
        case .found: return "Found"
        case .seeOther: return "See Other"
        case .notModified: return "Not Modified"
        case .temporaryRedirect: return "Temporary Redirect"
        case .permanentRedirect: return "Permanent Redirect"
        case .badRequest: return "Bad Request"
        case .unauthorized: return "Unauthorized"
        case .paymentRequired: return "Payment Required"
        case .forbidden: return "Forbidden"
        case .notFound: return "Not Found"
        case .methodNotAllowed: return "Method Not Allowed"
        case .notAcceptable: return "Not Acceptable"
        case .proxyAuthenticationRequired: return "Proxy Authentication Required"
        case .requestTimeout: return "Request Timeout"
        case .conflict: return "Conflict"
        case .gone: return "Gone"
        case .lengthRequired: return "Length Required"
        case .preconditionFailed: return "Precondition Failed"
        case .payloadTooLarge: return "Payload Too Large"
        case .uriTooLong: return "URI Too Long"
        case .unsupportedMediaType: return "Unsupported Media Type"
        case .rangeNotSatisfiable: return "Range Not Satisfiable"
        case .expectationFailed: return "Expectation Failed"
        case .imATeapot: return "I'm a Teapot"
        case .unprocessableEntity: return "Unprocessable Entity"
        case .tooEarly: return "Too Early"
        case .upgradeRequired: return "Upgrade Required"
        case .preconditionRequired: return "Precondition Required"
        case .tooManyRequests: return "Too Many Requests"
        case .requestHeaderFieldsTooLarge: return "Request Header Fields Too Large"
        case .unavailableForLegalReasons: return "Unavailable For Legal Reasons"
        case .internalServerError: return "Internal Server Error"
        case .notImplemented: return "Not Implemented"
        case .badGateway: return "Bad Gateway"
        case .serviceUnavailable: return "Service Unavailable"
        case .gatewayTimeout: return "Gateway Timeout"
        case .httpVersionNotSupported: return "HTTP Version Not Supported"
        case .variantAlsoNegotiates: return "Variant Also Negotiates"
        case .insufficientStorage: return "Insufficient Storage"
        case .loopDetected: return "Loop Detected"
        case .notExtended: return "Not Extended"
        case .networkAuthenticationRequired: return "Network Authentication Required"
        }
    }
    
    public var description: String {
        return "Status \(rawValue). \(responseType). \(message)"
    }
}

