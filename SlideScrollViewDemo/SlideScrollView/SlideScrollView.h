//
//  SlideScrollView.h
//  SlideScrollViewDemo
//
//  Created by 刘继新 on 2018/10/22.
//  Copyright © 2018 Topstech. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SCREEN_WIDTH ([[UIScreen mainScreen]bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen]bounds].size.height)
#define STATUS_BAR_HEIGHT [[UIApplication sharedApplication] statusBarFrame].size.height

typedef NS_ENUM(NSInteger, SlideScrollViewState) {
    SlideScrollViewStateSmall,  ///< 缩小模式
    SlideScrollViewStateFull    ///< 全尺寸模式
};

NS_ASSUME_NONNULL_BEGIN

@interface SlideScrollView : UIView
@property (nonatomic, assign) SlideScrollViewState sizeState;
@property (nonatomic, assign, readonly) BOOL isSizeFull;
@end

NS_ASSUME_NONNULL_END
