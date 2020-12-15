//
//  PersonalViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/13.
//

#import "PersonalViewController.h"
#import "InformationTableViewController.h"
#import "AboutTableViewController.h"
@interface PersonalViewController ()

@end

@implementation PersonalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tabBarItem = [UITabBarItem new];
//    tabBarItem.image = [[UIImage imageNamed:@"xiazai.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    tabBarItem.selectedImage = [[UIImage imageNamed:@"xiazai.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.title = @"个人中心";
    self.tabBarItem = tabBarItem;
    
    self.navigationItem.title = @"个人中心";
    self.personalView = [[PersonalView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.personalView];
    [self.personalView.tableView registerClass:[PersonalFirstTableViewCell class] forCellReuseIdentifier:@"cell1"];
    [self.personalView.tableView registerClass:[PersonalSecondTableViewCell class] forCellReuseIdentifier:@"cell2"];
    self.personalView.tableView.delegate = self;
    self.personalView.tableView.dataSource = self;
    self.navigationController.delegate = self;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        InformationTableViewController *viewController = [[InformationTableViewController alloc] init];
        viewController.modalPresentationStyle = 0;
//        [self.navigationController presentViewController:viewController animated:YES completion:nil];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
        [self presentViewController:nav animated:YES completion:nil];
    } else {
        AboutTableViewController *viewController = [[AboutTableViewController alloc] init];
        viewController.modalPresentationStyle = 0;
        [self.navigationController presentViewController:viewController animated:YES completion:nil];
    }
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 70;
    } else {
        return 50;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        PersonalFirstTableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
        [cell1.headImgaeView setImage:[UIImage imageNamed:@"tx.jpg"]];
        cell1.nameLabel.text = @"马六";
        cell1.nameLabel.textColor = [UIColor blackColor];
        cell1.collegeLabel.text = @"计算机学院";
        cell1.collegeLabel.textColor = [UIColor grayColor];
        cell1.backgroundColor = [UIColor whiteColor];
        cell1.selectionStyle = 0;
        return cell1;
    } else {
        PersonalSecondTableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
        cell2.backgroundColor = [UIColor whiteColor];
        cell2.selectionStyle = 0;
        return cell2;
    }
    return 0;
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
