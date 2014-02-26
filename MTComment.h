//
//  MTComment.h
//  Metro
//
//  Created by ZhouQuan on 14-2-24.
//  Copyright (c) 2014年 iOSTeam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTComment : NSObject
@property (nonatomic, copy) NSString *commentContent;
@property (nonatomic, copy) NSString *avataURL;
@property (nonatomic, assign) NSInteger rate;
@property (nonatomic, copy) NSString *time;
@end
