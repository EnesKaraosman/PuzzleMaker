//
//  PuzzleElement.swift
//  PuzzleMaker
//
//  Created by Paweł Kania on 09/08/16.
//
//

import UIKit

/**
 *  Describes single puzzle element, which holds prepared image, position on the board and puzzle unit which provides detailed information about path
 */
public struct PuzzleElement: Identifiable {

    // MARK: Properties
    
    public var id: String {
        "\(elementPosition.0).\(elementPosition.1)"
    }
    
    /// UIView calculates position based on topLeft edge, so convert how SwiftUI position works
    public var centerPosition: CGPoint {
        CGPoint(x: position.x + image.size.width / 2, y: position.y + image.size.height / 2)
    }

    /// Cropped and clipped image with additional effects: two inner shadows (light and dark to make it "more real")
    public let image: UIImage

    /// Exact position on the board. Includes offset and additional size added due to outer edges
    public let position: CGPoint

    /// Holds information about path and segments. For information purposes only
    public let puzzleUnit: PuzzleUnit
    
    /// Represents the position in full puzzle, [row][column]
    public let elementPosition: (Int, Int)
    
    /// To check easily if element is placed on board correctly.
    public var correctlyPlacedOnBoard: Bool = false
}
