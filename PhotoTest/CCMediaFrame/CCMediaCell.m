//
//  CCMediaCell.m
//  PhotoTest
//
//  Created by xxzx on 2019/5/21.
//  Copyright © 2019 xxzx. All rights reserved.
//

#import "CCMediaCell.h"

#import <SDWebImage.h>

@interface CCMediaCell()



@end

@implementation CCMediaCell

//        [self.imageV sd_cancelCurrentImageLoad];
//
//    if (media.image) {
//        self.imageV.image = media.image;
//    } else if (media.imageUrlString) {
- (void)setMedia:(NSString *)media {
    _media = media;
    [self.imageV sd_setImageWithURL:[NSURL URLWithString:media]];
}
//    }
//        [self.imageV sd_cancelCurrentImageLoad];

- (void)configWithAddType {
//    [self.imageV sd_cancelCurrentImageLoad];
    self.imageV.image = [UIImage imageNamed:@"AlbumAddBtn.png"];
    self.deleteButton.hidden = YES;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    // 设置当前控件的图片的内容模式
    self.imageV.contentMode =  UIViewContentModeScaleAspectFill;
}

- (IBAction)deleteButtonClick:(UIButton *)sender {
    if (self.deleteButtonClickBlock) {
        self.deleteButtonClickBlock(sender);
    }
}

@end
