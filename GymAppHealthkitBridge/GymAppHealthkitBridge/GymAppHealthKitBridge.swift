import Foundation
import HealthKit

@objc public class HealthKitManager: NSObject {
    let healthStore = HKHealthStore()

    @objc public func requestAuthorization(completion: @escaping (Bool, Error?) -> Void) {
        let stepCount = HKObjectType.quantityType(forIdentifier: .stepCount)!
        let energyBurned = HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!

        let typesToShare: Set = []
        let typesToRead: Set = [stepCount, energyBurned]

        healthStore.requestAuthorization(toShare: typesToShare, read: typesToRead) { (success, error) in
            completion(success, error)
        }
    }

    @objc public func fetchStepCount(completion: @escaping (Double?, Error?) -> Void) {
        let stepType = HKQuantityType.quantityType(forIdentifier: .stepCount)!
        let startDate = Calendar.current.startOfDay(for: Date())
        let predicate = HKQuery.predicateForSamples(withStart: startDate, end: Date(), options: .strictStartDate)

        let query = HKStatisticsQuery(quantityType: stepType, quantitySamplePredicate: predicate, options: .cumulativeSum) { (_, result, error) in
            guard let result = result, let sum = result.sumQuantity() else {
                completion(nil, error)
                return
            }
            let stepCount = sum.doubleValue(for: HKUnit.count())
            completion(stepCount, nil)
        }

        healthStore.execute(query)
    }
}
