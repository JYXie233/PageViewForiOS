//
//  PageView.h
//  Community
//
//  Created by Tom on 16/1/10.
//  Copyright © 2016年 Jia. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PageViewDelegate <NSObject>

-(void)onPageViewTabChange:(NSInteger)index;

@end

@interface PageView : UIView

@property (nonatomic, copy) NSArray * titles;

@property (nonatomic, copy) UIColor * backgroundColor;

@property (nonatomic, copy) UIColor * bottomLineColor;

@property (nonatomic, assign) CGFloat bottomLineHeight;

@property (nonatomic, copy) UIColor * titleNormalColor;

@property (nonatomic, copy) UIColor * titleHightLightColor;

@property (nonatomic, assign) CGFloat tabHeight;

@property (nonatomic, strong) NSArray * viewControllers;

@property (nonatomic, assign) NSInteger selection;

@property (nonatomic, strong) id<PageViewDelegate> delegate;
@end
