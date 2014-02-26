//
//  MTCommentCell.m
//  Metro
//
//  Created by ZhouQuan on 14-2-24.
//  Copyright (c) 2014年 iOSTeam. All rights reserved.
//

#import "MTCommentCell.h"
#import "MTConstants.h"
#import "UIImageView+WebCache.h"



@interface MTCommentCell()
@property (nonatomic, strong) UIImageView *avataImageView;
@end



@implementation MTCommentCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        _avataImageView = [[UIImageView alloc] initWithFrame:CGRectMake(kCommentAvataLeftMargin, 0, kCommentAvataSize, kCommentAvataSize)];
        _avataImageView.layer.borderColor = [[UIColor lightGrayColor] CGColor];
        _avataImageView.layer.borderWidth = 1;
        _avataImageView.layer.cornerRadius = kCommentAvataSize*0.5;
        [_avataImageView.layer setMasksToBounds:YES];
        self.backgroundColor = [UIColor clearColor];
        [self addSubview:_avataImageView];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

-(void)drawRect:(CGRect)rect{
    CGContextRef context = UIGraphicsGetCurrentContext();
   
    CGSize contentSize = [_comment.commentContent sizeWithFont:kCommentFont constrainedToSize:CGSizeMake(kMaxContentWidth, MAXFLOAT) lineBreakMode:NSLineBreakByWordWrapping];
    
    CGFloat arrowStartX = kContentStartX - kCommentAvataContentMargin*0.5;
    CGContextMoveToPoint(context, arrowStartX, kCommentAvataSize*0.5);
    CGContextAddLineToPoint(context, arrowStartX+kCommentArrowSize*0.5, kCommentAvataSize*0.5-kCommentArrowSize*0.5);
    CGContextAddLineToPoint(context, arrowStartX+kCommentArrowSize*0.5, kCommentCornerRad);
   
    CGContextAddArc(context, arrowStartX+kCommentArrowSize*0.5+kCommentCornerRad, kCommentCornerRad, kCommentCornerRad, -M_PI,-M_PI_2, 0);
    
    CGContextAddLineToPoint(context, kContentStartX+contentSize.width, 0);
    
    CGContextAddArc(context, kContentStartX+contentSize.width, kCommentCornerRad, kCommentCornerRad, -M_PI_2, 0, 0);
    
    
    
    CGContextAddLineToPoint(context, kContentStartX+contentSize.width+kCommentCornerRad, kCommentAvataSize*0.5+contentSize.height+kCommentFont.lineHeight*0.5);
    
    CGContextAddArc(context, kContentStartX+contentSize.width, kCommentAvataSize*0.5+contentSize.height+kCommentFont.lineHeight*0.5, kCommentCornerRad, 0, M_PI_2, 0);
    
    CGContextAddLineToPoint(context, arrowStartX+kCommentArrowSize*0.5+kCommentCornerRad, kCommentAvataSize*0.5+contentSize.height+kCommentCornerRad+kCommentFont.lineHeight*0.5);
    
    CGContextAddArc(context, arrowStartX+kCommentArrowSize*0.5+kCommentCornerRad, kCommentAvataSize*0.5+contentSize.height+kCommentFont.lineHeight*0.5, kCommentCornerRad, M_PI_2, M_PI, 0);
    
    CGContextAddLineToPoint(context, arrowStartX+kCommentArrowSize*0.5, kCommentAvataSize*0.5+kCommentArrowSize*0.5);
    CGContextAddLineToPoint(context, arrowStartX, kCommentAvataSize*0.5);
    
    CGContextSetFillColorWithColor(context, [[UIColor whiteColor] CGColor]);
    CGContextFillPath(context);
    
    
    CGContextSetFillColorWithColor(context, [[UIColor blackColor] CGColor]);
    [_comment.commentContent drawInRect:CGRectMake(kContentStartX, kCommentAvataSize*0.5-kCommentFont.lineHeight*0.5, contentSize.width, contentSize.height) withFont:kCommentFont lineBreakMode:NSLineBreakByWordWrapping];
    
    
    float rateStartX = kContentStartX+contentSize.width+kCommentCornerRad+kCommentContextRateMargin;
    float clockStartX = rateStartX;
    for (int i =0 ; i < _comment.rate; i++) {
        [[UIImage imageNamed:@"X"] drawInRect:CGRectMake(rateStartX, kCommentCornerRad, kCommentRateStarSize-3, kCommentRateStarSize-3)];
        rateStartX+=kCommentRateStarSize;
    }
    
    [[UIImage imageNamed:@"X"] drawInRect:CGRectMake(clockStartX, kCommentCornerRad+kCommentRateStarSize, kCommentRateStarSize-3, kCommentRateStarSize-3)];
    CGContextSetFillColorWithColor(context, [[UIColor whiteColor] CGColor]);
    CGFloat clockTextStartY = kCommentCornerRad+kCommentRateStarSize+(kCommentRateStarSize-3-[kCommentTimeFont lineHeight])*0.5f;
    [_comment.time drawInRect:CGRectMake(clockStartX+kCommentRateStarSize, clockTextStartY, kCommentRateSize-kCommentRateStarSize, kCommentRateStarSize-3) withFont:kCommentTimeFont lineBreakMode:NSLineBreakByTruncatingTail alignment:NSTextAlignmentLeft];
    
    
}

-(void)setComment:(MTComment *)comment{
    _comment = comment;
    [_avataImageView setImageWithURL:[NSURL URLWithString:_comment.avataURL]];
    [self setNeedsDisplay];
}

@end
