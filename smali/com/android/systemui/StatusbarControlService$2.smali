.class Lcom/android/systemui/StatusbarControlService$2;
.super Ljava/lang/Object;
.source "StatusbarControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/StatusbarControlService;
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
    iput-object p1, p0, Lcom/android/systemui/StatusbarControlService$2;->this$0:Lcom/android/systemui/StatusbarControlService;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService$2;->this$0:Lcom/android/systemui/StatusbarControlService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/StatusbarControlService;->access$3(Lcom/android/systemui/StatusbarControlService;Z)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService$2;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mWM:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/systemui/StatusbarControlService;->access$4(Lcom/android/systemui/StatusbarControlService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/StatusbarControlService$2;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/StatusbarControlService;->access$5(Lcom/android/systemui/StatusbarControlService;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/StatusbarControlService$2;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mHideLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/android/systemui/StatusbarControlService;->access$6(Lcom/android/systemui/StatusbarControlService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    return-void
.end method
