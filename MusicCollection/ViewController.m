//
//  ViewController.m
//  MusicCollection
//
//  Created by steve on 2016-11-15.
//  Copyright © 2016 steve. All rights reserved.
//

#import "ViewController.h"
#import "MusicianManager.h"
#import "CollectionViewCell.h"
#import "DetailViewController.h"
#import "CollectionReusableView.h"

@interface ViewController ()<UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) MusicianManager *manager;
@end

@implementation ViewController
- (void)viewDidLoad {
  [super viewDidLoad];
  self.collectionView.delegate = self;
  self.manager = [MusicianManager new];
  self.collectionView.dataSource = self.manager;
  UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
  CGFloat width = self.view.bounds.size.width/2;
  CGSize size = CGSizeMake(width, width);
  layout.itemSize = size;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([segue.identifier isEqualToString:@"DetailViewController"]) {
    DetailViewController *dvc = segue.destinationViewController;
    UICollectionViewCell *cell = (UICollectionViewCell *)sender;
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    PhotoObject *photoObject = [self.manager photoItemAtIndexPath:indexPath];
    dvc.photoObject = photoObject;
  }
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
  static NSString *id = @"Cell";
  CollectionReusableView *reusableView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:id forIndexPath:indexPath];
  reusableView.musician = [self.manager musicianAtIndexPath:indexPath];
  return reusableView;
}












@end
