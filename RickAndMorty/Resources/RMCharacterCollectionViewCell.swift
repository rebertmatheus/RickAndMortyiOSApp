//
//  RMCharacterCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Rebert Matheus Teixeira on 19/02/24.
//

import UIKit

final class RMCharacterCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "RMCharacterCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.textColor = .label
        nameLabel.font = .systemFont(ofSize: 18, weight: .medium)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()
    
    private let statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.textColor = .secondaryLabel
        statusLabel.font = .systemFont(ofSize: 16, weight: .regular)
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        return statusLabel
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .secondarySystemBackground
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func setUpView() {
        contentView.addSubviews(imageView, nameLabel, statusLabel)
        addConstraints()
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            statusLabel.heightAnchor.constraint(equalToConstant: 50),
            nameLabel.heightAnchor.constraint(equalToConstant: 50),
            
            statusLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5),
            statusLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -5),
            nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5),
            nameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -5),
            
            statusLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -3),
            nameLabel.bottomAnchor.constraint(equalTo: statusLabel.topAnchor, constant: -3),
            
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            imageView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            imageView.bottomAnchor.constraint(equalTo: nameLabel.topAnchor, constant: -3)
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        imageView.image = nil
        nameLabel.text = nil
        statusLabel.text = nil
    }
    
    public func configure(with viewModel: RMCharacterCollectionViewCellViewModel) {
        nameLabel.text = viewModel.characterName
        statusLabel.text = viewModel.characterStatusText
        
        viewModel.fetchImage { [weak self] result in
            switch result {
            case .success(let data):
                DispatchQueue.main.async {
                    let image = UIImage(data: data)
                    self?.imageView.image = image
                }
            case .failure(let error):
                debugPrint(String(describing: error))
                break
            }
        }
    }
}