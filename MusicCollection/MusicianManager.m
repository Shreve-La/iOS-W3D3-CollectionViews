//
//  MusicianManager.m
//  MusicCollection
//
//  Created by steve on 2016-11-15.
//  Copyright © 2016 steve. All rights reserved.
//

#import "MusicianManager.h"
#import "Musician.h"
#import "PhotoObject.h"

@implementation MusicianManager
- (instancetype)init
{
  self = [super init];
  if (self) {
    NSMutableArray *temp = [NSMutableArray new];
    [temp addObject:[[Musician alloc] initWithName:@"Taylor Swift"]];
    [temp addObject:[[Musician alloc] initWithName:@"Iggy Pop"]];
    [temp addObject:[[Musician alloc] initWithName:@"Lady Gaga"]];
    _musicianArray = [temp copy];
  }
  return self;
}

- (NSInteger)numberOfSections {
  return self.musicianArray.count;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section {
  Musician *musician = self.musicianArray[section];
  return musician.photoObjectArray.count;
}

- (PhotoObject*)photoObjectAtIndexPath:(NSIndexPath*)indexPath {
  
  NSInteger section = indexPath.section;
  NSInteger item = indexPath.item;
  Musician *musician = self.musicianArray[section];
  PhotoObject *photoObject = musician.photoObjectArray[item];
  return photoObject;
}

- (Musician *)musicianAtIndexPath:(NSIndexPath *)indexPath {
  return self.musicianArray[indexPath.section];
}
@end








