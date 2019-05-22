//
//  CCMediaCell.h
//  PhotoTest
//
//  Created by xxzx on 2019/5/21.
//  Copyright © 2019 xxzx. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^CCDeleteButtonClickBlock)(UIButton *button);

@interface CCMediaCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageV;

@property (weak, nonatomic) IBOutlet UIButton *deleteButton;

/**
 删除按钮的点击
 */
@property (nonatomic, copy) CCDeleteButtonClickBlock deleteButtonClickBlock;


@property (nonatomic, copy) NSString *media;

@end

NS_ASSUME_NONNULL_END
