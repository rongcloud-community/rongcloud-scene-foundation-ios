
import Moya

public let RCSceneServiceLogger: NetworkLoggerPlugin = {
    let plgn = NetworkLoggerPlugin()
    plgn.configuration.logOptions = .verbose
    return plgn
}()

public protocol RCServiceType: TargetType {}
public extension RCServiceType {
    var headers: [String : String]? { [:] }
}

public typealias RCSceneServiceCompletion = Moya.Completion
public typealias RCSceneProvider = Moya.MoyaProvider
