//
//  ViewController.m
//  PhotoTest
//
//  Created by xxzx on 2019/5/21.
//  Copyright © 2019 xxzx. All rights reserved.
//

#import "ViewController.h"

#import "LQCollectionView.h"
@interface ViewController ()
@property (nonatomic, strong) LQCollectionView *collectionView;
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self.view addSubview:self.collectionView];
    self.collectionView.frame = CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width);
        self.collectionView.dataSources = @[
                                    @"http://pic32.nipic.com/20130823/13339320_183302468194_2.jpg",
                                    @"http://pic40.nipic.com/20140412/18428321_144447597175_2.jpg",
                                    @"http://k.zol-img.com.cn/sjbbs/7692/a7691515_s.jpg"];
    
}

- (LQCollectionView *)collectionView {
    if (_collectionView == nil) {
        _collectionView = [[LQCollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
        
    }
    return _collectionView;
}



@end
