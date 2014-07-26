.class Lcom/android/systemui/StatusbarControlService$3;
.super Ljava/lang/Object;
.source "StatusbarControlService.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/StatusbarControlService;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/StatusbarControlService;


# direct methods
.method constructor <init>(Lcom/android/systemui/StatusbarControlService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/StatusbarControlService$3;->this$0:Lcom/android/systemui/StatusbarControlService;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/systemui/StatusbarControlService$3;->this$0:Lcom/android/systemui/StatusbarControlService;

    invoke-virtual {v1}, Lcom/android/systemui/StatusbarControlService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 71
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/systemui/StatusbarControlService$3;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mInput:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/StatusbarControlService;->access$7(Lcom/android/systemui/StatusbarControlService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/android/systemui/StatusbarControlService$3;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/StatusbarControlService;->access$8(Lcom/android/systemui/StatusbarControlService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/StatusbarControlService$3;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mHideStatusbar:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/systemui/StatusbarControlService;->access$9(Lcom/android/systemui/StatusbarControlService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    iget-object v1, p0, Lcom/android/systemui/StatusbarControlService$3;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mWM:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/android/systemui/StatusbarControlService;->access$4(Lcom/android/systemui/StatusbarControlService;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/StatusbarControlService$3;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/StatusbarControlService;->access$5(Lcom/android/systemui/StatusbarControlService;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/StatusbarControlService$3;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mTouchLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/android/systemui/StatusbarControlService;->access$10(Lcom/android/systemui/StatusbarControlService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/StatusbarControlService$3;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mPost:Z
    invoke-static {v1}, Lcom/android/systemui/StatusbarControlService;->access$11(Lcom/android/systemui/StatusbarControlService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/systemui/StatusbarControlService$3;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mWM:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/android/systemui/StatusbarControlService;->access$4(Lcom/android/systemui/StatusbarControlService;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/StatusbarControlService$3;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/StatusbarControlService;->access$5(Lcom/android/systemui/StatusbarControlService;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/StatusbarControlService$3;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mHideLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/android/systemui/StatusbarControlService;->access$6(Lcom/android/systemui/StatusbarControlService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
