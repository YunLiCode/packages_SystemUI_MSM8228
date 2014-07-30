.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$15;
.super Ljava/lang/Object;
.source "QuickSettingsModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
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
    .line 1557
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->loadCurrentApnName()Ljava/lang/String;

    .line 1562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1563
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->setImageViewResources(Landroid/content/Context;)V

    .line 1564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshApnTile()V

    .line 1566
    return-void
.end method
