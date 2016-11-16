//
//  CollectionReusableView.h
//  MusicCollection
//
//  Created by steve on 2016-11-16.
//  Copyright © 2016 steve. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Musician;

@interface CollectionReusableView : UICollectionReusableView
@property (nonatomic) Musician *musician;
@end
