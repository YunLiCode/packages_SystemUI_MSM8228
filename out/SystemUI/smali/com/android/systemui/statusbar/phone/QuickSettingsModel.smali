.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.super Ljava/lang/Object;
.source "QuickSettingsModel.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;
.implements Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$16;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ApnObserver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$MobileDataState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;
    }
.end annotation


# static fields
.field public static CM_NET:Ljava/lang/String;

.field public static CM_WAP:Ljava/lang/String;

.field public static CT_NET:Ljava/lang/String;

.field public static CT_OPERATOR_NUMERIC:Ljava/lang/String;

.field public static CT_WAP:Ljava/lang/String;

.field public static CU_NET:Ljava/lang/String;

.field public static CU_OPERATOR_NUMERIC:Ljava/lang/String;

.field public static CU_WAP:Ljava/lang/String;

.field public static NET:Ljava/lang/String;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field public static WAP:Ljava/lang/String;


# instance fields
.field apnChange:Ljava/lang/Runnable;

.field private mAirlineMode:Z

.field private mAirplaneModeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mApnObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ApnObserver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioProfileCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mAudioProfileListenr:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

.field private mAudioProfileState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mAudioProfileTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

.field private mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBluetoothCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

.field private mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBrightnessCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private final mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

.field private mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

.field private mBrightnessTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBugreportCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private final mBugreportObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

.field private mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mBugreportTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentApnKey:I

.field private mCurrentApnName:Ljava/lang/String;

.field private mCurrentScenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

.field private mDismissProfileSwitchDialogRunnable:Ljava/lang/Runnable;

.field private mGpsBasicTitle:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

.field private mGpsCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mGpsIcon:Landroid/widget/ImageView;

.field private mGpsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mGpsStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;

.field private mGpsTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mGpsTileView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mHasMobileData:Z

.field private mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mImeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mMettingProfileIcon:Landroid/widget/ImageView;

.field private mMettingText:Landroid/widget/TextView;

.field private mMobileDataCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mMobileDataState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$MobileDataState;

.field private mMobileDataTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

.field private mMuteProfileIcon:Landroid/widget/ImageView;

.field private mMuteText:Landroid/widget/TextView;

.field private mNetIcon:Landroid/widget/ImageView;

.field private mNetIndicator:Landroid/widget/ImageView;

.field private mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

.field private mNetText:Landroid/widget/TextView;

.field private mNetTileView:Landroid/view/View;

.field private final mNextAlarmObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

.field private mNormalProfileIcon:Landroid/widget/ImageView;

.field private mNormalText:Landroid/widget/TextView;

.field private mOutdoorSwitchIcon:Landroid/widget/ImageView;

.field private mOutdoorText:Landroid/widget/TextView;

.field private mProfileKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

.field private mProfileSwitchDialog:Landroid/app/Dialog;

.field private mProfileSwitchListener:Landroid/view/View$OnClickListener;

.field private mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

.field private mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mRotationLockCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mSettingsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mTimeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mTimeoutChangeObserver:Landroid/database/ContentObserver;

.field private mTimeoutIcon:Landroid/widget/ImageView;

.field private mTimeoutIndicator:Landroid/widget/ImageView;

.field private mTimeoutStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;

.field private mTimeoutText:Landroid/widget/TextView;

.field private mTimeoutTileView:Landroid/view/View;

.field private mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

.field private mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mWifiDisplayCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mWifiDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

