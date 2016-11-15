//
//  MusicianManager.m
//  MusicCollection
//
//  Created by steve on 2016-11-15.
//  Copyright © 2016 steve. All rights reserved.
//

#import "MusicianManager.h"
#import "Musician.h"

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
@end
