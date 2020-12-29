// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class CreateChannelMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation createChannel {
      createChannel(input: {channel: {name: "Channel 1", platform: {name: "Platform for channel 1"}}}) {
        __typename
        id
        name
        platform {
          __typename
          name
        }
      }
    }
    """

  public let operationName: String = "createChannel"

  public let operationIdentifier: String? = "1957be5e20438d69cd0f43f1c939e8d9b13fdfe32ada3c184b5ff1cb1c44795a"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createChannel", arguments: ["input": ["channel": ["name": "Channel 1", "platform": ["name": "Platform for channel 1"]]]], type: .object(CreateChannel.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createChannel: CreateChannel? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createChannel": createChannel.flatMap { (value: CreateChannel) -> ResultMap in value.resultMap }])
    }

    public var createChannel: CreateChannel? {
      get {
        return (resultMap["createChannel"] as? ResultMap).flatMap { CreateChannel(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createChannel")
      }
    }

    public struct CreateChannel: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Channel"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("platform", type: .nonNull(.object(Platform.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, name: String, platform: Platform) {
        self.init(unsafeResultMap: ["__typename": "Channel", "id": id, "name": name, "platform": platform.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The ID of the channel
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// What this human calls themselves
      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      /// The updated time of the entity
      public var platform: Platform {
        get {
          return Platform(unsafeResultMap: resultMap["platform"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "platform")
        }
      }

      public struct Platform: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Platform"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String) {
          self.init(unsafeResultMap: ["__typename": "Platform", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The platform name
        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}
