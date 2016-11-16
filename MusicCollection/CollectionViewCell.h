//
//  CollectionViewCell.h
//  MusicCollection
//
//  Created by steve on 2016-11-16.
//  Copyright © 2016 steve. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PhotoObject;

@interface CollectionViewCell : UICollectionViewCell
@property (nonatomic) PhotoObject *photoObject;
@end
