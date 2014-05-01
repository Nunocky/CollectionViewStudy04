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
        // TODO: viewのselected切り替えもbindできるとすっきりするのだが
//        [self.view bind:@"selected"
//               toObject:self
//            withKeyPath:@"selected"
//                options:nil];
    }
    return self;
}

-(void)setSelected:(BOOL)selected
{
    [super setSelected:selected];

    [super setSelected:selected];
    [self.view performSelector:@selector(setSelected:) withObject:@(selected)];
}
@end
