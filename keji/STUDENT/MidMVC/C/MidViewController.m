//
//  MidViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/8.
//
#define ingColor [UIColor colorWithRed:235/255.0 green:147/255.0 blue:41/255.0 alpha:1];
#define doneColor [UIColor colorWithRed:110/255.0 green:112/255.0 blue:125/255.0 alpha:1];
#define okColor [UIColor colorWithRed:107/255.0 green:175/255.0 blue:23/255.0 alpha:1];

#import "MidViewController.h"
#import "SignTableViewCell.h"
#import "DetailsViewController.h"
#import "InViewController.h"
@interface MidViewController ()

@end

@implementation MidViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:246/255.0 alpha:1];
    [self setStr];
    [self setNav];
    [self setUI];
}
- (void)setUI {
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width - 15, self.view.frame.size.height) style:UITableViewStyleGrouped];
    [self.tableView registerClass:[SignTableViewCell class] forCellReuseIdentifier:@"sign"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}
- (void)setNav {
    UITabBarItem* tabBarItem = [UITabBarItem new];
//    tabBarItem.image = [[UIImage imageNamed:@"xiazai.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    tabBarItem.selectedImage = [[UIImage imageNamed:@"xiazai.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.title = @"签到";
    self.tabBarItem = tabBarItem;
    self.navigationItem.title = @"签到";
}
- (void)setStr {
    self.startTimeStr = @"2020-12-28 23:00:00";
    self.stopTimeStr = @"2021-1-17 23:18:00";
    self.midTimeStr = @"至";
    self.connectStr = [[NSString alloc] init];
    self.connectStr = [_connectStr stringByAppendingFormat:@"%@%@%@",self.startTimeStr,self.midTimeStr,self.stopTimeStr];
    self.shangkeStr = @"上课签到";
    self.typeStr = @"普通签到";
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 140;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.005;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0,0, 320,0.005)];
    view.backgroundColor = [UIColor clearColor];
    return view;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.005;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        SignTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"sign" forIndexPath:indexPath];
        
        cell.colorButton.backgroundColor = ingColor;
        cell.typeButton.backgroundColor = ingColor;
        
        cell.signLabel.text = self.shangkeStr;
        cell.typeLabel.text = self.typeStr;
        cell.timeLabel.text = self.connectStr;
        
        [cell.typeButton setTitle:@"进行中" forState:UIControlStateNormal];
        cell.typeButton.titleLabel.textColor = [UIColor whiteColor];
        cell.typeButton.titleLabel.font = [UIFont systemFontOfSize:15];
 
        [cell.detailButton setImage:[UIImage imageNamed:@"xiangqing.jpeg"] forState:UIControlStateNormal];
        [cell.signButton setImage:[UIImage imageNamed:@"hh2.jpeg"] forState:UIControlStateNormal];
        
        cell.detailButton.imageEdgeInsets = UIEdgeInsetsMake(2, 30, 2, 55);
        cell.signButton.imageEdgeInsets = UIEdgeInsetsMake(0, 50, 0, 80);
        
        [cell.detailButton addTarget:self action:@selector(pressDetail) forControlEvents:UIControlEventTouchUpInside];
        [cell.signButton addTarget:self action:@selector(pressSign) forControlEvents:UIControlEventTouchUpInside];
        
        cell.backgroundColor = [UIColor whiteColor];
        cell.selectionStyle = 0;
        return cell;
    }
    return 0;
}
- (void)pressDetail {
    DetailsViewController *viewController = [[DetailsViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
    nav.title = @"详情";
    nav.modalPresentationStyle = 0;
    viewController.startStr = self.startTimeStr;
    viewController.stopStr = self.stopTimeStr;
    viewController.typeStr = self.typeStr;
    viewController.shangkeStr = self.shangkeStr;
    [self presentViewController:nav animated:YES completion:nil];
}
- (void)pressSign {
    InViewController *viewController = [[InViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
    nav.title = @"签到";
    nav.modalPresentationStyle = 0;
    viewController.stopStr = self.stopTimeStr;
    [self presentViewController:nav animated:YES completion:nil];
}
//235 147 41
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
