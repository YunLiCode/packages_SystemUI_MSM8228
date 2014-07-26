.class Lcom/android/systemui/recent/RecentsActivity$2;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsActivity;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsActivity$2;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$2;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    # getter for: Lcom/android/systemui/recent/RecentsActivity;->mCleanRecentsBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$400(Lcom/android/systemui/recent/RecentsActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$2;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    # getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$100(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recent/RecentsActivity$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsActivity$2$1;-><init>(Lcom/android/systemui/recent/RecentsActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->cleanRecentsOneByOne(Lcom/android/systemui/recent/RecentsPanelView$CleanRecentsCallback;)V

    .line 217
    return-void
.end method
