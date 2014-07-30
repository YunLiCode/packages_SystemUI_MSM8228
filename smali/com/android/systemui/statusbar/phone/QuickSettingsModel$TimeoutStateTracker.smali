.class final Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;
.super Lcom/android/systemui/statusbar/util/StateTracker;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeoutStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/util/StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;

    .prologue
    .line 1362
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1365
    const/4 v0, 0x1

    return v0
.end method

.method public getDisabledResource()I
    .locals 1

    .prologue
    .line 1379
    const v0, 0x7f0200a7

    return v0
.end method

.method public getEnabledResource()I
    .locals 1

    .prologue
    .line 1383
    const v0, 0x7f0200a8

    return v0
.end method

.method public getImageButtonView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$2300(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 1396
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->getTimeout(Landroid/content/Context;)I

    move-result v0

    .line 1397
    .local v0, "brightness":I
    sparse-switch v0, :sswitch_data_0

    .line 1410
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutIndicator:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$2500(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;

    move-result-object v1

    return-object v1

    .line 1399
    :sswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutIndicator:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$2500(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1402
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutIndicator:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$2500(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1405
    :sswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutIndicator:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$2500(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020065

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1397
    nop

    :sswitch_data_0
    .sparse-switch
        0x3a98 -> :sswitch_0
        0x7530 -> :sswitch_1
        0xea60 -> :sswitch_2
    .end sparse-switch
.end method

.method public getTileView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeoutTileView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$2400(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1375
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 1376
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 1370
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 1371
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$TimeoutStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->toggleTimeout(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$2600(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/content/Context;)V

    .line 1416
    return-void
.end method
