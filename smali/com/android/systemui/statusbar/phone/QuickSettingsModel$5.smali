.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingsModel.java"


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
    .line 921
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v8, 0x7f09000d

    const v7, 0x7f09000c

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 924
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "action":Ljava/lang/String;
    const-string v4, "QuickSettingsModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive called, action is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const-string v4, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 929
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$900(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 930
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$900(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;->setImageViewResources(Landroid/content/Context;)V

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 932
    const-string v4, "state"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 933
    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # setter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirlineMode:Z
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1002(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Z)Z

    .line 934
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 935
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshMobileDataChange()V

    .line 937
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 938
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirlineMode:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->setAirlineMode(Z)V

    .line 939
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->hasSimCard()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->setHasSim(Z)V

    .line 940
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetTileView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->isClickable()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 941
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetIndicator:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1300(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    .line 943
    .end local v1    # "enabled":Z
    :cond_4
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 944
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 945
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshMobileDataChange()V

    .line 947
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 948
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->hasSimCard()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->setHasSim(Z)V

    .line 950
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetTileView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->isClickable()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 951
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetIndicator:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1300(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move v2, v3

    goto :goto_2
.end method
