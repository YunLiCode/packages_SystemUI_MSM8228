.class Lcom/android/systemui/statusbar/phone/QuickSettings$30;
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

.field final synthetic val$bluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$30;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$30;->val$bluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$30;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$30;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 895
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$30;->val$bluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setPressed(Z)V

    .line 897
    return-void

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$30;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method
