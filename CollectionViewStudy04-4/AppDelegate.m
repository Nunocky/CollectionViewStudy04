//
//  AppDelegate.m
//  CollectionViewStudy04-4
//
//  Created by 布川祐人 on 2014/05/01.
//  Copyright (c) 2014年 NUNOKAWA Masato. All rights reserved.
//

#import "AppDelegate.h"
#import "PersonModel.h"
#import "PersonModelViewItem.h"

@interface AppDelegate()
{
    NSArrayController *_arrayController;
}

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    _arrayController = [[NSArrayController alloc] init];
    
    [_arrayController bind:@"contentArray"
                  toObject:self
               withKeyPath:@"personArray"
                   options:nil];
    
    [_collectionView bind:@"content"
                 toObject:_arrayController
              withKeyPath:@"arrangedObjects"
                  options:nil];
    
//    [_collectionView bind:@"selectionIndexes"
//                 toObject:_arrayController
//              withKeyPath:@"selectionIndexes"
//                  options:nil];
    
    _collectionView.itemPrototype = [[PersonModelViewItem alloc] init];
    
    [self setDefaultData];
}

-(void)setDefaultData
{
    PersonModel *obj;
    NSMutableArray *tmpArray = [NSMutableArray array];
    
    obj = [PersonModel new];
    obj.name = @"はなこ";
    obj.title = @"社長";
    [tmpArray addObject:obj];
    
    obj = [PersonModel new];
    obj.name = @"たま";
    obj.title = @"ねこ";
    [tmpArray addObject:obj];
    
    for (int i=0; i<20; i++) {
        obj = [PersonModel new];
        obj.name = [NSString stringWithFormat:@"人%d", i];
        obj.title = @"従業員";
        [tmpArray addObject:obj];
    }
    
    [self setPersonArray:tmpArray];
}

-(void)insertObject:(PersonModel *)object inPersonArrayAtIndex:(NSUInteger)index
{
    [_personArray insertObject:object atIndex:index];
}

-(void)removeObjectFromPersonArrayAtIndex:(NSUInteger)index
{
    [_personArray removeObjectAtIndex:index];
}

-(void)setPersonArray:(NSMutableArray *)personArray
{
    _personArray = personArray;
}


@end
