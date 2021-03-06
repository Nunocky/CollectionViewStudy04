//
//  PersonModelViewItem.m
//  CollectionViewStudy04
//
//  Created by 布川祐人 on 2014/05/01.
//  Copyright (c) 2014年 NUNOKAWA Masato. All rights reserved.
//

#import "PersonModelViewItem.h"

@interface PersonModelViewItem ()

@end

@implementation PersonModelViewItem

- (instancetype)init
{
    self = [super initWithNibName:@"PersonModelViewItem" bundle:nil];
    if (self) {
    }
    return self;
}

-(void)awakeFromNib
{
    // Nibの読み込みが完了した時点でviewにアクセス可能。ここでbindの設定をする
    [self.view bind:@"selected"
           toObject:self
        withKeyPath:@"selected"
            options:nil];
}

@end
