//
//  Musician.h
//  MusicCollection
//
//  Created by steve on 2016-11-15.
//  Copyright © 2016 steve. All rights reserved.
//

/*
 * Each Musician has a number of PhotoObjects
 * The Musician object handles the array of PhotoObjects
 * The Musician object will also handle the section headers, hence the name property.
 */

@import UIKit;
@class PhotoObject;

@interface Musician : NSObject
@property (nonatomic, readonly) NSArray <PhotoObject *>*photoObjectArray;
@property (nonatomic, readonly) NSString *name;
- (instancetype)initWithName:(NSString *)name;
@end
