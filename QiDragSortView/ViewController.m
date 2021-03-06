//
//  ViewController.m
//  QiDragSortView
//
//  Created by huangxianshuai on 2018/12/21.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import "ViewController.h"
#import "QiDragSortView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    QiDragSortView *dragSortView = [[QiDragSortView alloc] initWithFrame:CGRectMake(.0, 100.0, self.view.bounds.size.width, .0)];
    dragSortView.backgroundColor = [[UIColor lightGrayColor] colorWithAlphaComponent:.5];
    dragSortView.rowHeight = 50.0;
    dragSortView.rowMargin = 30.0;
    dragSortView.rowPadding = 20.0;
    dragSortView.columnCount = 3;
    dragSortView.columnMargin = 30.0;
    dragSortView.columnPadding = 20.0;
    dragSortView.normalColor = [UIColor redColor];
    dragSortView.selectedColor = [UIColor purpleColor];
    dragSortView.enabledTitles = @[@"奇舞周刊", @"众成翻译", @"QiShare", @"HULK一线杂谈", @"Qtest之道"];//!< 可以点击选择的Buttons（选填，默认全选）
    dragSortView.selectedTitles = @[@"首页推荐", @"HULK一线杂谈", @"Qtest之道"];//!< 初始选择的Buttons（选填，默认全选）
    dragSortView.titles = @[@"首页推荐", @"奇舞周刊", @"众成翻译", @"QiShare", @"HULK一线杂谈", @"Qtest之道"];//!< 初始的Buttons（必填）
    
    dragSortView.dragSortEnded = ^(NSArray<UIButton *> * _Nonnull buttons) {
        for (UIButton *button in buttons) {
            NSLog(@"title: %@, selected: %i", button.currentTitle, button.isSelected);
        }
    };

    [self.view addSubview:dragSortView];
}

@end
