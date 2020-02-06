//
//  CollectionViewCell.swift
//  NYTBooks-Group-Project
//
//  Created by Tanya Burke on 2/5/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//

import UIKit

class BookCell: UICollectionViewCell {
    
    lazy var bookCoverImageView: UIImageView = {
      let imageView = UIImageView()
        imageView.image = UIImage(systemName: "book")
        return imageView
    }()
    
    lazy var numberOfWeeksBestSellerLabel: UILabel = {
      let label = UILabel()
        label.textAlignment = .left
        label.text = "Some filler text"
        label.backgroundColor = .systemRed
        return label
    }()
    
    lazy var bookBlurbTextField: UITextField = {
       let textField = UITextField()
        textField.text = "A description about the book shown above"
        textField.backgroundColor = .systemGray4
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setUpFavouriteViewCell()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpFavouriteViewCell()
    }
    
    private func setUpFavouriteViewCell(){
        setUpBookCoverImageViewConstraints()
        setUpNumberOfWeeksBestSellerLabelConstraints()
        setUpBookBlurbTextFieldConstraints()
        
    }
    
    private func setUpBookCoverImageViewConstraints(){
        addSubview(bookCoverImageView)
    
        bookCoverImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([bookCoverImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8), bookCoverImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor), bookCoverImageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.5), bookCoverImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.5)])
    }
    
    private func setUpNumberOfWeeksBestSellerLabelConstraints() {
        addSubview(numberOfWeeksBestSellerLabel)
        numberOfWeeksBestSellerLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([numberOfWeeksBestSellerLabel.topAnchor.constraint(equalTo: bookCoverImageView.bottomAnchor, constant: 8), numberOfWeeksBestSellerLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8), numberOfWeeksBestSellerLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8), numberOfWeeksBestSellerLabel.heightAnchor.constraint(equalToConstant: 40)])
    }
    
    private func setUpBookBlurbTextFieldConstraints(){
        addSubview(bookBlurbTextField)
        bookBlurbTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([bookBlurbTextField.topAnchor.constraint(equalTo: numberOfWeeksBestSellerLabel.bottomAnchor, constant: 8), bookBlurbTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8), bookBlurbTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8), bookBlurbTextField.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)])
    }
    
    public func configureBookCell(_ modelData: String){
        // Some code to place data in the cell.
        // Waiting on model data.
    }
}
