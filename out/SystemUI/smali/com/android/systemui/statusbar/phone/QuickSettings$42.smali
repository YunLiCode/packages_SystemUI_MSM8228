.class Lcom/android/systemui/statusbar/phone/QuickSettings$42;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$42;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1138
    const-string v3, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplayStatus;

    .line 1140
    .local v2, "status":Landroid/hardware/display/WifiDisplayStatus;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$42;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # setter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1302(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;

    .line 1141
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$42;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyWifiDisplayStatus()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1400(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 1159
    .end local v2    # "status":Landroid/hardware/display/WifiDisplayStatus;
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1143
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1145
    .local v1, "state":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$42;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    move-result-object v5

    const/16 v6, 0xc

    if-ne v1, v6, :cond_2

    :goto_1
    iput-boolean v3, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 1146
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$42;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyBluetoothStatus()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1145
    goto :goto_1

    .line 1147
    .end local v1    # "state":I
    :cond_3
    const-string v5, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1148
    const-string v5, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1150
    .local v2, "status":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$42;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    move-result-object v5

    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    :goto_2
    iput-boolean v3, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    .line 1151
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$42;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyBluetoothStatus()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_0

    :cond_4
    move v3, v4

    .line 1150
    goto :goto_2

    .line 1152
    .end local v2    # "status":I
    :cond_5
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1153
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$42;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->reloadUserInfo()V

    goto :goto_0

    .line 1154
    :cond_6
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1155
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$42;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUseDefaultAvatar:Z

    if-eqz v3, :cond_0

    .line 1156
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$42;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1700(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_0
.end method
