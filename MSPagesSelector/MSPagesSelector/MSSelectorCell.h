//
//  MSSelectorCell.h
//  MSPagesSelector
//
//  Created by mr.scorpion on 16/7/15.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MSSelectorCell : UICollectionViewCell
@property (nonatomic, copy) NSString *title;
/**
 *  默认分别是 [UIColor redColor],[UIColor whiteColor]
 */
@property (nonatomic, strong) UIColor *selectedColor;
@property (nonatomic, strong) UIColor *normalColor;

/**
 *  默认都是14号字体
 */
@property (nonatomic, strong) UIFont *selectedFont;
@property (nonatomic, strong) UIFont *normalFont;

@end
