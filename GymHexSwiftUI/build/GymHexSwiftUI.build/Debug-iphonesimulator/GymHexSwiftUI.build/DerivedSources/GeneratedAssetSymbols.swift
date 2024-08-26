import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "BBRow" asset catalog image resource.
    static let bbRow = DeveloperToolsSupport.ImageResource(name: "BBRow", bundle: resourceBundle)

    /// The "BarbellSplitSquat" asset catalog image resource.
    static let barbellSplitSquat = DeveloperToolsSupport.ImageResource(name: "BarbellSplitSquat", bundle: resourceBundle)

    /// The "BicepCurlsBB" asset catalog image resource.
    static let bicepCurlsBB = DeveloperToolsSupport.ImageResource(name: "BicepCurlsBB", bundle: resourceBundle)

    /// The "BicepCurlsDB" asset catalog image resource.
    static let bicepCurlsDB = DeveloperToolsSupport.ImageResource(name: "BicepCurlsDB", bundle: resourceBundle)

    /// The "CableCurlsStraightBar" asset catalog image resource.
    static let cableCurlsStraightBar = DeveloperToolsSupport.ImageResource(name: "CableCurlsStraightBar", bundle: resourceBundle)

    /// The "CableHammerCurls" asset catalog image resource.
    static let cableHammerCurls = DeveloperToolsSupport.ImageResource(name: "CableHammerCurls", bundle: resourceBundle)

    /// The "CableRopeOverheadExtensions" asset catalog image resource.
    static let cableRopeOverheadExtensions = DeveloperToolsSupport.ImageResource(name: "CableRopeOverheadExtensions", bundle: resourceBundle)

    /// The "CalfRaises" asset catalog image resource.
    static let calfRaises = DeveloperToolsSupport.ImageResource(name: "CalfRaises", bundle: resourceBundle)

    /// The "ChestFly" asset catalog image resource.
    static let chestFly = DeveloperToolsSupport.ImageResource(name: "ChestFly", bundle: resourceBundle)

    /// The "ChinUps" asset catalog image resource.
    static let chinUps = DeveloperToolsSupport.ImageResource(name: "ChinUps", bundle: resourceBundle)

    /// The "DBRow" asset catalog image resource.
    static let dbRow = DeveloperToolsSupport.ImageResource(name: "DBRow", bundle: resourceBundle)

    /// The "DeadLift" asset catalog image resource.
    static let deadLift = DeveloperToolsSupport.ImageResource(name: "DeadLift", bundle: resourceBundle)

    /// The "DeclineBBBench" asset catalog image resource.
    static let declineBBBench = DeveloperToolsSupport.ImageResource(name: "DeclineBBBench", bundle: resourceBundle)

    /// The "DeclineChestPress" asset catalog image resource.
    static let declineChestPress = DeveloperToolsSupport.ImageResource(name: "DeclineChestPress", bundle: resourceBundle)

    /// The "DeclineDBBench" asset catalog image resource.
    static let declineDBBench = DeveloperToolsSupport.ImageResource(name: "DeclineDBBench", bundle: resourceBundle)

    /// The "DualLegCurls" asset catalog image resource.
    static let dualLegCurls = DeveloperToolsSupport.ImageResource(name: "DualLegCurls", bundle: resourceBundle)

    /// The "DualLegExtension" asset catalog image resource.
    static let dualLegExtension = DeveloperToolsSupport.ImageResource(name: "DualLegExtension", bundle: resourceBundle)

    /// The "FacePulls" asset catalog image resource.
    static let facePulls = DeveloperToolsSupport.ImageResource(name: "FacePulls", bundle: resourceBundle)

    /// The "FlatBBBench" asset catalog image resource.
    static let flatBBBench = DeveloperToolsSupport.ImageResource(name: "FlatBBBench", bundle: resourceBundle)

    /// The "FlatChestPress" asset catalog image resource.
    static let flatChestPress = DeveloperToolsSupport.ImageResource(name: "FlatChestPress", bundle: resourceBundle)

    /// The "FlatDBBench" asset catalog image resource.
    static let flatDBBench = DeveloperToolsSupport.ImageResource(name: "FlatDBBench", bundle: resourceBundle)

    /// The "GluteBridge" asset catalog image resource.
    static let gluteBridge = DeveloperToolsSupport.ImageResource(name: "GluteBridge", bundle: resourceBundle)

    /// The "GobletSquat" asset catalog image resource.
    static let gobletSquat = DeveloperToolsSupport.ImageResource(name: "GobletSquat", bundle: resourceBundle)

    /// The "GymHexFriendsIconActivated" asset catalog image resource.
    static let gymHexFriendsIconActivated = DeveloperToolsSupport.ImageResource(name: "GymHexFriendsIconActivated", bundle: resourceBundle)

    /// The "GymHexFriendsIconDeactivated" asset catalog image resource.
    static let gymHexFriendsIconDeactivated = DeveloperToolsSupport.ImageResource(name: "GymHexFriendsIconDeactivated", bundle: resourceBundle)

    /// The "GymHexLeaderboardIconActivated" asset catalog image resource.
    static let gymHexLeaderboardIconActivated = DeveloperToolsSupport.ImageResource(name: "GymHexLeaderboardIconActivated", bundle: resourceBundle)

    /// The "GymHexLeaderboardIconDeactivated" asset catalog image resource.
    static let gymHexLeaderboardIconDeactivated = DeveloperToolsSupport.ImageResource(name: "GymHexLeaderboardIconDeactivated", bundle: resourceBundle)

    /// The "GymHexMainLogo" asset catalog image resource.
    static let gymHexMainLogo = DeveloperToolsSupport.ImageResource(name: "GymHexMainLogo", bundle: resourceBundle)

    /// The "GymHexMainPageIconActivated" asset catalog image resource.
    static let gymHexMainPageIconActivated = DeveloperToolsSupport.ImageResource(name: "GymHexMainPageIconActivated", bundle: resourceBundle)

    /// The "GymHexMainPageIconDeactivated" asset catalog image resource.
    static let gymHexMainPageIconDeactivated = DeveloperToolsSupport.ImageResource(name: "GymHexMainPageIconDeactivated", bundle: resourceBundle)

    /// The "GymHexSettingsIconActivated" asset catalog image resource.
    static let gymHexSettingsIconActivated = DeveloperToolsSupport.ImageResource(name: "GymHexSettingsIconActivated", bundle: resourceBundle)

    /// The "GymHexSettingsIconDeactivated" asset catalog image resource.
    static let gymHexSettingsIconDeactivated = DeveloperToolsSupport.ImageResource(name: "GymHexSettingsIconDeactivated", bundle: resourceBundle)

    /// The "GymHexTopperLogo" asset catalog image resource.
    static let gymHexTopperLogo = DeveloperToolsSupport.ImageResource(name: "GymHexTopperLogo", bundle: resourceBundle)

    /// The "HammerCurls" asset catalog image resource.
    static let hammerCurls = DeveloperToolsSupport.ImageResource(name: "HammerCurls", bundle: resourceBundle)

    /// The "InclineBBBench" asset catalog image resource.
    static let inclineBBBench = DeveloperToolsSupport.ImageResource(name: "InclineBBBench", bundle: resourceBundle)

    /// The "InclineChestPress" asset catalog image resource.
    static let inclineChestPress = DeveloperToolsSupport.ImageResource(name: "InclineChestPress", bundle: resourceBundle)

    /// The "InclineDBBench" asset catalog image resource.
    static let inclineDBBench = DeveloperToolsSupport.ImageResource(name: "InclineDBBench", bundle: resourceBundle)

    /// The "KneelingSingleArmLatPullDown" asset catalog image resource.
    static let kneelingSingleArmLatPullDown = DeveloperToolsSupport.ImageResource(name: "KneelingSingleArmLatPullDown", bundle: resourceBundle)

    /// The "LateralRaiseCable" asset catalog image resource.
    static let lateralRaiseCable = DeveloperToolsSupport.ImageResource(name: "LateralRaiseCable", bundle: resourceBundle)

    /// The "LateralRaiseDB" asset catalog image resource.
    static let lateralRaiseDB = DeveloperToolsSupport.ImageResource(name: "LateralRaiseDB", bundle: resourceBundle)

    /// The "LateralRaiseMachine" asset catalog image resource.
    static let lateralRaiseMachine = DeveloperToolsSupport.ImageResource(name: "LateralRaiseMachine", bundle: resourceBundle)

    /// The "LegPressMachine" asset catalog image resource.
    static let legPressMachine = DeveloperToolsSupport.ImageResource(name: "LegPressMachine", bundle: resourceBundle)

    /// The "LegPressPlates" asset catalog image resource.
    static let legPressPlates = DeveloperToolsSupport.ImageResource(name: "LegPressPlates", bundle: resourceBundle)

    /// The "LungesDB" asset catalog image resource.
    static let lungesDB = DeveloperToolsSupport.ImageResource(name: "LungesDB", bundle: resourceBundle)

    /// The "MachineLatPulldown" asset catalog image resource.
    static let machineLatPulldown = DeveloperToolsSupport.ImageResource(name: "MachineLatPulldown", bundle: resourceBundle)

    /// The "NarrowGripLatPulldown" asset catalog image resource.
    static let narrowGripLatPulldown = DeveloperToolsSupport.ImageResource(name: "NarrowGripLatPulldown", bundle: resourceBundle)

    /// The "OneLegExtension" asset catalog image resource.
    static let oneLegExtension = DeveloperToolsSupport.ImageResource(name: "OneLegExtension", bundle: resourceBundle)

    /// The "PecDeck" asset catalog image resource.
    static let pecDeck = DeveloperToolsSupport.ImageResource(name: "PecDeck", bundle: resourceBundle)

    /// The "PreacherCurlBB" asset catalog image resource.
    static let preacherCurlBB = DeveloperToolsSupport.ImageResource(name: "PreacherCurlBB", bundle: resourceBundle)

    /// The "PreacherCurlDB" asset catalog image resource.
    static let preacherCurlDB = DeveloperToolsSupport.ImageResource(name: "PreacherCurlDB", bundle: resourceBundle)

    /// The "RearDeltFly" asset catalog image resource.
    static let rearDeltFly = DeveloperToolsSupport.ImageResource(name: "RearDeltFly", bundle: resourceBundle)

    /// The "ReverseCableCrossover" asset catalog image resource.
    static let reverseCableCrossover = DeveloperToolsSupport.ImageResource(name: "ReverseCableCrossover", bundle: resourceBundle)

    /// The "ReverseGripLatPullDown" asset catalog image resource.
    static let reverseGripLatPullDown = DeveloperToolsSupport.ImageResource(name: "ReverseGripLatPullDown", bundle: resourceBundle)

    /// The "ShoulderPressBB" asset catalog image resource.
    static let shoulderPressBB = DeveloperToolsSupport.ImageResource(name: "ShoulderPressBB", bundle: resourceBundle)

    /// The "ShoulderPressDB" asset catalog image resource.
    static let shoulderPressDB = DeveloperToolsSupport.ImageResource(name: "ShoulderPressDB", bundle: resourceBundle)

    /// The "ShoulderPressMachine" asset catalog image resource.
    static let shoulderPressMachine = DeveloperToolsSupport.ImageResource(name: "ShoulderPressMachine", bundle: resourceBundle)

    /// The "ShoulderShrugs" asset catalog image resource.
    static let shoulderShrugs = DeveloperToolsSupport.ImageResource(name: "ShoulderShrugs", bundle: resourceBundle)

    /// The "SingleArmCableRow" asset catalog image resource.
    static let singleArmCableRow = DeveloperToolsSupport.ImageResource(name: "SingleArmCableRow", bundle: resourceBundle)

    /// The "SingleLegCurl" asset catalog image resource.
    static let singleLegCurl = DeveloperToolsSupport.ImageResource(name: "SingleLegCurl", bundle: resourceBundle)

    /// The "SquatBB" asset catalog image resource.
    static let squatBB = DeveloperToolsSupport.ImageResource(name: "SquatBB", bundle: resourceBundle)

    /// The "StandardLatPullDown" asset catalog image resource.
    static let standardLatPullDown = DeveloperToolsSupport.ImageResource(name: "StandardLatPullDown", bundle: resourceBundle)

    /// The "StandingStraightArmPullDown" asset catalog image resource.
    static let standingStraightArmPullDown = DeveloperToolsSupport.ImageResource(name: "StandingStraightArmPullDown", bundle: resourceBundle)

    /// The "TricepCableKickbacks" asset catalog image resource.
    static let tricepCableKickbacks = DeveloperToolsSupport.ImageResource(name: "TricepCableKickbacks", bundle: resourceBundle)

    /// The "TricepDips" asset catalog image resource.
    static let tricepDips = DeveloperToolsSupport.ImageResource(name: "TricepDips", bundle: resourceBundle)

    /// The "TricepExtensionsMachine" asset catalog image resource.
    static let tricepExtensionsMachine = DeveloperToolsSupport.ImageResource(name: "TricepExtensionsMachine", bundle: resourceBundle)

    /// The "TricepKickBacks" asset catalog image resource.
    static let tricepKickBacks = DeveloperToolsSupport.ImageResource(name: "TricepKickBacks", bundle: resourceBundle)

    /// The "TricepRopePushdown" asset catalog image resource.
    static let tricepRopePushdown = DeveloperToolsSupport.ImageResource(name: "TricepRopePushdown", bundle: resourceBundle)

    /// The "TricepStraightBarPushdown" asset catalog image resource.
    static let tricepStraightBarPushdown = DeveloperToolsSupport.ImageResource(name: "TricepStraightBarPushdown", bundle: resourceBundle)

    /// The "TricepVBarPushdown" asset catalog image resource.
    static let tricepVBarPushdown = DeveloperToolsSupport.ImageResource(name: "TricepVBarPushdown", bundle: resourceBundle)

    /// The "VBarLatPulldown" asset catalog image resource.
    static let vBarLatPulldown = DeveloperToolsSupport.ImageResource(name: "VBarLatPulldown", bundle: resourceBundle)

    /// The "VGripCableRow" asset catalog image resource.
    static let vGripCableRow = DeveloperToolsSupport.ImageResource(name: "VGripCableRow", bundle: resourceBundle)

    /// The "WideGripCableRow" asset catalog image resource.
    static let wideGripCableRow = DeveloperToolsSupport.ImageResource(name: "WideGripCableRow", bundle: resourceBundle)

    /// The "WideGripLatPulldown" asset catalog image resource.
    static let wideGripLatPulldown = DeveloperToolsSupport.ImageResource(name: "WideGripLatPulldown", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "BBRow" asset catalog image.
    static var bbRow: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .bbRow)
