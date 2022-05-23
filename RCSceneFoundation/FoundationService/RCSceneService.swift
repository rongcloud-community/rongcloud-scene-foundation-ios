
import Moya

public let RCSServiceLogger: NetworkLoggerPlugin = {
    let plugin = NetworkLoggerPlugin()
    plugin.configuration.logOptions = .verbose
    return plugin
}()

public protocol RCSServiceType: TargetType {}
public extension RCSServiceType {
    var headers: [String : String]? { [:] }
}

public typealias RCSCompletion = Moya.Completion
public typealias RCSProvider = Moya.MoyaProvider
public typealias RCSMethod = Moya.Method
public typealias RCSTask = Moya.Task
