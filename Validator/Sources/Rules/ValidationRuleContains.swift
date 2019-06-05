import Foundation

public struct ValidationRuleContains<T: Equatable, S: Sequence>: ValidationRule where S.Iterator.Element == T {
        
    public let error: ValidationError

    public var sequence: S
    
    public init(sequence: S, error: ValidationError) {

        self.sequence = sequence
        self.error = error
    }

    public func validate(input: T?) -> Bool {

        guard let input = input else {
            
            return false
        }
        
        return sequence.contains(input)
    }
}