#else
        .init()
#endif
    }

    /// The "BarbellSplitSquat" asset catalog image.
    static var barbellSplitSquat: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .barbellSplitSquat)
#else
        .init()
#endif
    }

    /// The "BicepCurlsBB" asset catalog image.
    static var bicepCurlsBB: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .bicepCurlsBB)
#else
        .init()
#endif
    }

    /// The "BicepCurlsDB" asset catalog image.
    static var bicepCurlsDB: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .bicepCurlsDB)
#else
        .init()
#endif
    }

    /// The "CableCurlsStraightBar" asset catalog image.
    static var cableCurlsStraightBar: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cableCurlsStraightBar)
#else
        .init()
#endif
    }

    /// The "CableHammerCurls" asset catalog image.
    static var cableHammerCurls: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cableHammerCurls)
#else
        .init()
#endif
    }

    /// The "CableRopeOverheadExtensions" asset catalog image.
    static var cableRopeOverheadExtensions: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cableRopeOverheadExtensions)
#else
        .init()
#endif
    }

    /// The "CalfRaises" asset catalog image.
    static var calfRaises: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .calfRaises)
#else
        .init()
#endif
    }

    /// The "ChestFly" asset catalog image.
    static var chestFly: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .chestFly)
#else
        .init()
#endif
    }

    /// The "ChinUps" asset catalog image.
    static var chinUps: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .chinUps)
