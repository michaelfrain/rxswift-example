//
//  ClueCollectionViewCell.swift
//  rxswift-example
//
//  Created by Frain, Michael F. on 3/13/18.
//  Copyright © 2018 frainm. All rights reserved.
//

import UIKit

class ClueCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak private var lblValue: UILabel!
    
    class func configureWithViewModel(_ viewModel: ClueCellViewModel, inCollectionView collectionView: UICollectionView, atIndexPath indexPath: IndexPath) -> ClueCollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ClueCollectionViewCell", for: indexPath) as? ClueCollectionViewCell else { return ClueCollectionViewCell() }
        cell.lblValue.text = "\(viewModel.clueValue)"
        switch viewModel.clueSelected {
        case .unselected, .unanswered:
            cell.contentView.backgroundColor = UIColor.gray
            
        case .correct:
            cell.contentView.backgroundColor = UIColor.green
            
        case .incorrect:
            cell.contentView.backgroundColor = UIColor.red
        }
        return cell
    }
}
