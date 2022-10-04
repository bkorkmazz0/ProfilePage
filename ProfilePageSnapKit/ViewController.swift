//
//  ViewController.swift
//  ProfilePageSnapKit
//
//  Created by Berkan Korkmaz on 5.09.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
        
    lazy var labelTitle: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 24)
        label.text = "Profile"
        label.textAlignment = .center
        return label
    }()
    
    let imageWidth: CGFloat = 120
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "berkan"))
        imageView.layer.cornerRadius = imageWidth/2
        imageView.layer.borderColor = UIColor.black.withAlphaComponent(0.1).cgColor
        imageView.layer.borderWidth = 1
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Berkan Korkmaz"
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    lazy var jobLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.textColor = .gray
        label.text = "Candidate IOS Developer"
        return label
    }()
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [nameLabel,jobLabel])
        stack.axis = .vertical
        stack.alignment = .leading
        stack.spacing = 4
        return stack
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textColor = .gray
        label.font = .systemFont(ofSize: 80)
        label.text = "Mizu Next <3"
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }

}

extension ViewController {
    
    func setupView() {
        view.backgroundColor = .white
        view.addSubview(labelTitle)
        view.addSubview(profileImageView)
        view.addSubview(stackView)
        view.addSubview(descriptionLabel)
        
        labelTitle.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.centerX.equalTo(view.safeAreaLayoutGuide.snp.centerX)
        }
        
        profileImageView.snp.makeConstraints { make in
            make.width.height.equalTo(imageWidth)
            make.top.equalTo(labelTitle.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(20)
        }
        
        stackView.snp.makeConstraints { make in
            make.leading.equalTo(profileImageView.snp.trailing).offset(12)
            make.trailing.equalToSuperview().offset(-20)
            make.centerY.equalTo(profileImageView.snp.centerY)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(24)
            make.top.equalTo(profileImageView.snp.bottom).offset(24)
        }
    }
    
}

