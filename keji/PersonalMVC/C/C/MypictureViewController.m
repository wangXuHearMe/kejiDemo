//
//  MypictureViewController.m
//  keji
//
//  Created by 王旭 on 2020/12/22.
//

#import "MypictureViewController.h"
#import "SexTableViewCell.h"
#import "BigPictureViewController.h"
@interface MypictureViewController ()

@end

@implementation MypictureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height * 0.74, self.view.frame.size.width, self.view.frame.size.height * 0.26) style:UITableViewStyleGrouped];
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[SexTableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:self.tableView];
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 5, 0, CGFLOAT_MIN)];
    self.pickerController = [[UIImagePickerController alloc] init];
    self.pickerController.delegate = self;
    self.pickerController.allowsEditing = YES;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.delegate pass:self.imageStr];
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 3;
    } else {
        return 1;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 45;
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
        SexTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        if (indexPath.row == 0) {
            cell.tatLabel.text = @"拍照";
            return cell;
        } else if (indexPath.row == 1) {
            cell.tatLabel.text = @"从相册选择";
            return cell;
        } else if (indexPath.row == 2) {
            cell.tatLabel.text = @"查看原图";
            return cell;
        }
    } else if (indexPath.section == 1) {
        SexTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        cell.tatLabel.text = @"取消";
        return cell;
        }
    return 0;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            
        } else if (indexPath.row == 1) {
            self.pickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
            self.pickerController.modalPresentationStyle = 0;
            [self presentViewController:self.pickerController animated:YES completion:nil];
        } else if (indexPath.row == 2) {
            BigPictureViewController *viewController = [[BigPictureViewController alloc] init];
            UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
            nav.modalPresentationStyle = 0;
            viewController.imageStr = self.imageStr;
            [self presentViewController:nav animated:YES completion:nil];
        }
    }
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info {
    [picker dismissViewControllerAnimated:YES completion:nil];
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.imageStr.image = image;
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
