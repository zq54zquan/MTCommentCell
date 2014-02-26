//
//  MTCommentCell.h
//  Metro
//
//  Created by ZhouQuan on 14-2-24.
//  Copyright (c) 2014年 iOSTeam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTComment.h"

#define kCommentAvataLeftMargin         20
#define kCommentAvataSize               45
#define kCommentAvataContentMargin      20
#define kCommentRateSize                60
#define kCommentRateRightMargin         20
#define kContentStartX                  kCommentAvataSize + kCommentAvataLeftMargin + kCommentAvataContentMargin
#define kMaxContentWidth                SCREENWIDTH - (kContentStartX) - (kCommentRateSize) - kCommentRateRightMargin

#define kCommentFont                    [UIFont systemFontOfSize:11]
#define kCommentTimeFont                [UIFont systemFontOfSize:9]
#define kCommentArrowSize               10
#define kCommentCornerRad               5

#define kCommentContextRateMargin       (10)
#define kCommentRateStarSize            (kCommentRateSize/3)

@interface MTCommentCell : UITableViewCell
@property (nonatomic, strong) MTComment *comment;
@end
