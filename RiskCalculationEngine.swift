import Foundation

class RiskCalculationEngine {
    
    func calculateRiskDelta(currentValue: Double, previousValue: Double) -> Double {
        guard previousValue != 0 else { return 0 }
        let delta = ((currentValue - previousValue) / previousValue) * 100
        return delta
    }
    
    func evaluateHealthBehavior(type: String, severity: Int) -> Double {
        switch type {
        case "meal":
            return Double(severity) * 1.5
        case "activity":
            return Double(severity) * 0.8
        case "sleep":
            return Double(severity) * 2.0
        default:
            return Double(severity)
        }
    }
}