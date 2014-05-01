//
//  AppDelegate.h
//  CollectionViewStudy04-4
//
//  Created by 布川祐人 on 2014/05/01.
//  Copyright (c) 2014年 NUNOKAWA Masato. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSCollectionView *collectionView;

@property (nonatomic) NSMutableArray *personArray;

@end
