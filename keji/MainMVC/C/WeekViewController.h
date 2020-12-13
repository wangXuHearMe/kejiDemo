//
//  WeekViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WeekViewController : UIViewController
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UILabel *weekLabel;
@property (nonatomic, strong) UIButton *changeButton;
@end

NS_ASSUME_NONNULL_END
