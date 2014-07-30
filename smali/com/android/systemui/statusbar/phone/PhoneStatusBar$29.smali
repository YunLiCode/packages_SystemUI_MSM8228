.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 2524
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2527
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2528
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2529
    const/4 v1, 0x0

    .line 2530
    .local v1, "flags":I
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2531
    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2532
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "recentapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2533
    or-int/lit8 v1, v1, 0x2

    .line 2536
    .end local v2    # "reason":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 2559
    .end local v1    # "flags":I
    :cond_1
    :goto_0
    return-void

    .line 2538
    :cond_2
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2540
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 2541
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v4, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    .line 2543
    :cond_3
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2547
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2549
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 2550
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 2551
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v4, -0x2710

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2552
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_0

    .line 2554
    :cond_4
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2556
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 2557
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v4, 0x1

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0
.end method
