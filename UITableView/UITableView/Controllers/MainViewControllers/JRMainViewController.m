//
//  JRMainViewController.m
//  UITableView
//
//  Created by 王潇 on 16/11/2.
//  Copyright © 2016年 王潇. All rights reserved.
//

#import "JRMainViewController.h"

@interface JRMainViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation JRMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	[self setupView];
}

- (void)setupView {
	
	self.view.backgroundColor = [UIColor whiteColor];
	
	self.tableView = ({
		UITableView *tableView	= [[UITableView alloc] initWithFrame:self.view.bounds
															   style:UITableViewStyleGrouped];
		tableView.delegate		= self;
		tableView.dataSource	= self;
//		tableView.estimatedRowHeight = 66;
		[tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"normalCell"];
		[self.view addSubview:tableView];
		tableView;
	});
}

#pragma mark - UItableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 22;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"normalCell"];
	cell.textLabel.text = @"is a Cell";
	return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
	
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
	NSLog(@"=================%zd", indexPath.row);
	
//	if (indexPath.row % 2 == 0) {
		return 44;
//	}
//	return 88;
	
}

@end
