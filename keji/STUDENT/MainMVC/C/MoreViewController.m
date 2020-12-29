//
//  MoreViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/9.
//

#import "MoreViewController.h"
#import "MoreTableViewCell.h"
@interface MoreViewController ()

@end

@implementation MoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUI];
}
- (void)setUI {
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width * 0.74, self.view.frame.size.height - 90) style:UITableViewStyleGrouped];
    [self.tableView registerClass:[MoreTableViewCell class] forCellReuseIdentifier:@"cell1"];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    UIView *aView = [[UIView alloc]initWithFrame:CGRectMake(0, -14, self.view.frame.size.width * 0.74, self.view.frame.size.height * 0.22)];
    UIImageView *headImgaeView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width * 0.74, self.view.frame.size.height * 0.22)];
    headImgaeView.image = [UIImage imageNamed:@"头视图.jpg"];
    [aView addSubview:headImgaeView];
    self.tableView.tableHeaderView = aView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"通用";
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        MoreTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
        if (indexPath.row == 0) {
            cell.labelone.text = @"已添课程";
            return cell;
        } else if (indexPath.row == 1) {
            cell.labelone.text = @"申请情况";
            return cell;
        } else if (indexPath.row == 2) {
            cell.labelone.text = @"关于";
            return cell;
        } else if (indexPath.row == 3) {
            cell.labelone.text = @"吐个槽";
            return cell;
        } else if (indexPath.row == 4) {
            cell.labelone.text = @"设置";
            return cell;
        }
    }
    return 0;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:NO completion:nil];
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
