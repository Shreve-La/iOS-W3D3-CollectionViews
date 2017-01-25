//
//  CollectionViewCell.m
//  MusicCollection
//
//  Created by steve on 2017-01-25.
//  Copyright © 2017 steve. All rights reserved.
//

#import "CollectionViewCell.h"
#import "PhotoObject.h"

@interface CollectionViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end
@implementation CollectionViewCell

- (void)setPhotoObject:(PhotoObject *)photoObject {
  self.imageView.image = photoObject.image;
  _photoObject = photoObject;
}

@end
