//
//  MainView.h
//  keji
//
//  Created by 王旭 on 2020/12/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MainView : UIView
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIButton *leftMoreButton;
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UIButton *addButton;
@property (nonatomic, strong) UIButton *downloadButton;
@property (nonatomic, strong) UIButton *shareButton;
@property (nonatomic, strong) UIButton *rightMoreButton;
@property (nonatomic, strong) UILabel *underTimeLabel;
@property (nonatomic, strong) NSString *nowDate;
@property (nonatomic, strong) NSString *weekDay;
@property (nonatomic, strong) NSString *week;
@property (nonatomic, strong) NSString *forWeek;
@end

NS_ASSUME_NONNULL_END
