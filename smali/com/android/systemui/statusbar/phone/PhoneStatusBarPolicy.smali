.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"


# static fields
.field private static final sWifiSignalImages:[[I


# instance fields
.field private mBluetoothEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInetCondition:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiConnected:Z

.field private mLastWifiSignalLevel:I

.field private final mService:Landroid/app/StatusBarManager;

.field mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageNotification:Lcom/android/systemui/usb/StorageNotification;

.field private mVolumeVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0202c7
        0x7f0202c9
        0x7f0202cb
        0x7f0202cd
    .end array-data

    :array_1
    .array-data 4
        0x7f0202c8
        0x7f0202ca
        0x7f0202cc
        0x7f0202ce
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 92
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 108
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    .line 109
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsWifiConnected:Z

    .line 112
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    .line 121
    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 165
    new-instance v5, Lcom/android/systemui/usb/StorageNotification;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/android/systemui/usb/StorageNotification;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageNotification:Lcom/android/systemui/usb/StorageNotification;

    .line 167
    const-string v5, "statusbar"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 170
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v5, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v5, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v5, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2, v9, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 184
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v4

    .line 185
    .local v4, "numPhones":I
    new-array v5, v4, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 186
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 187
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v7, v5, v3

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    :cond_0
    const-string v5, "storage"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 192
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageNotification:Lcom/android/systemui/usb/StorageNotification;

    invoke-virtual {v5, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 195
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "tty"

    const v8, 0x7f0202c2

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 196
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "tty"

    invoke-virtual {v5, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 199
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "cdma_eri"

    const v8, 0x7f0201c2

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 200
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "cdma_eri"

    invoke-virtual {v5, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 203
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 204
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const v1, 0x7f02014b

    .line 205
    .local v1, "bluetoothIcon":I
    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v7, 0xc

    if-ne v5, v7, :cond_2

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 207
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    .line 208
    const v1, 0x7f02014c

    .line 211
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "bluetooth"

    invoke-virtual {v5, v7, v1, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 212
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "bluetooth"

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v5, v7, v8}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 215
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "alarm_clock"

    const v8, 0x7f020134

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 216
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "alarm_clock"

    invoke-virtual {v5, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 219
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "sync_active"

    const v8, 0x7f0202c0

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 220
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "sync_failing"

    const v8, 0x7f0202c1

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 221
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "sync_active"

    invoke-virtual {v5, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 222
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "sync_failing"

    invoke-virtual {v5, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 225
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "volume"

    const v8, 0x7f0201c0

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 226
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "volume"

    invoke-virtual {v5, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolume()V

    .line 230
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "headset"

    const v8, 0x7f02016a

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 231
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "headset"

    invoke-virtual {v5, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 233
    return-void

    :cond_2
    move v5, v6

    .line 206
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolume()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/usb/StorageNotification;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageNotification:Lcom/android/systemui/usb/StorageNotification;

    return-object v0
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 243
    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 244
    .local v0, "alarmSet":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 245
    return-void
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 322
    const v2, 0x7f02014b

    .line 323
    .local v2, "iconId":I
    const/4 v1, 0x0

    .line 324
    .local v1, "contentDescription":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 327
    .local v3, "state":I
    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 342
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "bluetooth"

    invoke-virtual {v4, v6, v2, v5, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 343
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "bluetooth"

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v4, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 344
    .end local v3    # "state":I
    :cond_0
    return-void

    .restart local v3    # "state":I
    :cond_1
    move v4, v5

    .line 327
    goto :goto_0

    .line 328
    .end local v3    # "state":I
    :cond_2
    const-string v4, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    const-string v4, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 331
    .restart local v3    # "state":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 332
    const v2, 0x7f02014c

    .line 333
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0042

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 335
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0043

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 258
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "stateExtra":Ljava/lang/String;
    const-string v4, "subscription"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 262
    .local v3, "sub":I
    const-string v4, "PhoneStatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState for subscription :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v4, "ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 288
    .local v1, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v4, v3

    .line 289
    return-void

    .line 267
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_0
    const-string v4, "CARD_IO_ERROR"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 270
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    const-string v4, "READY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 271
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 273
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    const-string v4, "LOCKED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 274
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 277
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 279
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    const-string v4, "PUK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 280
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 283
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 286
    .end local v0    # "lockedReason":Ljava/lang/String;
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 248
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 347
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "action":Ljava/lang/String;
    const-string v2, "ttyEnabled"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 352
    .local v1, "enabled":Z
    if-eqz v1, :cond_0

    .line 355
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "tty"

    const v4, 0x7f0202c2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f0a007c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v7, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "tty"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "tty"

    invoke-virtual {v2, v3, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateVolume()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 292
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 293
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 295
    .local v3, "ringerMode":I
    if-eqz v3, :cond_0

    if-eq v3, v6, :cond_0

    const/4 v7, 0x3

    if-ne v3, v7, :cond_3

    :cond_0
    move v4, v6

    .line 300
    .local v4, "visible":Z
    :goto_0
    const/4 v1, 0x0

    .line 301
    .local v1, "contentDescription":Ljava/lang/String;
    if-ne v3, v6, :cond_4

    .line 302
    const v2, 0x7f0201c1

    .line 303
    .local v2, "iconId":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f0a007d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    :goto_1
    if-eqz v4, :cond_1

    .line 313
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "volume"

    invoke-virtual {v6, v7, v2, v5, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 315
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    if-eq v4, v5, :cond_2

    .line 316
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "volume"

    invoke-virtual {v5, v6, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 317
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    .line 319
    :cond_2
    return-void

    .end local v1    # "contentDescription":Ljava/lang/String;
    .end local v2    # "iconId":I
    .end local v4    # "visible":Z
    :cond_3
    move v4, v5

    .line 295
    goto :goto_0

    .line 304
    .restart local v1    # "contentDescription":Ljava/lang/String;
    .restart local v4    # "visible":Z
    :cond_4
    if-nez v3, :cond_5

    .line 305
    const v2, 0x7f0201c0

    .line 306
    .restart local v2    # "iconId":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f0a007e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 308
    .end local v2    # "iconId":I
    :cond_5
    const v2, 0x7f0201bf

    .restart local v2    # "iconId":I
    goto :goto_1
.end method
