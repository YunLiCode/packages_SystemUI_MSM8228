.class final Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;
.super Lcom/android/systemui/statusbar/util/StateTracker;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetStateTracker"
.end annotation


# instance fields
.field private mHasSim:Z

.field private mIsAirlineMode:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 1

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/util/StateTracker;-><init>()V

    .line 1582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->mIsAirlineMode:Z

    .line 1583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->mHasSim:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;

    .prologue
    .line 1581
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1586
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->mHasSim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->mIsAirlineMode:Z

    if-nez v0, :cond_0

    .line 1587
    const/4 v0, 0x1

    .line 1589
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisabledResource()I
    .locals 1

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->getEnabledResource()I

    move-result v0

    return v0
.end method

.method public getEnabledResource()I
    .locals 4

    .prologue
    const v0, 0x7f020130

    .line 1630
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateApnNameResources()V

    .line 1631
    const-string v1, "QuickSettingsModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEnabledResource->mCurrentApnName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$2700(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$2700(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1633
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mCurrentApnName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$2700(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->WAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1640
    :cond_0
    :goto_0
    return v0

    .line 1637
    :cond_1
    const v0, 0x7f02012f

    goto :goto_0
.end method

.method public getImageButtonView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$2800(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1300(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getTileView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetTileView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isClickable()Z
    .locals 3

    .prologue
    .line 1622
    const-string v0, "QuickSettingsModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mHasSim is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->mHasSim:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsAirlineMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->mIsAirlineMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->mHasSim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->mIsAirlineMode:Z

    if-nez v0, :cond_0

    .line 1624
    const/4 v0, 0x1

    .line 1626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unused"    # Landroid/content/Intent;

    .prologue
    .line 1596
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    .line 1597
    .local v0, "currentState":I
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 1598
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 1602
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    .line 1603
    .local v0, "currentState":I
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 1604
    return-void
.end method

.method public setAirlineMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1616
    const-string v0, "QuickSettingsModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile setAirlineMode called, enabled is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->mIsAirlineMode:Z

    .line 1619
    return-void
.end method

.method public setHasSim(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1611
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->mHasSim:Z

    .line 1612
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->toggleNetSwitch(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$2900(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/content/Context;)V

    .line 1658
    return-void
.end method
