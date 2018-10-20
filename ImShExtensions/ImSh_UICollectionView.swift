//
//  ImSh_UICollectionView.swift
//  ImShExtensions
//
//  Created by Imran Mohammed on 10/20/18.
//  Copyright © 2018 ImSh. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    /// To deselect all items
    ///
    /// - Parameter animated: Boolean
    func deselectAllItems(animated: Bool = false) {
        for indexPath in self.indexPathsForSelectedItems ?? [] {
            self.deselectItem(at: indexPath, animated: animated)
        }
    }
    
    /// To scroll to next item (automatically detects last index)
    ///
    /// - Parameters:
    ///   - animated: Boolean
    ///   - scrollPosition: UICollectionView.ScrollPosition
    func showNext(animated: Bool = true, scrollPosition: UICollectionView.ScrollPosition = .centeredHorizontally) {
        guard let currentIndexPath = self.getCurrentIndexpath() else { return }
        let maxCells = self.numberOfItems(inSection: currentIndexPath.section)
        if maxCells == 0 { return }
        let nextIndex = IndexPath(item: currentIndexPath.row + 1, section: currentIndexPath.section)
        if nextIndex.row < maxCells {
            self.scrollToItem(at: nextIndex, at: scrollPosition, animated: animated)
        } else {
            self.scrollToItem(at: IndexPath(item: 0, section: currentIndexPath.section), at: scrollPosition, animated: animated)
        }
    }
    
    /// To scroll to previous item (automatically detects first index)
    ///
    /// - Parameters:
    ///   - animated: Boolean
    ///   - scrollPosition: UICollectionView.ScrollPosition
    func showPrevious(animated: Bool = true, scrollPosition: UICollectionView.ScrollPosition = .centeredHorizontally) {
        guard let currentIndexPath = self.getCurrentIndexpath() else { return }
        let maxCells = self.numberOfItems(inSection: currentIndexPath.section)
        if maxCells == 0 { return }
        let previousIndex = IndexPath(item: currentIndexPath.row - 1, section: currentIndexPath.section)
        if previousIndex.row >= 0 {
            self.scrollToItem(at: previousIndex, at: scrollPosition, animated: animated)
        } else {
            self.scrollToItem(at: IndexPath(item: maxCells - 1, section: currentIndexPath.section), at: scrollPosition, animated: animated)
        }
    }
    
    /// To get the current progress of UICollectionView
    ///
    /// - Returns: Float
    func updatedProgress() -> Float {
        guard let currentIndexPath = self.getCurrentIndexpath() else { return 0 }
        let currentCell = Float(currentIndexPath.row + 1)
        let maxCells = Float(self.numberOfItems(inSection: currentIndexPath.section))
        let progress = Float(currentCell / maxCells)
        return progress
    }
    
    /// To get current displayed IndexPath?
    ///
    /// - Returns: IndexPath?
    func getCurrentIndexpath() -> IndexPath? {
        var visibleRect = CGRect()
        visibleRect.origin = self.contentOffset
        visibleRect.size = self.bounds.size
        
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        return self.indexPathForItem(at: visiblePoint)
    }
    
}
