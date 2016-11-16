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
#import "CollectionViewCell.h"

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

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
  return self.musicianArray.count;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return self.musicianArray[section].photoObjectArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  static NSString *id = @"Cell";
  CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:id forIndexPath:indexPath];
  Musician *musician = self.musicianArray[indexPath.section];
  PhotoObject *photoObject = musician.photoObjectArray[indexPath.item];
  cell.photoObject = photoObject;
  return cell;
}

- (PhotoObject *)photoItemAtIndexPath:(NSIndexPath *)indexPath {
  NSInteger section = indexPath.section;
  NSInteger row = indexPath.row;
  return self.musicianArray[section].photoObjectArray[row];
}

- (Musician *)musicianAtIndexPath:(NSIndexPath *)indexPath {
  return self.musicianArray[indexPath.section];
}

@end
