//
//  InformationViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/17.
//

#import "InformationViewController.h"
#import "InformationFirstTableViewCell.h"
#import "InformationSecondTableViewCell.h"
#import "SexViewController.h"
@interface InformationViewController ()

@end

@implementation InformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"学生信息";
    self.view.backgroundColor = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:240/255.0 alpha:1];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"zuojiantou.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    backButton.tintColor = [UIColor blackColor];
    [self.navigationItem setLeftBarButtonItem:backButton];
    self.sureButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.sureButton setTitle:@"保存" forState:UIControlStateNormal];
    self.sureButton.frame = CGRectMake(30, self.view.frame.size.height*0.62, self.view.frame.size.width - 60, 45);
    self.sureButton.backgroundColor = [UIColor colorWithRed:80/255.0 green:173/255.0 blue:87/255.0 alpha:1];
    self.sureButton.titleLabel.font = [UIFont systemFontOfSize:19];
    self.sureButton.titleLabel.tintColor = [UIColor whiteColor];
    [self.sureButton addTarget:self action:@selector(pressSure) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.sureButton];
    [self setUI];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}
- (void)pressSure {
    
}
- (void)setUI{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(10, 50, self.view.frame.size.width - 20, self.view.frame.size.height * 0.5) style:UITableViewStylePlain];
    [self.tableView registerClass:[InformationFirstTableViewCell class] forCellReuseIdentifier:@"cell1"];
    [self.tableView registerClass:[InformationSecondTableViewCell class] forCellReuseIdentifier:@"cell2"];
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 5, 0, CGFLOAT_MIN)];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}
- (void)pressBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return (self.view.frame.size.height * 0.5 - 15)/7 + 10;
    } else {
        return (self.view.frame.size.height * 0.5 - 15)/7 - 6;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            InformationFirstTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
            return cell;
        } else if (indexPath.row == 1) {
            InformationSecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
            cell.mainLabel.text = @"姓名";
            cell.mainTextField.placeholder = @"你的名字";
            return cell;
        } else if (indexPath.row == 2) {
            InformationSecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
            cell.mainLabel.text = @"身份证";
            return cell;
        } else if (indexPath.row == 3) {
            InformationSecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
            cell.mainLabel.text = @"性别";
            cell.mainTextField.placeholder = @"男";
            [cell.mainImageView setImage:[UIImage imageNamed:@"youjiantou.png"]];
            return cell;
        } else if (indexPath.row == 4) {
            InformationSecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
            cell.mainLabel.text = @"专业";
            cell.mainTextField.placeholder = @"请输入专业名称";
            return cell;
        } else if (indexPath.row == 5) {
            InformationSecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
            cell.mainLabel.text = @"描述";
            [cell.mainImageView setImage:[UIImage imageNamed:@"youjiantou.png"]];
            return cell;
        } else if (indexPath.row == 6) {
            InformationSecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
            cell.mainLabel.text = @"民族";
            cell.mainTextField.placeholder = @"汉族";
            [cell.mainImageView setImage:[UIImage imageNamed:@"youjiantou.png"]];
            return cell;
        }
    }
    return 0;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 3) {
            SexViewController *viewController = [[SexViewController alloc] init];
            self.view.alpha = 0.7;
            viewController.modalPresentationStyle = UIModalPresentationCustom;
            [self presentViewController:viewController animated:YES completion:nil];
        }
    }
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