.field private mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1478
    const-string v0, "net"

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->NET:Ljava/lang/String;

    .line 1479
    const-string v0, "wap"

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->WAP:Ljava/lang/String;

    .line 1480
    const-string v0, "ctnet"

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CT_NET:Ljava/lang/String;

    .line 1481
    const-string v0, "ctwap"

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CT_WAP:Ljava/lang/String;

    .line 1482
    const-string v0, "cmnet"

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CM_NET:Ljava/lang/String;

    .line 1483
    const-string v0, "cmwap"

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CM_WAP:Ljava/lang/String;

    .line 1484
    const-string v0, "3gnet"

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CU_NET:Ljava/lang/String;

    .line 1485
    const-string v0, "3gwap"

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CU_WAP:Ljava/lang/String;

    .line 1486
    const-string v0, "46003"

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CT_OPERATOR_NUMERIC:Ljava/lang/String;

    .line 1487
    const-string v0, "46001"

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CU_OPERATOR_NUMERIC:Ljava/lang/String;

    .line 1495
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 375
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 266
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    .line 270
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 274
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 278
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 282
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    .line 286
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 290
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    .line 294
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    .line 298
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    .line 302
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 305
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 306
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 310
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 314
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    .line 318
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 322
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 327
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$MobileDataState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$MobileDataState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$MobileDataState;

    .line 332
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 357
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 912
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

    .line 921
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1089
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$8;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchListener:Landroid/view/View$OnClickListener;

    .line 1108
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$9;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileListenr:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    .line 1237
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$10;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mDismissProfileSwitchDialogRunnable:Ljava/lang/Runnable;

    .line 1352
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$13;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$13;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutChangeObserver:Landroid/database/ContentObserver;

    .line 1476
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnKey:I

    .line 1477
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    .line 1557
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$15;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$15;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->apnChange:Ljava/lang/Runnable;

    .line 376
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    .line 377
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    .line 378
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 388
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNextAlarmObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

    .line 389
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNextAlarmObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;->startObserving()V

    .line 390
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

    .line 391
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;->startObserving()V

    .line 392
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    .line 393
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;->startObserving()V

    .line 395
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 397
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHasMobileData:Z

    .line 399
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 400
    .local v0, "alarmIntentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 405
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioManager:Landroid/media/AudioManager;

    .line 406
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const-string v4, "audioprofile"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    .line 407
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileKeys:Ljava/util/List;

    .line 408
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getPredefinedProfileKeys()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileKeys:Ljava/util/List;

    .line 409
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileListenr:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    invoke-virtual {v3, v4, v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/yeptelecom/common/audioprofile/AudioProfileListener;I)V

    .line 411
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;

    .line 412
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;

    .line 413
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ApnObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ApnObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mApnObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ApnObserver;

    .line 416
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mApnObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ApnObserver;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ApnObserver;->startObserving()V

    .line 418
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->isAirplaneModeOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirlineMode:Z

    .line 421
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 422
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 426
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 430
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 434
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirlineMode:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirlineMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetTileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->showProfileSwitchDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateAudioProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .param p1, "x1"    # Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateProfileView(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->removeAllProfileSwitchDialogCallbacks()V

    return-void
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->PREFERAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsTileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutTileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->toggleTimeout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->toggleNetSwitch(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->setAirplaneModeState(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;

    return-object v0
.end method

.method private createProfileSwitchDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 1191
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    .line 1192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v1, 0x7f040010

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMettingProfileIcon:Landroid/widget/ImageView;

    .line 1201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mOutdoorSwitchIcon:Landroid/widget/ImageView;

    .line 1202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMuteProfileIcon:Landroid/widget/ImageView;

    .line 1203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNormalProfileIcon:Landroid/widget/ImageView;

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNormalText:Landroid/widget/TextView;

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMuteText:Landroid/widget/TextView;

    .line 1206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMettingText:Landroid/widget/TextView;

    .line 1207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v1, 0x7f070061

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mOutdoorText:Landroid/widget/TextView;

    .line 1208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNormalText:Landroid/widget/TextView;

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMuteText:Landroid/widget/TextView;

    const v1, 0x7f0a00c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMettingText:Landroid/widget/TextView;

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mOutdoorText:Landroid/widget/TextView;

    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1213
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1214
    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileKey(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1216
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileKey(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1219
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1220
    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileKey(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1222
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1223
    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileKey(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentScenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentScenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->loadEnabledProfileResource(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)V

    .line 1228
    :cond_0
    return-void
.end method

.method private dismissProfileSwitchDialog(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 1231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->removeAllProfileSwitchDialogCallbacks()V

    .line 1232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mDismissProfileSwitchDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1235
    :cond_0
    return-void
.end method

.method private getApnIdByName(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1783
    const/4 v6, -0x1

    .line 1785
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1786
    if-eqz v0, :cond_5

    .line 1787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric =\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and apn like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' and type like \'%default%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1790
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1792
    :try_start_1
    const-string v0, "QuickSettingsModel"

    const-string v2, "getApnIdByName cursor query"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1794
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1796
    :cond_0
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 1797
    if-lez v6, :cond_2

    move v0, v6

    .line 1805
    :goto_0
    if-eqz v1, :cond_1

    .line 1806
    const-string v2, "QuickSettingsModel"

    const-string v3, "getApnIdByName cursor close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1811
    :cond_1
    :goto_1
    return v0

    .line 1799
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    move v0, v6

    goto :goto_0

    .line 1802
    :catch_0
    move-exception v0

    move-object v1, v7

    move v0, v6

    .line 1803
    :goto_2
    :try_start_3
    const-string v2, "QuickSettingsModel"

    const-string v3, "getApnIdByName cursor exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1805
    if-eqz v1, :cond_1

    .line 1806
    const-string v2, "QuickSettingsModel"

    const-string v3, "getApnIdByName cursor close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1805
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_4

    .line 1806
    const-string v2, "QuickSettingsModel"

    const-string v3, "getApnIdByName cursor close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1805
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1802
    :catch_1
    move-exception v0

    move v0, v6

    goto :goto_2

    :cond_5
    move v0, v6

    goto :goto_1
.end method

.method private getCurrentApnKey()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1685
    .line 1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1689
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1692
    :try_start_1
    const-string v0, "QuickSettingsModel"

    const-string v2, "getCurrentApnKey cusor query"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1694
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1695
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    move v0, v6

    .line 1701
    :goto_0
    if-eqz v1, :cond_0

    .line 1702
    const-string v2, "QuickSettingsModel"

    const-string v3, "getCurrentApnKey cusor close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1707
    :cond_0
    :goto_1
    return v0

    .line 1698
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 1699
    :goto_2
    :try_start_2
    const-string v1, "QuickSettingsModel"

    const-string v2, "getCurrentApnKey cursor exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1701
    if-eqz v0, :cond_2

    .line 1702
    const-string v1, "QuickSettingsModel"

    const-string v2, "getCurrentApnKey cusor close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_1

    .line 1701
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_1

    .line 1702
    const-string v1, "QuickSettingsModel"

    const-string v2, "getCurrentApnKey cusor close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1701
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_3

    .line 1698
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method private static getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 841
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v0, v1

    .line 855
    :goto_0
    return-object v0

    .line 842
    :cond_1
    const-string v0, "default_input_method"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 844
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 845
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 846
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 847
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 848
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p0, v2, v0}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 852
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 848
    :cond_4
    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 855
    goto :goto_0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1712
    const/4 v1, 0x0

    .line 1714
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1715
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v1

    .line 1716
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1720
    :goto_0
    const-string v2, "QuickSettingsModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    if-nez v1, :cond_1

    .line 1722
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1724
    :cond_0
    const-string v1, "ro.config.defapn"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1725
    const-string v2, "QuickSettingsModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defapn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    if-eq v1, v5, :cond_1

    .line 1727
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1731
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "00000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1733
    :cond_2
    sget v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->STATUSBAR_STYLE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1734
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CT_OPERATOR_NUMERIC:Ljava/lang/String;

    .line 1739
    :cond_3
    :goto_1
    return-object v0

    .line 1718
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1736
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CU_OPERATOR_NUMERIC:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getTimeout(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/16 v0, 0x3a98

    const/16 v1, 0x7530

    .line 1427
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const/16 v4, 0x7530

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1429
    if-gt v2, v0, :cond_0

    .line 1440
    :goto_0
    return v0

    .line 1431
    :cond_0
    if-gt v2, v1, :cond_1

    move v0, v1

    .line 1432
    goto :goto_0

    .line 1434
    :cond_1
    const v0, 0xea60

    goto :goto_0

    .line 1437
    :catch_0
    move-exception v0

    .line 1438
    const-string v2, "QuickSettingsModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1440
    goto :goto_0
.end method

.method private loadDisabledProfileResouceForAll()V
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNormalProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMettingProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mOutdoorSwitchIcon:Landroid/widget/ImageView;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMuteProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1133
    return-void
.end method

.method private loadEnabledProfileResource(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)V
    .locals 4

    .prologue
    const v3, 0x7f02005b

    .line 1137
    const-string v0, "QuickSettingsModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadEnabledProfileResource called, profile is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentScenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    .line 1140
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$16;->$SwitchMap$com$yeptelecom$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1160
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput v3, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 1163
    :goto_1
    return-void

    .line 1142
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNormalProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v1, 0x7f020060

    iput v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    goto :goto_1

    .line 1146
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMettingProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v1, 0x7f020069

    iput v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    goto :goto_1

    .line 1150
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mOutdoorSwitchIcon:Landroid/widget/ImageView;

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v1, 0x7f02007c

    iput v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    goto :goto_1

    .line 1154
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMuteProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v1, 0x7f0200a5

    iput v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    goto :goto_1

    .line 1158
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput v3, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    goto :goto_0

    .line 1140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private needsToShowImeSwitchOngoingNotification(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 14

    .prologue
    .line 785
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v7

    .line 786
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 787
    const/4 v0, 0x2

    if-le v8, v0, :cond_0

    const/4 v0, 0x1

    .line 825
    :goto_0
    return v0

    .line 788
    :cond_0
    const/4 v0, 0x1

    if-ge v8, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 789
    :cond_1
    const/4 v4, 0x0

    .line 790
    const/4 v3, 0x0

    .line 791
    const/4 v2, 0x0

    .line 792
    const/4 v1, 0x0

    .line 793
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v8, :cond_5

    .line 794
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 795
    const/4 v6, 0x1

    invoke-virtual {p1, v0, v6}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v9

    .line 797
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 798
    if-nez v10, :cond_3

    .line 799
    add-int/lit8 v4, v4, 0x1

    .line 793
    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 801
    :cond_3
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-ge v6, v10, :cond_2

    .line 802
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 803
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-nez v11, :cond_4

    .line 804
    add-int/lit8 v2, v4, 0x1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    move v13, v3

    move v3, v2

    move v2, v13

    .line 801
    :goto_3
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .line 807
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v4

    move v12, v1

    move-object v1, v2

    move v2, v12

    .line 808
    goto :goto_3

    .line 813
    :cond_5
    const/4 v0, 0x1

    if-gt v4, v0, :cond_6

    const/4 v0, 0x1

    if-le v3, v0, :cond_7

    .line 814
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 815
    :cond_7
    const/4 v0, 0x1

    if-ne v4, v0, :cond_a

    const/4 v0, 0x1

    if-ne v3, v0, :cond_a

    .line 816
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const-string v0, "TrySuppressingImeSwitcher"

    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 821
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 823
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 825
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private removeAllProfileSwitchDialogCallbacks()V
    .locals 2

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mDismissProfileSwitchDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1248
    return-void
.end method

.method private setAirplaneModeState(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 526
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 530
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 532
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 533
    return-void

    .line 526
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showProfileSwitchDialog()V
    .locals 1

    .prologue
    .line 1178
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->createProfileSwitchDialog()V

    .line 1179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1185
    const/16 v0, 0xfa0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->dismissProfileSwitchDialog(I)V

    .line 1187
    :cond_0
    return-void

    .line 1182
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private toggleNetSwitch(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 1667
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->loadCurrentApnName()Ljava/lang/String;

    .line 1668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->NET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CT_NET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1670
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->WAP:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->getApnIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->setCurrentApnToDb(I)V

    .line 1682
    :cond_1
    :goto_0
    return-void

    .line 1672
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->WAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CT_WAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1673
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->NET:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->getApnIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->setCurrentApnToDb(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    const-string v1, "QuickSettingsModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleNetSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1675
    :cond_4
    :try_start_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->WAP:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->getApnIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->setCurrentApnToDb(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private toggleTimeout(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/16 v1, 0x3a98

    const/16 v0, 0x7530

    .line 1450
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1451
    const-string v3, "screen_off_timeout"

    const/16 v4, 0x7530

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1453
    const-string v4, "QuickSettingsModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleTimeout, before is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    if-gt v3, v1, :cond_0

    .line 1462
    :goto_0
    const-string v1, "screen_off_timeout"

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1464
    const-string v1, "QuickSettingsModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleTimeout, after is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1469
    :goto_1
    return-void

    .line 1457
    :cond_0
    if-gt v3, v0, :cond_1

    .line 1458
    const v0, 0xea60

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1460
    goto :goto_0

    .line 1466
    :catch_0
    move-exception v0

    .line 1467
    const-string v1, "QuickSettingsModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleTimeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateAudioProfile(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1165
    if-nez p1, :cond_0

    .line 1175
    :goto_0
    return-void

    .line 1169
    :cond_0
    const-string v0, "QuickSettingsModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAudioProfile called, selected profile is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileManager:Lcom/yeptelecom/audioprofile/AudioProfileManager;

    invoke-virtual {v0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 1173
    const-string v0, "QuickSettingsModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAudioProfile called, setActiveProfile is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateProfileView(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)V
    .locals 0
    .param p1, "scenario"    # Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    .prologue
    .line 1123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->loadDisabledProfileResouceForAll()V

    .line 1124
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->loadEnabledProfileResource(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)V

    .line 1125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onAudioProfileChanged()V

    .line 1126
    return-void
.end method


# virtual methods
.method public ApnTitleChanged()V
    .locals 4

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->apnChange:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1579
    return-void
.end method

.method addAirplaneModeTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 4
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    const/4 v1, 0x0

    .line 506
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 507
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 518
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 520
    .local v0, "airplaneMode":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onAirplaneModeChanged(Z)V

    .line 521
    return-void
.end method

.method addAlarmTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 484
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 486
    return-void
.end method

.method addApn(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetTileView:Landroid/view/View;

    .line 1502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetTileView:Landroid/view/View;

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetText:Landroid/widget/TextView;

    .line 1503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetTileView:Landroid/view/View;

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetIcon:Landroid/widget/ImageView;

    .line 1504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetTileView:Landroid/view/View;

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetIndicator:Landroid/widget/ImageView;

    .line 1505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetTileView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$14;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1511
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->loadCurrentApnName()Ljava/lang/String;

    .line 1512
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirlineMode:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->setAirlineMode(Z)V

    .line 1514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->hasSimCard()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->setHasSim(Z)V

    .line 1515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1516
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->setImageViewResources(Landroid/content/Context;)V

    .line 1517
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshApnTile()V

    .line 1518
    return-void
.end method

.method addAudioProfileTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 1055
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$7;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onAudioProfileChanged()V

    .line 1063
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->createProfileSwitchDialog()V

    .line 1064
    return-void
.end method

.method addBatteryTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 691
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 693
    return-void
.end method

.method addBluetoothTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 4
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 644
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 646
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 647
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 648
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    .line 650
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V

    .line 651
    return-void

    .line 648
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method addBrightnessTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 888
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 889
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBrightnessLevelChanged()V

    .line 890
    return-void
.end method

.method addBugreportTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 740
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBugreportChanged()V

    .line 742
    return-void
.end method

.method addGpsTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 1256
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 1257
    check-cast p1, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    .end local p1    # "view":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsBasicTitle:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    .line 1258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsBasicTitle:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsIcon:Landroid/widget/ImageView;

    .line 1259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsBasicTitle:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsTileView:Landroid/view/View;

    .line 1260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$11;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onGpsChanged()V

    .line 1267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;->setImageViewResources(Landroid/content/Context;)V

    .line 1268
    return-void
.end method

.method addMobileDataTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 966
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 967
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$6;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 987
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 988
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshMobileDataChange()V

    .line 989
    return-void
.end method

.method addRSSITile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 607
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 609
    return-void
.end method

.method addRotationLockTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 861
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 862
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onRotationLockChanged()V

    .line 863
    return-void
.end method

.method addTimeOut(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutTileView:Landroid/view/View;

    .line 1334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutTileView:Landroid/view/View;

    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutText:Landroid/widget/TextView;

    .line 1335
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutText:Landroid/widget/TextView;

    const v1, 0x7f0a00cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutTileView:Landroid/view/View;

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutIcon:Landroid/widget/ImageView;

    .line 1337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutTileView:Landroid/view/View;

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutIndicator:Landroid/widget/ImageView;

    .line 1338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutTileView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$12;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;->setImageViewResources(Landroid/content/Context;)V

    .line 1344
    return-void
.end method

.method addUserTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 465
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 467
    return-void
.end method

.method addWifiDisplayTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 759
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 760
    return-void
.end method

.method addWifiTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 550
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 552
    return-void
.end method

.method deviceHasMobileData()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHasMobileData:Z

    return v0
.end method

.method deviceSupportsBluetooth()Z
    .locals 1

    .prologue
    .line 653
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSimCard()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1009
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 1023
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1014
    goto :goto_0

    .line 1017
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1019
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 1020
    if-ne v0, v2, :cond_3

    move v0, v1

    .line 1021
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1023
    goto :goto_0
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1002
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public loadCurrentApnName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1746
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->getCurrentApnKey()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnKey:I

    .line 1747
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1749
    if-eqz v0, :cond_2

    .line 1750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1753
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1755
    :try_start_1
    const-string v1, "QuickSettingsModel"

    const-string v2, "loadCurrentApnName cursor query"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1757
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1759
    :cond_0
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1760
    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnKey:I

    if-ne v1, v2, :cond_3

    .line 1761
    const-string v1, "apn"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1762
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1771
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1772
    const-string v1, "QuickSettingsModel"

    const-string v2, "loadCurrentApnName cursor close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1778
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    return-object v0

    .line 1765
    :cond_3
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1768
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 1769
    :goto_2
    :try_start_3
    const-string v1, "QuickSettingsModel"

    const-string v2, "loadCurrentApnName cursor exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1771
    if-eqz v0, :cond_2

    .line 1772
    const-string v1, "QuickSettingsModel"

    const-string v2, "loadCurrentApnName cursor close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1771
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_4

    .line 1772
    const-string v1, "QuickSettingsModel"

    const-string v2, "loadCurrentApnName cursor close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1771
    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_3

    .line 1768
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 538
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 539
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean p1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 540
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz p1, :cond_0

    const v1, 0x7f020036

    :goto_0
    iput v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 543
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x7f0a00a0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 544
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 545
    return-void

    .line 540
    :cond_0
    const v1, 0x7f020035

    goto :goto_0
.end method

.method onAlarmChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 490
    return-void
.end method

.method onAudioProfileChanged()V
    .locals 3

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 1087
    return-void
.end method

.method public onBatteryLevelChanged(IZI)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "status"    # I

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    .line 699
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->pluggedIn:Z

    .line 700
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    iput p3, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->status:I

    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 702
    return-void
.end method

.method public onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V
    .locals 4
    .param p1, "bluetoothStateIn"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    .prologue
    .line 663
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 664
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 665
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    .line 666
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-eqz v1, :cond_1

    .line 667
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f020055

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 669
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a0067

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->stateContentDescription:Ljava/lang/String;

    .line 674
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a00a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 680
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 681
    return-void

    .line 671
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f020053

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 672
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a0065

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->stateContentDescription:Ljava/lang/String;

    goto :goto_0

    .line 676
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f020054

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 677
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a00a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 678
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a0066

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->stateContentDescription:Ljava/lang/String;

    goto :goto_1
.end method

.method public onBluetoothStateChange(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V

    .line 660
    return-void
.end method

.method public onBrightnessLevelChanged()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 893
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 894
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v5}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v5

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 898
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    if-ne v3, v0, :cond_0

    :goto_0
    iput-boolean v0, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;->autoBrightness:Z

    .line 900
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;->autoBrightness:Z

    if-eqz v0, :cond_1

    const v0, 0x7f020057

    :goto_1
    iput v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 903
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    const v1, 0x7f0a00a6

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 905
    return-void

    :cond_0
    move v0, v1

    .line 898
    goto :goto_0

    .line 900
    :cond_1
    const v0, 0x7f020056

    goto :goto_1
.end method

.method public onBugreportChanged()V
    .locals 5

    .prologue
    .line 745
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 746
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 748
    .local v1, "enabled":Z
    :try_start_0
    const-string v2, "bugreport_in_power_menu"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 752
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 753
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 754
    return-void

    .line 748
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 749
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method onGpsChanged()V
    .locals 3

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 1273
    return-void
.end method

.method onImeWindowStatusChanged(Z)V
    .locals 6

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 830
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 832
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->needsToShowImeSwitchOngoingNotification(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 833
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v3, v4, v0, v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 838
    :cond_0
    return-void

    .line 832
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLocationGpsStateChanged(ZLjava/lang/String;)V
    .locals 0
    .param p1, "inUse"    # Z
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 735
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "mobileSignalIconId"    # I
    .param p3, "signalContentDescription"    # Ljava/lang/String;
    .param p4, "dataTypeIconId"    # I
    .param p5, "dataContentDescription"    # Ljava/lang/String;
    .param p6, "enabledDesc"    # Ljava/lang/String;

    .prologue
    .line 639
    return-void
.end method

.method onNextAlarmChanged()V
    .locals 4

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "alarmText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 499
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 501
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 502
    return-void

    .line 499
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onRotationLockChanged()V
    .locals 3

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    .line 866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 867
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz v1, :cond_1

    const v0, 0x7f020080

    :goto_0
    iput v0, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 870
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 875
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 878
    :cond_0
    return-void

    .line 867
    :cond_1
    const v0, 0x7f02003c

    goto :goto_0

    .line 870
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onWifiDisplayStateChanged(Landroid/hardware/display/WifiDisplayStatus;)V
    .locals 3

    .prologue
    .line 762
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 764
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v1, 0x7f02007f

    iput v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 772
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 774
    return-void

    .line 762
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v1, 0x7f02007e

    iput v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    goto :goto_1
.end method

.method public onWifiSignalChanged(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "enabled"    # Z
    .param p2, "wifiSignalIconId"    # I
    .param p3, "wifiSignalContentDescription"    # Ljava/lang/String;
    .param p4, "enabledDesc"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f0a00b3

    const v5, 0x7f0200aa

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 576
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 578
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p4, :cond_0

    move v1, v2

    .line 579
    .local v1, "wifiConnected":Z
    :goto_0
    if-lez p2, :cond_1

    if-nez p4, :cond_1

    .line 580
    .local v2, "wifiNotConnected":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput-boolean p1, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 581
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->connected:Z

    .line 582
    if-eqz v1, :cond_2

    .line 584
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput v5, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 585
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 587
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput-object p3, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    .line 597
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 598
    return-void

    .end local v1    # "wifiConnected":Z
    .end local v2    # "wifiNotConnected":Z
    :cond_0
    move v1, v3

    .line 578
    goto :goto_0

    .restart local v1    # "wifiConnected":Z
    :cond_1
    move v2, v3

    .line 579
    goto :goto_1

    .line 588
    .restart local v2    # "wifiNotConnected":Z
    :cond_2
    if-eqz v2, :cond_3

    .line 589
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput v5, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 590
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 591
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a0054

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    goto :goto_2

    .line 593
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0200b5

    iput v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 594
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a00b6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 595
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a0053

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    goto :goto_2
.end method

.method refreshAirplaneModeTile()V
    .locals 4

    .prologue
    .line 960
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 961
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x7f0a00a0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 962
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 963
    return-void
.end method

.method refreshApnTile()V
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1522
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateApnNameResources()V

    .line 1524
    :cond_0
    return-void
.end method

.method refreshAudioProfileTile()V
    .locals 3

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1068
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAudioProfileState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x7f0a00d4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNormalText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNormalText:Landroid/widget/TextView;

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMuteText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1073
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMuteText:Landroid/widget/TextView;

    const v1, 0x7f0a00c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMettingText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMettingText:Landroid/widget/TextView;

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1078
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mOutdoorText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mOutdoorText:Landroid/widget/TextView;

    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1081
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onAudioProfileChanged()V

    .line 1082
    return-void
.end method

.method refreshBatteryTile()V
    .locals 3

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 706
    return-void
.end method

.method refreshBluetoothTile()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Z)V

    .line 686
    :cond_0
    return-void
.end method

.method refreshBrightnessTile()V
    .locals 0

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBrightnessLevelChanged()V

    .line 908
    return-void
.end method

.method refreshMobileDataChange()V
    .locals 5

    .prologue
    const v4, 0x7f02006e

    const/4 v3, 0x0

    .line 1029
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1030
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirlineMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->hasSimCard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$MobileDataState;

    iput v4, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 1032
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    .line 1046
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$MobileDataState;

    const v2, 0x7f0a00c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 1047
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$MobileDataState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 1048
    return-void

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1036
    if-eqz v0, :cond_3

    .line 1037
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$MobileDataState;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f02006f

    :goto_1
    iput v0, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    goto :goto_0

    .line 1037
    :cond_2
    const v0, 0x7f020071

    goto :goto_1

    .line 1041
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$MobileDataState;

    iput v4, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    goto :goto_0
.end method

.method refreshMobileDataTile()V
    .locals 3

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$MobileDataState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$MobileDataState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 998
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMobileDataState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$MobileDataState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    goto :goto_0
.end method

.method refreshRotationLockTile()V
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onRotationLockChanged()V

    .line 883
    :cond_0
    return-void
.end method

.method refreshRssiTile()V
    .locals 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 719
    :cond_0
    return-void
.end method

.method refreshTimeOutTile()V
    .locals 2

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutText:Landroid/widget/TextView;

    const v1, 0x7f0a00cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1350
    :cond_0
    return-void
.end method

.method public setCurrentApnToDb(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1816
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnKey:I

    .line 1817
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1818
    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1820
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1821
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1822
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1823
    sget-object v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1825
    :cond_0
    return-void
.end method

.method setUserTileInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "avatar"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    iput-object p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    iput-object p2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;->avatar:Landroid/graphics/drawable/Drawable;

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 472
    return-void
.end method

.method public updateApnNameResources()V
    .locals 4

    .prologue
    const v3, 0x7f0a00d1

    const v2, 0x7f0a00ce

    .line 1528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1529
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CT_NET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetText:Landroid/widget/TextView;

    const v1, 0x7f0a00cd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1555
    :goto_0
    return-void

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CT_WAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1532
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1533
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CM_NET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1534
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetText:Landroid/widget/TextView;

    const v1, 0x7f0a00cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1535
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CM_WAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1536
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetText:Landroid/widget/TextView;

    const v1, 0x7f0a00d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1537
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CU_NET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1539
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CU_WAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetText:Landroid/widget/TextView;

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1542
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1547
    :cond_6
    sget v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->STATUSBAR_STYLE:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 1548
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CU_NET:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    .line 1549
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1551
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->CT_WAP:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;

    .line 1552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method updateResources()V
    .locals 0

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshBatteryTile()V

    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshBluetoothTile()V

    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshBrightnessTile()V

    .line 441
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshRotationLockTile()V

    .line 442
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshAudioProfileTile()V

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshTimeOutTile()V

    .line 444
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshMobileDataTile()V

    .line 445
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshAirplaneModeTile()V

    .line 447
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshRssiTile()V

    .line 448
    return-void
.end method
