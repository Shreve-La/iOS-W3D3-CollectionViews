//
//  CollectionViewCell.m
//  MusicCollection
//
//  Created by steve on 2016-11-16.
//  Copyright © 2016 steve. All rights reserved.
//

#import "CollectionViewCell.h"
#import "PhotoObject.h"

@interface CollectionViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation CollectionViewCell
- (void)setPhotoObject:(PhotoObject *)photoObject {
  // set image
  self.imageView.image = photoObject.image;
  _photoObject = photoObject;
}
@end
