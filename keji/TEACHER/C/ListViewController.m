//
//  ListViewController.m
//  keji
//
//  Created by 王旭 on 2021/1/11.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height * 0.7, self.view.frame.size.width, self.view.frame.size.height * 0.3)];
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.separatorStyle = 0;
    self.signArray = [[NSArray alloc] initWithObjects:@"1班",@"2班",@"3班",@"4班",@"5班",@"6班", nil];
    [self.view addSubview:self.tableView];
    self.pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, self.tableView.frame.size.height - 50)];
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    [self.pickerView selectRow:0 inComponent:0 animated:YES];
    [self.tableView addSubview:self.pickerView];
    [self setButton];
}
- (void)setButton {
    self.cancelButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.sureButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    self.cancelButton.frame = CGRectMake((self.view.frame.size.width - 200)/3, 190, 100, 40);
    self.cancelButton.backgroundColor = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:246/255.0 alpha:1];
    [self.cancelButton setTitle:@"取消" forState:UIControlStateNormal];
    self.cancelButton.titleLabel.tintColor = [UIColor colorWithRed:80/255.0 green:173/255.0 blue:87/255.0 alpha:1];
    self.cancelButton.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.tableView addSubview:self.cancelButton];
 
    self.sureButton.frame = CGRectMake((self.view.frame.size.width - 200)/3 * 2 + 100, 190, 100, 40);
    self.sureButton.backgroundColor = [UIColor colorWithRed:80/255.0 green:173/255.0 blue:87/255.0 alpha:1];
    [self.sureButton setTitle:@"确定" forState:UIControlStateNormal];
    self.sureButton.titleLabel.tintColor = [UIColor whiteColor];
    self.sureButton.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.tableView addSubview:self.sureButton];
    
    [self.cancelButton addTarget:self action:@selector(pressCancel) forControlEvents:UIControlEventTouchUpInside];
    [self.sureButton addTarget:self action:@selector(pressSure) forControlEvents:UIControlEventTouchUpInside];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)pressCancel {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)pressSure {
    [self.delegate pass:YES andMingdan:self.signArray[_answerRow]];
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 6;
}
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [_signArray objectAtIndex:row];
}
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    return 35;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.answerRow = row;
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
