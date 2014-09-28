.class Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "WaterWaveView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/WaterWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/WaterWaveView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/WaterWaveView;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;->this$0:Lcom/android/systemui/recent/WaterWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/WaterWaveView;Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;-><init>(Lcom/android/systemui/recent/WaterWaveView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;->this$0:Lcom/android/systemui/recent/WaterWaveView;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;->this$0:Lcom/android/systemui/recent/WaterWaveView;

    iget-object v2, p0, Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;->this$0:Lcom/android/systemui/recent/WaterWaveView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/WaterWaveView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000

    iget-object v4, p0, Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;->this$0:Lcom/android/systemui/recent/WaterWaveView;

    # getter for: Lcom/android/systemui/recent/WaterWaveView;->progress:I
    invoke-static {v4}, Lcom/android/systemui/recent/WaterWaveView;->access$0(Lcom/android/systemui/recent/WaterWaveView;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v2}, Lcom/android/systemui/recent/WaterWaveView;->access$1(Lcom/android/systemui/recent/WaterWaveView;I)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;->this$0:Lcom/android/systemui/recent/WaterWaveView;

    # invokes: Lcom/android/systemui/recent/WaterWaveView;->calculatePath()V
    invoke-static {v0}, Lcom/android/systemui/recent/WaterWaveView;->access$2(Lcom/android/systemui/recent/WaterWaveView;)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;->this$0:Lcom/android/systemui/recent/WaterWaveView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/WaterWaveView;->invalidate()V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;->this$0:Lcom/android/systemui/recent/WaterWaveView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/WaterWaveView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    monitor-exit v1

    .line 206
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