#else
        .init()
#endif
    }

    /// The "DBRow" asset catalog image.
    static var dbRow: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .dbRow)
#else
        .init()
#endif
    }

    /// The "DeadLift" asset catalog image.
    static var deadLift: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .deadLift)
#else
        .init()
#endif
    }

    /// The "DeclineBBBench" asset catalog image.
    static var declineBBBench: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .declineBBBench)
#else
        .init()
#endif
    }

    /// The "DeclineChestPress" asset catalog image.
    static var declineChestPress: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .declineChestPress)
#else
        .init()
#endif
    }

    /// The "DeclineDBBench" asset catalog image.
    static var declineDBBench: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .declineDBBench)
#else
        .init()
#endif
    }

    /// The "DualLegCurls" asset catalog image.
    static var dualLegCurls: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .dualLegCurls)
#else
        .init()
#endif
    }

    /// The "DualLegExtension" asset catalog image.
    static var dualLegExtension: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .dualLegExtension)
#else
        .init()
#endif
    }

    /// The "FacePulls" asset catalog image.
    static var facePulls: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .facePulls)
#else
        .init()
#endif
    }

    /// The "FlatBBBench" asset catalog image.
    static var flatBBBench: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .flatBBBench)
#else
        .init()
#endif
    }

    /// The "FlatChestPress" asset catalog image.
    static var flatChestPress: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .flatChestPress)
