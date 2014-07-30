.class Lcom/android/systemui/statusbar/phone/QuickSettings$27;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addConnectionTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

.field final synthetic val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 838
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$600(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 840
    .local v0, "enable":Z
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettings$27$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$27$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings$27;Z)V

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings$27$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 854
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setPressed(Z)V

    .line 856
    return-void

    .end local v0    # "enable":Z
    :cond_0
    move v0, v1

    .line 838
    goto :goto_0
.end method
