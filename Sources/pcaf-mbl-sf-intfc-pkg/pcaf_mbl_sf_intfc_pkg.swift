public protocol AuthManagerProtocol {
    var roles: [String] { get }

    func getAccessToken() -> String
    func getIdToken() -> String
    func getGpid() -> String
    func validateTokens(config: [String: String]) -> Bool
    func renewTokensIfNeeded(completion:@escaping (Bool) -> Void)
}
