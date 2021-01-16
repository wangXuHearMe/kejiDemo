//
//  TimeLimitViewController.h
//  keji
//
//  Created by 王旭 on 2021/1/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol timeLimitDelegate <NSObject>

- (void)pass:(NSString *)timeLimitString;

@end
@interface TimeLimitViewController : UIViewController
@property (nonatomic, strong) UIButton *twoMinuteButton;
@property (nonatomic, strong) UIButton *fiveMinuteButton;
@property (nonatomic, strong) UIButton *tenMinuteButton;
@property (nonatomic, strong) UIButton *thirtyMinuteButton;
@property (nonatomic, strong) UIButton *oneHourButton;
@property (nonatomic, strong) UIButton *threeHourButton;
@property (nonatomic, strong) UIButton *oneDayButton;
@property (nonatomic, strong) UIButton *twoDayButton;
@property (nonatomic, strong) UIButton *sevenDayButton;
@property (nonatomic, strong) UIPickerView *pickerView;
@property (nonatomic, assign) id<timeLimitDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
