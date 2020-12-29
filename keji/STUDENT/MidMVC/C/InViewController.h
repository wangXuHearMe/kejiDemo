//
//  InViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InViewController : UIViewController
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSString *startStr;
@property (nonatomic, strong) NSString *stopStr;
@property (nonatomic, strong) NSTimer *activeTimer;
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UILabel *textLabel;
@property (nonatomic, strong) UIButton *signButton;
@property NSInteger secondsCountDown;

@end

NS_ASSUME_NONNULL_END
