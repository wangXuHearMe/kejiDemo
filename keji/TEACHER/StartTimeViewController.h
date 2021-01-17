//
//  StartTimeViewController.h
//  keji
//
//  Created by 王旭 on 2021/1/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol startTimeDelegate <NSObject>

- (void)passStartTime:(NSString *)startTimeString;

@end
@interface StartTimeViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>
@property (nonatomic, strong) NSString *timeString;
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UILabel *customLabel;
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
@property (nonatomic, strong) NSString *hourString;
@property (nonatomic, strong) NSString *minuteString;
@property (nonatomic, strong) NSArray *hourArray;
@property (nonatomic, strong) NSArray *minuteArray;
@property (nonatomic, strong) NSString *combineString;
@property (nonatomic, assign) id<startTimeDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
