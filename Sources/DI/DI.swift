public final class DI {
    public static let shared = DI()
    
    private var registredComponents: [String: Any] = [:]
    private init() {}
    
    @discardableResult
    public func register<T>(type: T.Type, component: T) -> T {
        registredComponents["\(type)"] = component
        return component
    }
    
    public func resolve<T>(type: T.Type) -> T {
        if let component = registredComponents["\(type)"] as? T {
            return component
        } else {
            fatalError("A component for the type \(type) is not registred")
        }
    }
}
