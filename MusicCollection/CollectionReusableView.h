//
//  CollectionReusableView.h
//  MusicCollection
//
//  Created by steve on 2017-01-25.
//  Copyright © 2017 steve. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Musician;

@interface CollectionReusableView : UICollectionReusableView
@property (nonatomic) Musician *musician;
@end