#else
        .init()
#endif
    }

    /// The "FlatDBBench" asset catalog image.
    static var flatDBBench: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .flatDBBench)
#else
        .init()
#endif
    }

    /// The "GluteBridge" asset catalog image.
    static var gluteBridge: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gluteBridge)
#else
        .init()
#endif
    }

    /// The "GobletSquat" asset catalog image.
    static var gobletSquat: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gobletSquat)
#else
        .init()
#endif
    }

    /// The "GymHexFriendsIconActivated" asset catalog image.
    static var gymHexFriendsIconActivated: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gymHexFriendsIconActivated)
#else
        .init()
#endif
    }

    /// The "GymHexFriendsIconDeactivated" asset catalog image.
    static var gymHexFriendsIconDeactivated: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gymHexFriendsIconDeactivated)
#else
        .init()
#endif
    }

    /// The "GymHexLeaderboardIconActivated" asset catalog image.
    static var gymHexLeaderboardIconActivated: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gymHexLeaderboardIconActivated)
#else
        .init()
#endif
    }

    /// The "GymHexLeaderboardIconDeactivated" asset catalog image.
    static var gymHexLeaderboardIconDeactivated: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gymHexLeaderboardIconDeactivated)
#else
        .init()
#endif
    }

    /// The "GymHexMainLogo" asset catalog image.
    static var gymHexMainLogo: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gymHexMainLogo)
