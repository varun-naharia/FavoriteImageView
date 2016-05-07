//
//  FavoriteImageView.m
//  FavoriteImageView
//
//  Created by ImportHack on 07/05/16.
//  Copyright © 2016 TechWizard. All rights reserved.
//

#import "FavoriteImageView.h"

@interface FavoriteImageView()
{
    int heart_x_position;
    int heart_y_position;
}


@end

@implementation FavoriteImageView
@synthesize heartView,percentSize,heartPosition;

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
    percentSize = 10;
    heart_x_position = 0;
    heart_y_position = 0;
    heartView = [[UIImageView alloc] init];
    heartView.image = [UIImage imageNamed:@"heart"];
    heartView.frame = CGRectMake(heart_x_position, heart_y_position, (self.frame.size.width*percentSize)/100, (self.frame.size.width*percentSize)/100);
    [self addSubview:heartView];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
/*- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    
}*/

-(void)layoutSubviews
{
    if([heartPosition isEqualToString:@"TopLeft"])
    {
        heart_x_position = 0;
        heart_y_position = 0;
    }
    else if([heartPosition isEqualToString:@"TopRight"])
    {
        heart_x_position = self.frame.size.width-((self.frame.size.width*percentSize)/100);
        heart_y_position = 0;
    }
    else if([heartPosition isEqualToString:@"BottomLeft"])
    {
        heart_x_position = 0;
        heart_y_position = self.frame.size.height-((self.frame.size.width*percentSize)/100);
    }
    else if([heartPosition isEqualToString:@"BottomRight"])
    {
        heart_x_position = self.frame.size.width-((self.frame.size.width*percentSize)/100);
        heart_y_position = self.frame.size.height-((self.frame.size.width*percentSize)/100);
    }
    
    heartView.frame = CGRectMake(heart_x_position, heart_y_position, (self.frame.size.width*percentSize)/100, (self.frame.size.width*percentSize)/100);
}

-(void)heartSize:(int)percent
{
    percentSize = percent;
}

-(void)setHeartPosition:(NSString *)position
{
    heartPosition = position;
}


@end
