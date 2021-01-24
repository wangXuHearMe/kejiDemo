//
//  LaunchViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/30.
//

#import "LaunchViewController.h"
#import "LaunchTableViewCell.h"
#import "LaunchTwoTableViewCell.h"
#import "ThemeViewController.h"
#import "ListViewController.h"
#import "ExplainViewController.h"
#import "TimeLimitViewController.h"
#import "StartTimeViewController.h"
#import "MapViewController.h"
@interface LaunchViewController ()

@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setNav];
    [self setString];
    [self setUI];
}
- (void)setNav {
    UITabBarItem* tabBarItem = [UITabBarItem new];
//    tabBarItem.image = [[UIImage imageNamed:@"xiazai.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    tabBarItem.selectedImage = [[UIImage imageNamed:@"xiazai.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.title = @"发起签到";
    self.tabBarItem = tabBarItem;
    
    self.navigationItem.title = @"发起签到";
}
- (void)setString {
    self.zhutiString = @"主题";
    self.mingdanString = @"名单";
    self.shuomingString = @"说明";
    self.weizhiString = @"位置";
    self.isZhuti = NO;
    self.isMingdan = NO;
    self.isShuoming = NO;
    self.isWeizhi = NO;
    self.limitString = @"五分钟";
    self.startSrting = @"现在";
    self.shijianxianzhi = @"时间限制:";
    self.kaishishijian = @"开始时间:";
    [self moreTwo];
}
- (void)setUI {
    self.view.backgroundColor = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:246/255.0 alpha:1];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, 115, self.view.frame.size.width - 30, self.view.frame.size.height * 0.4) style:UITableViewStyleGrouped];
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 20, 0, CGFLOAT_MIN)];
    [self.tableView registerClass:[LaunchTableViewCell class] forCellReuseIdentifier:@"cell1"];
    [self.tableView registerClass:[LaunchTwoTableViewCell class] forCellReuseIdentifier:@"cell2"];
    self.tableView.layer.cornerRadius = 5;
    self.tableView.layer.masksToBounds = YES;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
    self.timeLimitButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.startTimeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.launchSignButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    self.timeLimitButton.frame = CGRectMake(15, 100 + self.view.frame.size.height * 0.4, self.view.frame.size.width - 30, 50);
    self.timeLimitButton.backgroundColor = [UIColor colorWithRed:80/255.0 green:173/255.0 blue:87/255.0 alpha:1];
    [self more];
    [self.timeLimitButton addTarget:self action:@selector(timeLimit) forControlEvents:UIControlEventTouchUpInside];
    self.timeLimitButton.titleLabel.font = [UIFont systemFontOfSize:17];
    self.timeLimitButton.titleLabel.tintColor = [UIColor whiteColor];
    self.timeLimitButton.layer.cornerRadius = 25;
    [self.view addSubview:self.timeLimitButton];
    
    self.startTimeButton.frame = CGRectMake(15, 170 + self.view.frame.size.height * 0.4, self.view.frame.size.width - 30, 50);
    self.startTimeButton.backgroundColor = [UIColor colorWithRed:80/255.0 green:173/255.0 blue:87/255.0 alpha:1];
    [self more];
    [self.startTimeButton addTarget:self action:@selector(startTime) forControlEvents:UIControlEventTouchUpInside];
    self.startTimeButton.titleLabel.font = [UIFont systemFontOfSize:17];
    self.startTimeButton.titleLabel.tintColor = [UIColor whiteColor];
    self.startTimeButton.layer.cornerRadius = 25;
    [self.view addSubview:self.startTimeButton];
    
    self.launchSignButton.frame = CGRectMake(140, 250 + self.view.frame.size.height * 0.4, 90, 90);
    self.launchSignButton.backgroundColor = [UIColor redColor];
    [self.launchSignButton setTitle:@"发起签到" forState:UIControlStateNormal];
    [self.launchSignButton addTarget:self action:@selector(sign) forControlEvents:UIControlEventTouchUpInside];
    self.launchSignButton.titleLabel.font = [UIFont systemFontOfSize:17];
    self.launchSignButton.titleLabel.tintColor = [UIColor whiteColor];
    self.launchSignButton.layer.cornerRadius = 45;
    [self.view addSubview:self.launchSignButton];
}
- (void)more {
    [self.timeLimitButton setTitle:self.limitTimeString forState:UIControlStateNormal];
    [self.startTimeButton setTitle:self.startTimeString forState:UIControlStateNormal];
}
- (void)moreTwo {
    self.limitTimeString = [self.shijianxianzhi stringByAppendingString:self.limitString];
    self.startTimeString = [self.kaishishijian stringByAppendingString:self.startSrting];
}
- (void)timeLimit {
    TimeLimitViewController *viewController = [[TimeLimitViewController alloc] init];
    viewController.delegate = self;
    viewController.timeString = self.limitString;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
    nav.title = @"持续时间";
    nav.modalPresentationStyle = 0;
    [self presentViewController:nav animated:YES completion:nil];
}
- (void)startTime {
    StartTimeViewController *viewController = [[StartTimeViewController alloc] init];
    viewController.delegate = self;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
    nav.title = @"开始时间";
    nav.modalPresentationStyle = 0;
    [self presentViewController:nav animated:YES completion:nil];
}
- (void)sign {
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 3;
    } else {
        return 2;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
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
        LaunchTableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
        cell1.contentView.backgroundColor = [UIColor whiteColor];
        cell1.selectionStyle = 0;
        if (indexPath.row == 0) {
            cell1.firstLabel.text = @"签到主题";
            cell1.secondLabel.text = self.zhutiString;
            if (self.isZhuti == NO) {
                cell1.secondLabel.textColor = [UIColor grayColor];
            } else {
                cell1.secondLabel.textColor = [UIColor blackColor];
            }
            return cell1;
        } else if (indexPath.row == 1) {
            cell1.firstLabel.text = @"签到说明";
            cell1.secondLabel.text = self.shuomingString;
            if (self.isShuoming == NO) {
                cell1.secondLabel.textColor = [UIColor grayColor];
            } else {
                cell1.secondLabel.textColor = [UIColor blackColor];
            }
            return cell1;
        } else if (indexPath.row == 2) {
            cell1.firstLabel.text = @"名单选择";
            cell1.secondLabel.text = self.mingdanString;
            if (self.isMingdan == NO) {
                cell1.secondLabel.textColor = [UIColor grayColor];
            } else {
                cell1.secondLabel.textColor = [UIColor blackColor];
            }
            return cell1;
        }
    } else if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            LaunchTwoTableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
            cell2.contentView.backgroundColor = [UIColor whiteColor];
            cell2.firstLabel.text = @"签到类型";
            cell2.selectionStyle = 0;
            return cell2;
        } else if (indexPath.row == 1) {
            LaunchTableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
            cell2.contentView.backgroundColor = [UIColor whiteColor];
            cell2.selectionStyle = 0;
            cell2.firstLabel.text = @"签到位置";
            cell2.secondLabel.text = self.weizhiString;
            if (self.isWeizhi == NO) {
                cell2.secondLabel.textColor = [UIColor grayColor];
            } else {
                cell2.secondLabel.textColor = [UIColor blackColor];
            }
            return cell2;
        }
    }
    return 0;
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.backgroundColor = [UIColor clearColor];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            ThemeViewController *viewController = [[ThemeViewController alloc] init];
            viewController.modalPresentationStyle = UIModalPresentationCustom;
            viewController.delegate = self;
            [self presentViewController:viewController animated:YES completion:nil];
        } else if (indexPath.row == 2) {
            ListViewController *viewController = [[ListViewController alloc] init];
            viewController.modalPresentationStyle = UIModalPresentationCustom;
            viewController.delegate = self;
            [self presentViewController:viewController animated:YES completion:nil];
        } else if (indexPath.row == 1) {
            ExplainViewController *viewController = [[ExplainViewController alloc] init];
            viewController.delegate = self;
//            viewController.textField.text = self.shuomingString;
            UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
            nav.title = nil;
            nav.modalPresentationStyle = 0;
            [self presentViewController:nav animated:YES completion:nil];
        }
    } else if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"当前仅支持这两种方法" preferredStyle:UIAlertControllerStyleAlert];
             [self presentViewController:alert animated:YES completion:nil];
             [self performSelector:@selector(dismiss:) withObject:alert afterDelay:2.0];
        } else if (indexPath.row == 1) {
            MapViewController *viewController = [[MapViewController alloc] init];
            UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
            nav.title = @"签到位置";
            nav.modalPresentationStyle = 0;
            [self presentViewController:nav animated:YES completion:nil];
        }
    }
}
- (void)dismiss:(UIAlertController *)alert {
    [alert dismissViewControllerAnimated:YES completion:nil];
}
- (void)pass:(BOOL)isOK andZhuti:(NSString *)zhutiString {
    self.isZhuti = isOK;
    self.zhutiString = zhutiString;
    NSIndexSet *indexSet = [[NSIndexSet alloc] initWithIndex:0];
    [self.tableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
}
- (void)pass:(BOOL)isOk andMingdan:(NSString *)mingdanString {
    self.isMingdan = isOk;
    self.mingdanString = mingdanString;
    NSIndexSet *indexSet = [[NSIndexSet alloc] initWithIndex:0];
    [self.tableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
}
- (void)passTimeLimit:(NSString *)timeLimitString {
    self.limitString = timeLimitString;
    [self moreTwo];
    [self more];
}
- (void)passStartTime:(NSString *)startTimeString {
    self.startSrting = startTimeString;
    [self moreTwo];
    [self more];
}
- (void)passExplainText:(NSString *)explainText andBool:(BOOL)isExplain {
    self.isShuoming = isExplain;
    self.shuomingString = explainText;
    NSIndexSet *indexSet = [[NSIndexSet alloc] initWithIndex:0];
    [self.tableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
