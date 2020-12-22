//
//  SignTableViewCell.h
//  keji
//
//  Created by 王旭 on 2020/12/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SignTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *signLabel;
@property (nonatomic, strong) UILabel *typeLabel;
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UIImageView *typeImageView;
@property (nonatomic, strong) UIImageView *timeImageView;
@end

NS_ASSUME_NONNULL_END
