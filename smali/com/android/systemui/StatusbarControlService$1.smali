.class Lcom/android/systemui/StatusbarControlService$1;
.super Ljava/lang/Object;
.source "StatusbarControlService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/android/systemui/StatusbarControlService$1;->this$0:Lcom/android/systemui/StatusbarControlService;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, -0x1

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/android/systemui/StatusbarControlService$1;->this$0:Lcom/android/systemui/StatusbarControlService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/systemui/StatusbarControlService;->access$0(Lcom/android/systemui/StatusbarControlService;I)V

    .line 132
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 125
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/StatusbarControlService$1;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mDownY:I
    invoke-static {v1}, Lcom/android/systemui/StatusbarControlService;->access$1(Lcom/android/systemui/StatusbarControlService;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/StatusbarControlService$1;->this$0:Lcom/android/systemui/StatusbarControlService;

    # getter for: Lcom/android/systemui/StatusbarControlService;->mDownY:I
    invoke-static {v2}, Lcom/android/systemui/StatusbarControlService;->access$1(Lcom/android/systemui/StatusbarControlService;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 127
    .local v0, "offset":I
    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/android/systemui/StatusbarControlService$1;->this$0:Lcom/android/systemui/StatusbarControlService;

    # invokes: Lcom/android/systemui/StatusbarControlService;->showStatusbar()V
    invoke-static {v1}, Lcom/android/systemui/StatusbarControlService;->access$2(Lcom/android/systemui/StatusbarControlService;)V

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/StatusbarControlService$1;->this$0:Lcom/android/systemui/StatusbarControlService;

    invoke-static {v1, v3}, Lcom/android/systemui/StatusbarControlService;->access$0(Lcom/android/systemui/StatusbarControlService;I)V

    goto :goto_0
.end method
