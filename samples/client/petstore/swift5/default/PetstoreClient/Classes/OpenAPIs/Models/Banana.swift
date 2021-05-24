//
// Banana.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Banana: Codable, Hashable {

    public var lengthCm: Double?

    public init(lengthCm: Double? = nil) {
        self.lengthCm = lengthCm
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lengthCm
    }

    public var additionalProperties: [String: AnyCodable] = [:]

    public subscript(key: String) -> AnyCodable? {
        get {
            if let value = additionalProperties[key] {
                return value
            }
            return nil
        }

        set {
            additionalProperties[key] = newValue
        }
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(lengthCm, forKey: .lengthCm)
        var additionalPropertiesContainer = encoder.container(keyedBy: String.self)
        try additionalPropertiesContainer.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        lengthCm = try container.decodeIfPresent(Double.self, forKey: "lengthCm")
        var nonAdditionalPropertyKeys = Set<String>()
        nonAdditionalPropertyKeys.insert("lengthCm")
        additionalProperties = try container.decodeMap(AnyCodable.self, excludedKeys: nonAdditionalPropertyKeys)
    }
}
