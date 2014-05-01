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
        [[NSColor grayColor] set];
        NSRectFill(self.bounds);
    }
}

-(void)setSelected:(BOOL)selected
{
    if (_selected == selected)
        return;
    _selected = selected;
    [self setNeedsDisplay:YES];
}
@end
