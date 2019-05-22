//
//  LQCollectionView.m
//  PhotoTest
//
//  Created by 李强 on 2019/5/22.
//  Copyright © 2019 xxzx. All rights reserved.
//

#import "LQCollectionView.h"
#import "CCMediaCell.h"
@interface  LQCollectionView ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property (nonatomic, assign) int maxCount;
@end

@implementation LQCollectionView

-(instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    if (self = [super initWithFrame:frame
               collectionViewLayout:layout]) {
        CGFloat rgb = 244 / 255.0;
        self.alwaysBounceVertical = YES;
        self.backgroundColor = [UIColor colorWithRed:rgb green:rgb blue:rgb alpha:1.0];
        self.contentInset = UIEdgeInsetsMake(4, 4, 4, 4);
        self.scrollEnabled = NO;
        self.dataSource = self;
        self.delegate = self;
        self.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
        [self registerNib:[UINib nibWithNibName:@"CCMediaCell" bundle:nil] forCellWithReuseIdentifier:@"CollectionCellID"];
        self.maxCount = 10;
    }
    return self;
}
- (void)setDataSources:(NSArray *)dataSources{
    _dataSources = dataSources;
    [self reload];
}
- (void)reload {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self reloadData];
        
    });
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSInteger number = self.dataSources.count < self.maxCount ? self.dataSources.count : self.maxCount;
    if (number == self.maxCount) {
        return self.maxCount;
    }
    
    return number+1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CCMediaCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionCellID" forIndexPath:indexPath];
    if (indexPath.item == self.dataSources.count) {
        //显示加号,隐藏叉号：
        cell.imageV.image = [UIImage imageNamed:@"AlbumAddBtn"];
        cell.deleteButton.hidden = YES;
    } else {
        //显示图片
        cell.media = self.dataSources[indexPath.item];
    }
    return cell;
}

@end