#else
        .init()
#endif
    }

    /// The "GymHexMainPageIconActivated" asset catalog image.
    static var gymHexMainPageIconActivated: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gymHexMainPageIconActivated)
#else
        .init()
#endif
    }

    /// The "GymHexMainPageIconDeactivated" asset catalog image.
    static var gymHexMainPageIconDeactivated: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gymHexMainPageIconDeactivated)
#else
        .init()
#endif
    }

    /// The "GymHexSettingsIconActivated" asset catalog image.
    static var gymHexSettingsIconActivated: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gymHexSettingsIconActivated)
#else
        .init()
#endif
    }

    /// The "GymHexSettingsIconDeactivated" asset catalog image.
    static var gymHexSettingsIconDeactivated: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gymHexSettingsIconDeactivated)
#else
        .init()
#endif
    }

    /// The "GymHexTopperLogo" asset catalog image.
    static var gymHexTopperLogo: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gymHexTopperLogo)
#else
        .init()
#endif
    }

    /// The "HammerCurls" asset catalog image.
    static var hammerCurls: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .hammerCurls)
#else
        .init()
#endif
    }

    /// The "InclineBBBench" asset catalog image.
    static var inclineBBBench: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .inclineBBBench)
#else
        .init()
#endif
    }

    /// The "InclineChestPress" asset catalog image.
    static var inclineChestPress: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .inclineChestPress)
#else
        .init()
#endif
    }

    /// The "InclineDBBench" asset catalog image.
    static var inclineDBBench: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .inclineDBBench)
#else
        .init()
#endif
    }

    /// The "KneelingSingleArmLatPullDown" asset catalog image.
    static var kneelingSingleArmLatPullDown: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .kneelingSingleArmLatPullDown)
#else
        .init()
#endif
    }

    /// The "LateralRaiseCable" asset catalog image.
    static var lateralRaiseCable: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .lateralRaiseCable)
#else
        .init()
#endif
    }

    /// The "LateralRaiseDB" asset catalog image.
    static var lateralRaiseDB: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .lateralRaiseDB)
#else
        .init()
#endif
    }

    /// The "LateralRaiseMachine" asset catalog image.
    static var lateralRaiseMachine: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .lateralRaiseMachine)
#else
        .init()
#endif
    }

    /// The "LegPressMachine" asset catalog image.
    static var legPressMachine: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .legPressMachine)
#else
        .init()
#endif
    }

    /// The "LegPressPlates" asset catalog image.
    static var legPressPlates: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .legPressPlates)
#else
        .init()
#endif
    }

    /// The "LungesDB" asset catalog image.
    static var lungesDB: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .lungesDB)
#else
        .init()
#endif
    }

    /// The "MachineLatPulldown" asset catalog image.
    static var machineLatPulldown: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .machineLatPulldown)
#else
        .init()
#endif
    }

    /// The "NarrowGripLatPulldown" asset catalog image.
    static var narrowGripLatPulldown: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .narrowGripLatPulldown)
#else
        .init()
#endif
    }

    /// The "OneLegExtension" asset catalog image.
    static var oneLegExtension: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .oneLegExtension)
#else
        .init()
#endif
    }

    /// The "PecDeck" asset catalog image.
    static var pecDeck: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pecDeck)
#else
        .init()
#endif
    }

    /// The "PreacherCurlBB" asset catalog image.
    static var preacherCurlBB: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .preacherCurlBB)
#else
        .init()
#endif
    }

    /// The "PreacherCurlDB" asset catalog image.
    static var preacherCurlDB: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .preacherCurlDB)
#else
        .init()
#endif
    }

    /// The "RearDeltFly" asset catalog image.
    static var rearDeltFly: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .rearDeltFly)
#else
        .init()
#endif
    }

    /// The "ReverseCableCrossover" asset catalog image.
    static var reverseCableCrossover: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .reverseCableCrossover)
#else
        .init()
#endif
    }

    /// The "ReverseGripLatPullDown" asset catalog image.
    static var reverseGripLatPullDown: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .reverseGripLatPullDown)
#else
        .init()
#endif
    }

    /// The "ShoulderPressBB" asset catalog image.
    static var shoulderPressBB: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .shoulderPressBB)
#else
        .init()
#endif
    }

    /// The "ShoulderPressDB" asset catalog image.
    static var shoulderPressDB: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .shoulderPressDB)
#else
        .init()
#endif
    }

    /// The "ShoulderPressMachine" asset catalog image.
    static var shoulderPressMachine: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .shoulderPressMachine)
