//
//  PersonModelView.m
//  CollectionViewStudy04
//
//  Created by 布川祐人 on 2014/05/01.
//  Copyright (c) 2014年 NUNOKAWA Masato. All rights reserved.
//

#import "PersonModelView.h"

@implementation PersonModelView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];
    
    if (_selected) {
        [[NSColor colorWithCalibratedRed:0.5 green:0.5 blue:0.5 alpha:0.5] set];
        NSRectFill(self.bounds);
    }
}

-(void)setSelected:(BOOL)selected
{
    _selected = selected;
    [self setNeedsDisplay:YES];
}
@end
