//
//  DetailsViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/22.
//

#import "DetailsViewController.h"
#import "TeacherTableViewCell.h"
#import "TimeTableViewCell.h"
#import "PosterTableViewCell.h"
@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"详情";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"zuojiantou.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    backButton.tintColor = [UIColor blackColor];
    [self.navigationItem setLeftBarButtonItem:backButton];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    [self.tableView registerClass:[TeacherTableViewCell class] forCellReuseIdentifier:@"cell1"];
    [self.tableView registerClass:[TimeTableViewCell class] forCellReuseIdentifier:@"cell2"];
    [self.tableView registerClass:[PosterTableViewCell class] forCellReuseIdentifier:@"cell3"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 5, 0, CGFLOAT_MIN)];
    [self setStr];
}
- (void)pressBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)setStr {
    self.teacherImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tx.jpg"]];
    self.teacherNameStr = @"马六";
    self.teacherTypeStr = @"物理老师";
    self.teacherPostStr = @"上课签到，不要迟到";
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 80;
    } else if (indexPath.section == 1) {
        return 100;
    } else if (indexPath.section == 2) {
        return 500;
    }
    return 0;
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
        TeacherTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
        cell.touxiangImageView.image = self.teacherImageView.image;
        cell.teacherNameLabel.text = self.teacherNameStr;
        cell.teacherTypeLabel.text = self.teacherTypeStr;
        return cell;
    } else if (indexPath.section == 1) {
        TimeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
        cell.typeLabel.text = self.typeStr;
        cell.startTimeLabel.text = self.startStr;
        cell.stopTimeLabel.text = self.stopStr;
        return cell;
    } else if (indexPath.section == 2) {
        PosterTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell3" forIndexPath:indexPath];
        cell.shangkeLabel.text = self.shangkeStr;
        cell.posterLabel.text = self.teacherPostStr;
        return cell;
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
