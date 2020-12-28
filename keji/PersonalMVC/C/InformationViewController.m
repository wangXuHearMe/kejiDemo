//
//  InformationViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/17.
//

#import "InformationViewController.h"
#import "InformationFirstTableViewCell.h"
#import "InformationSecondTableViewCell.h"
#import "InformationThirdTableViewCell.h"
#import "DescriptViewController.h"
#import "MypictureViewController.h"
#import "SexViewController.h"
@interface InformationViewController ()

@end

@implementation InformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.IDStr = @"61052820010623001X";
    // Do any additional setup after loading the view.
    self.isSex = NO;
    self.isDescr = NO;
    self.isNation = NO;
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
    [self.tableView registerClass:[InformationThirdTableViewCell class] forCellReuseIdentifier:@"cell3"];
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 5, 0, CGFLOAT_MIN)];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}
- (void)pressBack {
    [self.delegate pass:self.imageStr];
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
            cell.mainImageview.image = self.imageStr.image;
            return cell;
        } else if (indexPath.row == 1) {
            InformationThirdTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell3" forIndexPath:indexPath];
            cell.mainLabel.text = @"姓名";
            cell.strLabel.text = self.nameStr;
            return cell;
        } else if (indexPath.row == 2) {
            InformationThirdTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell3" forIndexPath:indexPath];
            cell.mainLabel.text = @"身份证";
            cell.strLabel.text = self.IDStr;
            return cell;
        } else if (indexPath.row == 3) {
            InformationThirdTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell3" forIndexPath:indexPath];
            cell.mainLabel.text = @"性别";
            if (self.isSex == NO) {
                cell.strLabel.text = @"男";
                cell.strLabel.textColor = [UIColor colorWithRed:197/255.0 green:197/255.0 blue:197/255.0 alpha:1];
            } else {
                cell.strLabel.text = self.sexStr;
                cell.strLabel.textColor = [UIColor blackColor];
            }
            [cell.mainImageView setImage:[UIImage imageNamed:@"youjiantou.png"]];
            return cell;
        } else if (indexPath.row == 4) {
            InformationSecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
            cell.mainLabel.text = @"专业";
            cell.mainTextField.placeholder = @"请输入专业名称";
            return cell;
        } else if (indexPath.row == 5) {
            InformationThirdTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell3" forIndexPath:indexPath];
            cell.mainLabel.text = @"描述";
            cell.strLabel.text = self.descriStr;
            [cell.mainImageView setImage:[UIImage imageNamed:@"youjiantou.png"]];
            return cell;
        } else if (indexPath.row == 6) {
            InformationThirdTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell3" forIndexPath:indexPath];
            cell.mainLabel.text = @"民族";
            if (self.isNation == NO) {
                cell.strLabel.text = @"汉族";
                cell.strLabel.textColor = [UIColor colorWithRed:197/255.0 green:197/255.0 blue:197/255.0 alpha:1];
            } else {
                cell.strLabel.text = self.nationStr;
                cell.strLabel.textColor = [UIColor blackColor];
            }
            [cell.mainImageView setImage:[UIImage imageNamed:@"youjiantou.png"]];
            return cell;
        }
    }
    return 0;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            MypictureViewController *viewController = [[MypictureViewController alloc] init];
            viewController.modalPresentationStyle = UIModalPresentationCustom;
            viewController.imageStr = self.imageStr;
            viewController.delegate = self;
            [self presentViewController:viewController animated:YES completion:nil];
        }
        if (indexPath.row == 3) {
            SexViewController *viewController = [[SexViewController alloc] init];
            viewController.delegate = self;
            viewController.modalPresentationStyle = UIModalPresentationCustom;
            [self presentViewController:viewController animated:YES completion:nil];
        } else if (indexPath.row == 5) {
            DescriptViewController *viewController = [[DescriptViewController alloc] init];
            UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
            viewController.delegate = self;
            nav.modalPresentationStyle = UIModalPresentationCustom;
            [self presentViewController:nav animated:YES completion:nil];
        } else if (indexPath.row == 6) {
            NationViewController *viewController = [[NationViewController alloc] init];
            viewController.delegate = self;
            viewController.modalPresentationStyle = UIModalPresentationCustom;
            [self presentViewController:viewController animated:YES completion:nil];
        }
    }
}
- (void)pass:(BOOL)isBegin andlabel:(NSString *)sex {
    self.isSex = isBegin;
    self.sexStr = sex;
    NSIndexSet *indexSet = [[NSIndexSet alloc] initWithIndex:0];
    [self.tableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
}
- (void)pass:(BOOL)isgan andstr:(NSString *)decriptLabel {
    self.isDescr = isgan;
    self.descriStr = decriptLabel;
    NSIndexSet *indexSet = [[NSIndexSet alloc] initWithIndex:0];
    [self.tableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
}
- (void)pass:(BOOL)isgan ansNationText:(NSString *)nationText {
    self.isNation = isgan;
    self.nationStr = nationText;
    NSIndexSet *indexSet = [[NSIndexSet alloc] initWithIndex:0];
    [self.tableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
}
- (void)pass:(UIImageView *)imageStr {
    self.imageStr = imageStr;
    [self.tableView reloadData];
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
