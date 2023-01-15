//
//  CarouselView.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/15.
//

import UIKit

class CarouselView: UIView {
    
    @IBOutlet weak private var collectionView: UICollectionView!
    
    private func setupView() {
        instantiate()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

}
extension CarouselView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        UICollectionViewCell()
    }
}

extension CarouselView: UICollectionViewDelegateFlowLayout {
    
}

extension CarouselView: NibInstantiate {}
