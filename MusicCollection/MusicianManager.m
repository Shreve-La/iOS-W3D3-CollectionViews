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


- (NSInteger)numberOfItemsInSection:(NSInteger)section {
  return self.musicianArray[section].photoObjectArray.count;
}

- (PhotoObject *)photoItemAtIndexPath:(NSIndexPath *)indexPath {
  Musician *musician = self.musicianArray[indexPath.section];
  PhotoObject *photoObject = musician.photoObjectArray[indexPath.item];
  return photoObject;
}

- (Musician *)musicianAtIndexPath:(NSIndexPath *)indexPath {
  return self.musicianArray[indexPath.section];
}

@end