#else
        .init()
#endif
    }

    /// The "ShoulderShrugs" asset catalog image.
    static var shoulderShrugs: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .shoulderShrugs)
#else
        .init()
#endif
    }

    /// The "SingleArmCableRow" asset catalog image.
    static var singleArmCableRow: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .singleArmCableRow)
#else
        .init()
#endif
    }

    /// The "SingleLegCurl" asset catalog image.
    static var singleLegCurl: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .singleLegCurl)
#else
        .init()
#endif
    }

    /// The "SquatBB" asset catalog image.
    static var squatBB: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .squatBB)
#else
        .init()
#endif
    }

    /// The "StandardLatPullDown" asset catalog image.
    static var standardLatPullDown: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .standardLatPullDown)
#else
        .init()
#endif
    }

    /// The "StandingStraightArmPullDown" asset catalog image.
    static var standingStraightArmPullDown: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .standingStraightArmPullDown)
#else
        .init()
#endif
    }

    /// The "TricepCableKickbacks" asset catalog image.
    static var tricepCableKickbacks: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .tricepCableKickbacks)
#else
        .init()
#endif
    }

    /// The "TricepDips" asset catalog image.
    static var tricepDips: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .tricepDips)
#else
        .init()
#endif
    }

    /// The "TricepExtensionsMachine" asset catalog image.
    static var tricepExtensionsMachine: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .tricepExtensionsMachine)
#else
        .init()
#endif
    }

    /// The "TricepKickBacks" asset catalog image.
    static var tricepKickBacks: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .tricepKickBacks)
#else
        .init()
#endif
    }

    /// The "TricepRopePushdown" asset catalog image.
    static var tricepRopePushdown: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .tricepRopePushdown)
#else
        .init()
#endif
    }

    /// The "TricepStraightBarPushdown" asset catalog image.
    static var tricepStraightBarPushdown: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .tricepStraightBarPushdown)
#else
        .init()
#endif
    }

    /// The "TricepVBarPushdown" asset catalog image.
    static var tricepVBarPushdown: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .tricepVBarPushdown)
#else
        .init()
#endif
    }

    /// The "VBarLatPulldown" asset catalog image.
    static var vBarLatPulldown: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .vBarLatPulldown)
#else
        .init()
#endif
    }

    /// The "VGripCableRow" asset catalog image.
    static var vGripCableRow: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .vGripCableRow)
#else
        .init()
#endif
    }

    /// The "WideGripCableRow" asset catalog image.
    static var wideGripCableRow: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .wideGripCableRow)
#else
        .init()
#endif
    }

    /// The "WideGripLatPulldown" asset catalog image.
    static var wideGripLatPulldown: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .wideGripLatPulldown)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "BBRow" asset catalog image.
    static var bbRow: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .bbRow)
#else
        .init()
#endif
    }

    /// The "BarbellSplitSquat" asset catalog image.
    static var barbellSplitSquat: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .barbellSplitSquat)
#else
        .init()
#endif
    }

    /// The "BicepCurlsBB" asset catalog image.
    static var bicepCurlsBB: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .bicepCurlsBB)
#else
        .init()
#endif
    }

    /// The "BicepCurlsDB" asset catalog image.
    static var bicepCurlsDB: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .bicepCurlsDB)
#else
        .init()
#endif
    }

    /// The "CableCurlsStraightBar" asset catalog image.
    static var cableCurlsStraightBar: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cableCurlsStraightBar)
#else
        .init()
#endif
    }

    /// The "CableHammerCurls" asset catalog image.
    static var cableHammerCurls: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cableHammerCurls)
#else
        .init()
#endif
    }

    /// The "CableRopeOverheadExtensions" asset catalog image.
    static var cableRopeOverheadExtensions: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cableRopeOverheadExtensions)
#else
        .init()
#endif
    }

    /// The "CalfRaises" asset catalog image.
    static var calfRaises: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .calfRaises)
#else
        .init()
#endif
    }

    /// The "ChestFly" asset catalog image.
    static var chestFly: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .chestFly)
#else
        .init()
#endif
    }

    /// The "ChinUps" asset catalog image.
    static var chinUps: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .chinUps)
#else
        .init()
#endif
    }

    /// The "DBRow" asset catalog image.
    static var dbRow: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .dbRow)
#else
        .init()
#endif
    }

    /// The "DeadLift" asset catalog image.
    static var deadLift: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .deadLift)
#else
        .init()
#endif
    }

    /// The "DeclineBBBench" asset catalog image.
    static var declineBBBench: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .declineBBBench)
#else
        .init()
#endif
    }

    /// The "DeclineChestPress" asset catalog image.
    static var declineChestPress: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .declineChestPress)
