.class Lcom/android/systemui/recent/RecentsActivity$2$1;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Lcom/android/systemui/recent/RecentsPanelView$CleanRecentsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recent/RecentsActivity$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsActivity$2;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsActivity$2$1;->this$1:Lcom/android/systemui/recent/RecentsActivity$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCleanCancelled()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$2$1;->this$1:Lcom/android/systemui/recent/RecentsActivity$2;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsActivity$2;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    # getter for: Lcom/android/systemui/recent/RecentsActivity;->mCleanRecentsBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$400(Lcom/android/systemui/recent/RecentsActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$2$1;->this$1:Lcom/android/systemui/recent/RecentsActivity$2;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsActivity$2;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    # getter for: Lcom/android/systemui/recent/RecentsActivity;->mCleanRecentsBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$400(Lcom/android/systemui/recent/RecentsActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 215
    :cond_0
    return-void
.end method

.method public onCleanFinished()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$2$1;->this$1:Lcom/android/systemui/recent/RecentsActivity$2;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsActivity$2;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    # getter for: Lcom/android/systemui/recent/RecentsActivity;->mCleanRecentsBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$400(Lcom/android/systemui/recent/RecentsActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$2$1;->this$1:Lcom/android/systemui/recent/RecentsActivity$2;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsActivity$2;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    # getter for: Lcom/android/systemui/recent/RecentsActivity;->mCleanRecentsBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$400(Lcom/android/systemui/recent/RecentsActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 208
    :cond_0
    return-void
.end method
