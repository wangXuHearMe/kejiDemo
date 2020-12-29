//
//  TimeTableViewCell.h
//  keji
//
//  Created by 王旭 on 2020/12/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TimeTableViewCell : UITableViewCell
@property (nonatomic, strong) UIImageView *typeImageView;
@property (nonatomic, strong) UIImageView *startImageView;
@property (nonatomic, strong) UIImageView *stopImageView;
@property (nonatomic, strong) UILabel *typeLabel;
@property (nonatomic, strong) UILabel *startTimeLabel;
@property (nonatomic, strong) UILabel *stopTimeLabel;
@end

NS_ASSUME_NONNULL_END
