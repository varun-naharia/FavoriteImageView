//
//  FavoriteImageView.h
//  FavoriteImageView
//
//  Created by ImportHack on 07/05/16.
//  Copyright © 2016 TechWizard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FavoriteImageView : UIImageView

@property (nonatomic, strong) UIImageView *heartView;
@property (nonatomic) int percentSize;
@property(nonatomic) NSString *heartPosition;
-(void)heartSize:(int)percent;
-(void)setHeartPosition:(NSString *)position;

@end
