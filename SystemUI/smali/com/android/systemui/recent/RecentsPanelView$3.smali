.class Lcom/android/systemui/recent/RecentsPanelView$3;
.super Landroid/os/Handler;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 847
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 854
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 855
    return-void

    .line 849
    :pswitch_0
    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->CLEAN_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/android/systemui/recent/RecentsPanelView;->access$1200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 850
    :try_start_0
    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->CLEAN_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/android/systemui/recent/RecentsPanelView;->access$1200()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 851
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 847
    :pswitch_data_0
    .packed-switch 0x1b653
        :pswitch_0
    .end packed-switch
.end method