#else
        .init()
#endif
    }

    /// The "DeclineDBBench" asset catalog image.
    static var declineDBBench: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .declineDBBench)
#else
        .init()
#endif
    }

    /// The "DualLegCurls" asset catalog image.
    static var dualLegCurls: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .dualLegCurls)
#else
        .init()
#endif
    }

    /// The "DualLegExtension" asset catalog image.
    static var dualLegExtension: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .dualLegExtension)
#else
        .init()
#endif
    }

    /// The "FacePulls" asset catalog image.
    static var facePulls: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .facePulls)
#else
        .init()
#endif
    }

    /// The "FlatBBBench" asset catalog image.
    static var flatBBBench: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .flatBBBench)
#else
        .init()
#endif
    }

    /// The "FlatChestPress" asset catalog image.
    static var flatChestPress: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .flatChestPress)
#else
        .init()
#endif
    }

    /// The "FlatDBBench" asset catalog image.
    static var flatDBBench: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .flatDBBench)
#else
        .init()
#endif
    }

    /// The "GluteBridge" asset catalog image.
    static var gluteBridge: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gluteBridge)
#else
        .init()
#endif
    }

    /// The "GobletSquat" asset catalog image.
    static var gobletSquat: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gobletSquat)
#else
        .init()
#endif
    }

    /// The "GymHexFriendsIconActivated" asset catalog image.
    static var gymHexFriendsIconActivated: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gymHexFriendsIconActivated)
#else
        .init()
#endif
    }

    /// The "GymHexFriendsIconDeactivated" asset catalog image.
    static var gymHexFriendsIconDeactivated: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gymHexFriendsIconDeactivated)
#else
        .init()
#endif
    }

    /// The "GymHexLeaderboardIconActivated" asset catalog image.
    static var gymHexLeaderboardIconActivated: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gymHexLeaderboardIconActivated)
#else
        .init()
#endif
    }

    /// The "GymHexLeaderboardIconDeactivated" asset catalog image.
    static var gymHexLeaderboardIconDeactivated: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gymHexLeaderboardIconDeactivated)
#else
        .init()
#endif
    }

    /// The "GymHexMainLogo" asset catalog image.
    static var gymHexMainLogo: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gymHexMainLogo)
#else
        .init()
#endif
    }

    /// The "GymHexMainPageIconActivated" asset catalog image.
    static var gymHexMainPageIconActivated: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gymHexMainPageIconActivated)
#else
        .init()
#endif
    }

    /// The "GymHexMainPageIconDeactivated" asset catalog image.
    static var gymHexMainPageIconDeactivated: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gymHexMainPageIconDeactivated)
#else
        .init()
#endif
    }

    /// The "GymHexSettingsIconActivated" asset catalog image.
    static var gymHexSettingsIconActivated: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gymHexSettingsIconActivated)
#else
        .init()
#endif
    }

    /// The "GymHexSettingsIconDeactivated" asset catalog image.
    static var gymHexSettingsIconDeactivated: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gymHexSettingsIconDeactivated)
#else
        .init()
#endif
    }

    /// The "GymHexTopperLogo" asset catalog image.
    static var gymHexTopperLogo: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gymHexTopperLogo)
#else
        .init()
#endif
    }

    /// The "HammerCurls" asset catalog image.
    static var hammerCurls: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .hammerCurls)
#else
        .init()
#endif
    }

    /// The "InclineBBBench" asset catalog image.
    static var inclineBBBench: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .inclineBBBench)
#else
        .init()
#endif
    }

    /// The "InclineChestPress" asset catalog image.
    static var inclineChestPress: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .inclineChestPress)
#else
        .init()
#endif
    }

    /// The "InclineDBBench" asset catalog image.
    static var inclineDBBench: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .inclineDBBench)
#else
        .init()
#endif
    }

    /// The "KneelingSingleArmLatPullDown" asset catalog image.
    static var kneelingSingleArmLatPullDown: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .kneelingSingleArmLatPullDown)
#else
        .init()
#endif
    }

    /// The "LateralRaiseCable" asset catalog image.
    static var lateralRaiseCable: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .lateralRaiseCable)
#else
        .init()
#endif
    }

    /// The "LateralRaiseDB" asset catalog image.
    static var lateralRaiseDB: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .lateralRaiseDB)
#else
        .init()
#endif
    }

    /// The "LateralRaiseMachine" asset catalog image.
    static var lateralRaiseMachine: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .lateralRaiseMachine)
#else
        .init()
#endif
    }

    /// The "LegPressMachine" asset catalog image.
    static var legPressMachine: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .legPressMachine)
#else
        .init()
#endif
    }

    /// The "LegPressPlates" asset catalog image.
    static var legPressPlates: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .legPressPlates)
