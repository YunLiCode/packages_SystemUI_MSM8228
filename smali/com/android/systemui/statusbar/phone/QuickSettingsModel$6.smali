.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$6;
.super Ljava/lang/Object;
.source "QuickSettingsModel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addMobileDataTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0

    .prologue
    .line 967
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$6;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$6;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirlineMode:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    :goto_0
    return-void

    .line 973
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$6$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$6$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$6;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$6$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
