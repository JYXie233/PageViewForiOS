# PageViewForiOS

类似android上的PageView
支持xib，sb
使用AutoLayout

监听页面切换
@protocol PageViewDelegate <NSObject>
-(void)onPageViewTabChange:(NSInteger)index;
@end