#else
        .init()
#endif
    }

    /// The "LungesDB" asset catalog image.
    static var lungesDB: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .lungesDB)
#else
        .init()
#endif
    }

    /// The "MachineLatPulldown" asset catalog image.
    static var machineLatPulldown: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .machineLatPulldown)
#else
        .init()
#endif
    }

    /// The "NarrowGripLatPulldown" asset catalog image.
    static var narrowGripLatPulldown: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .narrowGripLatPulldown)
#else
        .init()
#endif
    }

    /// The "OneLegExtension" asset catalog image.
    static var oneLegExtension: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .oneLegExtension)
#else
        .init()
#endif
    }

    /// The "PecDeck" asset catalog image.
    static var pecDeck: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pecDeck)
#else
        .init()
#endif
    }

    /// The "PreacherCurlBB" asset catalog image.
    static var preacherCurlBB: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .preacherCurlBB)
#else
        .init()
#endif
    }

    /// The "PreacherCurlDB" asset catalog image.
    static var preacherCurlDB: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .preacherCurlDB)
#else
        .init()
#endif
    }

    /// The "RearDeltFly" asset catalog image.
    static var rearDeltFly: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .rearDeltFly)
#else
        .init()
#endif
    }

    /// The "ReverseCableCrossover" asset catalog image.
    static var reverseCableCrossover: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .reverseCableCrossover)
#else
        .init()
#endif
    }

    /// The "ReverseGripLatPullDown" asset catalog image.
    static var reverseGripLatPullDown: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .reverseGripLatPullDown)
#else
        .init()
#endif
    }

    /// The "ShoulderPressBB" asset catalog image.
    static var shoulderPressBB: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .shoulderPressBB)
#else
        .init()
#endif
    }

    /// The "ShoulderPressDB" asset catalog image.
    static var shoulderPressDB: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .shoulderPressDB)
#else
        .init()
#endif
    }

    /// The "ShoulderPressMachine" asset catalog image.
    static var shoulderPressMachine: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .shoulderPressMachine)
#else
        .init()
#endif
    }

    /// The "ShoulderShrugs" asset catalog image.
    static var shoulderShrugs: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .shoulderShrugs)
#else
        .init()
#endif
    }

    /// The "SingleArmCableRow" asset catalog image.
    static var singleArmCableRow: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .singleArmCableRow)
#else
        .init()
#endif
    }

    /// The "SingleLegCurl" asset catalog image.
    static var singleLegCurl: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .singleLegCurl)
#else
        .init()
#endif
    }

    /// The "SquatBB" asset catalog image.
    static var squatBB: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .squatBB)
#else
        .init()
#endif
    }

    /// The "StandardLatPullDown" asset catalog image.
    static var standardLatPullDown: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .standardLatPullDown)
#else
        .init()
#endif
    }

    /// The "StandingStraightArmPullDown" asset catalog image.
    static var standingStraightArmPullDown: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .standingStraightArmPullDown)
#else
        .init()
#endif
    }

    /// The "TricepCableKickbacks" asset catalog image.
    static var tricepCableKickbacks: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .tricepCableKickbacks)
#else
        .init()
#endif
    }

    /// The "TricepDips" asset catalog image.
    static var tricepDips: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .tricepDips)
#else
        .init()
#endif
    }

    /// The "TricepExtensionsMachine" asset catalog image.
    static var tricepExtensionsMachine: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .tricepExtensionsMachine)
#else
        .init()
#endif
    }

    /// The "TricepKickBacks" asset catalog image.
    static var tricepKickBacks: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .tricepKickBacks)
#else
        .init()
#endif
    }

    /// The "TricepRopePushdown" asset catalog image.
    static var tricepRopePushdown: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .tricepRopePushdown)
#else
        .init()
#endif
    }

    /// The "TricepStraightBarPushdown" asset catalog image.
    static var tricepStraightBarPushdown: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .tricepStraightBarPushdown)
#else
        .init()
#endif
    }

    /// The "TricepVBarPushdown" asset catalog image.
    static var tricepVBarPushdown: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .tricepVBarPushdown)
#else
        .init()
#endif
    }

    /// The "VBarLatPulldown" asset catalog image.
    static var vBarLatPulldown: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .vBarLatPulldown)
#else
        .init()
#endif
    }

    /// The "VGripCableRow" asset catalog image.
    static var vGripCableRow: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .vGripCableRow)
#else
        .init()
#endif
    }

    /// The "WideGripCableRow" asset catalog image.
    static var wideGripCableRow: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .wideGripCableRow)
#else
        .init()
#endif
    }

    /// The "WideGripLatPulldown" asset catalog image.
    static var wideGripLatPulldown: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .wideGripLatPulldown)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

