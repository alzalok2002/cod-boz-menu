#import <UIKit/UIKit.h>

// تجميد النقاط عند 999,999
%hook PlayerEntity
- (int)getPoints {
    return 999999;
}
%end

// ذخيرة لا تنتهي
%hook WeaponEntity
- (int)ammoCount {
    return 999;
}
- (void)consumeAmmo:(int)amount {
    // ترك الدالة فارغة لكي لا ينقص الرصاص
}
%end
