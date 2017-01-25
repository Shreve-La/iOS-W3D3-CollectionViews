//
//  CollectionViewCell.h
//  MusicCollection
//
//  Created by steve on 2017-01-25.
//  Copyright © 2017 steve. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PhotoObject;

@interface CollectionViewCell : UICollectionViewCell
@property (nonatomic) PhotoObject *photoObject;
@end
