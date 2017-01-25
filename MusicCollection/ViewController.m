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
#import "PhotoObject.h"
#import "CollectionReusableView.h"
#import "DetailViewController.h"

@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) MusicianManager *manager;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.manager = [MusicianManager new];
  UICollectionViewFlowLayout *layout =(UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
  CGFloat width = self.view.frame.size.width/2;
  CGSize size = CGSizeMake(width, width);
  layout.itemSize = size;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
  return [self.manager numberOfSections];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return [self.manager numberOfItemsInSection:section];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  
  CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
  // data
  
  PhotoObject *photoObject = [self.manager photoObjectAtIndexPath:indexPath];
  
  cell.photoObject = photoObject;
  return cell;
}

- (UICollectionReusableView*)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
  
  CollectionReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"Cell" forIndexPath:indexPath];
  Musician *musician = [self.manager musicianAtIndexPath:indexPath];
  view.musician = musician;
  return view;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
  
  PhotoObject *photoObject = [self.manager photoObjectAtIndexPath:indexPath];
  
  // create DVC
  
  DetailViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
  dvc.photoObject = photoObject;
  [self.navigationController pushViewController:dvc animated:YES];
}









@end
