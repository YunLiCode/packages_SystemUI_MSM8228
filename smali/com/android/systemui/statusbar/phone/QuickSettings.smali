.class Lcom/android/systemui/statusbar/phone/QuickSettings;
.super Ljava/lang/Object;
.source "QuickSettings.java"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

.field private mChargingBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDynamicSpannedTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

.field private final mProfileReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mTilesSetUp:Z

.field mUseDefaultAvatar:Z

.field private mUserInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mTilesSetUp:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUseDefaultAvatar:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 1133
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$42;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$42;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1162
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$43;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$43;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    .line 129
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .line 130
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 131
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    .line 132
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 133
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mHandler:Landroid/os/Handler;

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 138
    .local v7, "r":Landroid/content/res/Resources;
    const v0, 0x7f02011a

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    .line 139
    const v0, 0x7f02011b

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mChargingBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    .line 142
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v3, "profileFilter":Landroid/content/IntentFilter;
    const-string v0, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->showBugreportDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->applyWifiDisplayStatus()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->applyBluetoothStatus()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->collapsePanels()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->showBrightnessDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/QuickSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/graphics/drawable/LevelListDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mChargingBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/graphics/drawable/LevelListDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private addConfigurationTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1002
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 1004
    .local v0, "audioProfileTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v3, 0x7f020060

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 1005
    const v3, 0x7f0a00d4

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setTextResource(I)V

    .line 1006
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$37;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$37;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1012
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addAudioProfileTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 1014
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1018
    const v3, 0x7f040011

    const/4 v4, 0x0

    invoke-virtual {p2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 1020
    .local v2, "timeoutTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v3, 0x7f04001b

    invoke-virtual {v2, v3, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 1021
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$38;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$38;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1027
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addTimeOut(Landroid/view/View;)V

    .line 1028
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1031
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1033
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 1035
    .local v1, "rotationLockTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$39;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$39;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1042
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$40;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$40;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1048
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    invoke-direct {v4, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRotationLockTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 1050
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private addConnectionTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const v9, 0x7f040011

    const/4 v8, 0x0

    .line 821
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 822
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 824
    .local v3, "mobileDataTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    invoke-direct {v7, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v6, v3, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addMobileDataTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 826
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 832
    .end local v3    # "mobileDataTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    :cond_0
    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 834
    .local v5, "wifiTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$27;

    invoke-direct {v6, p0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettings$27;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$28;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$28;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 867
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$29;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettings$29;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v6, v5, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addWifiTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 879
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 883
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->deviceSupportsBluetooth()Z

    move-result v6

    if-nez v6, :cond_3

    .line 922
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 924
    .local v2, "gpsTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v6, 0x7f0a00c4

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setTextResource(I)V

    .line 925
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$33;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$33;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 932
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    invoke-direct {v7, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v6, v2, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addGpsTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 934
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 937
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 938
    invoke-virtual {p2, v9, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 940
    .local v0, "apnTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v6, 0x7f040013

    invoke-virtual {v0, v6, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 941
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$34;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$34;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 948
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addApn(Landroid/view/View;)V

    .line 949
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 952
    .end local v0    # "apnTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->deviceHasMobileData()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 954
    invoke-virtual {p2, v9, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 956
    .local v4, "rssiTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v6, 0x7f040019

    invoke-virtual {v4, v6, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 957
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$35;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$35;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 968
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$36;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$36;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v6, v4, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRSSITile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 996
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 998
    .end local v4    # "rssiTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_2
    return-void

    .line 885
    .end local v2    # "gpsTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 887
    .local v1, "bluetoothTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$30;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings$30;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$31;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$31;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 907
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$32;

    invoke-direct {v7, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings$32;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v6, v1, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBluetoothTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 918
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private addSystemStatusTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 756
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 758
    .local v0, "airplaneTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettings$23;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$23;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 764
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$24;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$24;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addAirplaneModeTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 776
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 779
    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 780
    .local v1, "batteryTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettings$25;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$25;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$26;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings$26;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBatteryTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 814
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 815
    return-void
.end method

.method private addTemporaryTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 632
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 634
    .local v0, "alarmTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v3, 0x7f020037

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 635
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$17;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$17;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$18;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$18;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addAlarmTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 657
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 680
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 682
    .local v2, "wifiDisplayTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v3, 0x7f02007e

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 683
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$19;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$19;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    invoke-direct {v4, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;->setShowWhenEnabled(Z)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addWifiDisplayTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 692
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 717
    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 719
    .local v1, "bugreportTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v3, 0x108053f

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 720
    const v3, 0x10400f7

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setTextResource(I)V

    .line 721
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$21;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$21;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$22;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$22;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBugreportTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 734
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 751
    return-void
.end method

.method private addUserTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 301
    const v2, 0x7f040011

    const/4 v3, 0x0

    invoke-virtual {p2, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 303
    .local v1, "userTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v2, 0x7f04001c

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 304
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettings$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addUserTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 335
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 340
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, "brightnessTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v2, 0x7f020056

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 343
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettings$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$5;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettings$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$6;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 358
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBrightnessTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 360
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 402
    return-void
.end method

.method private applyBluetoothStatus()V
    .locals 2

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V

    .line 1121
    return-void
.end method

.method private applyWifiDisplayStatus()V
    .locals 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onWifiDisplayStateChanged(Landroid/hardware/display/WifiDisplayStatus;)V

    .line 1117
    return-void
.end method

.method private collapsePanels()V
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 286
    return-void
.end method

.method private queryForUserInformation()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "currentUserContext":Landroid/content/Context;
    const/4 v4, 0x0

    .line 193
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 194
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    const-string v7, "android"

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 202
    :goto_0
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    .line 203
    .local v3, "userId":I
    iget-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 205
    .local v5, "userName":Ljava/lang/String;
    move-object v0, v1

    .line 206
    .local v0, "context":Landroid/content/Context;
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$2;

    invoke-direct {v6, p0, v5, v3, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 255
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    new-array v7, v11, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 256
    return-void

    .line 196
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "userId":I
    .end local v5    # "userName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "QuickSettings"

    const-string v7, "Couldn\'t create user context"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 199
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 200
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "QuickSettings"

    const-string v7, "Couldn\'t get user info"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setupQuickSettings()V
    .locals 2

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 262
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addUserTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 265
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addConnectionTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 266
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemStatusTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addConfigurationTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addTemporaryTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V

    .line 272
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mTilesSetUp:Z

    .line 273
    return-void
.end method

.method private showBrightnessDialog()V
    .locals 2

    .prologue
    .line 1073
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1075
    return-void
.end method

.method private showBugreportDialog()V
    .locals 3

    .prologue
    .line 1078
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1079
    const v1, 0x104041d

    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettings$41;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$41;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1098
    const v1, 0x10400f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1099
    const v1, 0x10400f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1102
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1104
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1108
    return-void

    .line 1105
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startSettingsActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 281
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;Z)V

    .line 282
    return-void
.end method

.method private startSettingsActivity(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z

    .prologue
    .line 289
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 292
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_1
    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->collapsePanels()V

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private startSettingsActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 276
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    .line 278
    return-void
.end method

.method private updateWifiDisplayStatus()V
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 1112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->applyWifiDisplayStatus()V

    .line 1113
    return-void
.end method


# virtual methods
.method public getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method reloadUserInfo()V
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 1128
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mTilesSetUp:Z

    if-eqz v0, :cond_1

    .line 1129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V

    .line 1131
    :cond_1
    return-void
.end method

.method setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PanelBar;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 159
    return-void
.end method

.method public setImeWindowStatus(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onImeWindowStatusChanged(Z)V

    .line 171
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 163
    return-void
.end method

.method setup(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 3
    .param p1, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p2, "bluetoothController"    # Lcom/android/systemui/statusbar/policy/BluetoothController;
    .param p3, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;
    .param p4, "locationController"    # Lcom/android/systemui/statusbar/policy/LocationController;

    .prologue
    .line 175
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setupQuickSettings()V

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->updateWifiDisplayStatus()V

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->updateResources()V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addStateChangedCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/policy/LocationController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    .line 187
    return-void
.end method

.method updateResources()V
    .locals 5

    .prologue
    .line 1057
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1060
    .local v1, "r":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateResources()V

    .line 1063
    const v4, 0x7f0b000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1064
    .local v2, "span":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 1065
    .local v3, "v":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColumnSpan(I)V

    goto :goto_0

    .line 1067
    .end local v3    # "v":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    check-cast v4, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    .line 1068
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1069
    return-void
.end method
