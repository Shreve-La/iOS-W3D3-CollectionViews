//
//  CollectionReusableView.m
//  MusicCollection
//
//  Created by steve on 2017-01-25.
//  Copyright © 2017 steve. All rights reserved.
//

#import "CollectionReusableView.h"
#import "Musician.h"

@interface CollectionReusableView()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation CollectionReusableView
- (void)setMusician:(Musician *)musician {
  self.label.text = musician.name;
  _musician = musician;
}
@end
