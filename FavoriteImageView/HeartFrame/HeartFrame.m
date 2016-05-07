//
//  HeartFrame.m
//  FavoriteImageView
//
//  Created by ImportHack on 07/05/16.
//  Copyright © 2016 TechWizard. All rights reserved.
//

#import "HeartFrame.h"

@interface HeartFrame()


@end

@implementation HeartFrame
@synthesize outerImage;
-(instancetype)init
{
    self = [super init];
    [self setupView];
    return self;
}

-(void)awakeFromNib
{
    [self setupView];
}

-(void)setupView
{
    outerImage = [[UIImageView alloc] init];
    outerImage.image = [UIImage imageNamed:@"heart_frame"];
    [self addSubview:outerImage];
}

-(void)layoutSubviews
{
    outerImage.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
