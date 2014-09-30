.class public Lcom/android/systemui/recent/RecentsActivity;
.super Landroid/app/Activity;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field currentAnimation:Landroid/animation/Animator;

.field drawable:Lcom/android/systemui/recent/CircularProgressDrawable;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCleanRecentsBtn:Landroid/widget/ImageView;

.field mermeoryimage:Landroid/widget/ImageView;

.field percent:Ljava/lang/Integer;


.field private mForeground:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mShowing:Z

.field private tvAvailMem:Landroid/widget/TextView;

.field yun_bg:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recent/RecentsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mActivityManager:Landroid/app/ActivityManager;

    .line 56
    new-instance v0, Lcom/android/systemui/recent/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsActivity$1;-><init>(Lcom/android/systemui/recent/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    return-void
.end method

.method private getSystemAvaialbeMemorySize()J
    .locals 4

    .prologue
    .line 91
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 92
    .local v2, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 93
    iget-wide v0, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 97
    .local v0, "memSize":J
    return-wide v0
.end method

.method public static getmem_TOLAL()J
    .locals 12

    .prologue
    .line 101
    const-string v9, "/proc/meminfo"

    .line 102
    .local v9, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 103
    .local v3, "content":Ljava/lang/String;
    const/4 v1, 0x0

    .line 105
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x8

    invoke-direct {v2, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 108
    move-object v3, v6

    .line 115
    :cond_0
    if-eqz v2, :cond_4

    .line 117
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v1, v2

    .line 123
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 124
    .local v0, "begin":I
    const/16 v10, 0x6b

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 126
    .local v5, "end":I
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v7, v10

    .line 128
    .local v7, "mTotal":J
    const-wide/16 v10, 0x400

    div-long/2addr v7, v10

    .line 129
    const-wide/16 v10, 0x2d5

    cmp-long v10, v7, v10

    if-ltz v10, :cond_2

    .line 130
    const-wide/16 v10, 0x4e2

    cmp-long v10, v7, v10

    if-ltz v10, :cond_5

    .line 131
    const-wide/16 v7, 0x2

    .line 135
    :cond_2
    :goto_1
    return-wide v7

    .line 110
    .end local v0    # "begin":I
    .end local v5    # "end":I
    .end local v7    # "mTotal":J
    :catch_0
    move-exception v4

    .line 111
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    if-eqz v1, :cond_1

    .line 117
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 118
    :catch_1
    move-exception v4

    .line 119
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 113
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 115
    if-eqz v1, :cond_1

    .line 117
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 118
    :catch_3
    move-exception v4

    .line 119
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 115
    :goto_4
    if-eqz v1, :cond_3

    .line 117
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 122
    :cond_3
    :goto_5
    throw v10

    .line 118
    :catch_4
    move-exception v4

    .line 119
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 118
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_5
    move-exception v4

    .line 119
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 133
    .end local v6    # "line":Ljava/lang/String;
    .restart local v0    # "begin":I
    .restart local v5    # "end":I
    .restart local v7    # "mTotal":J
    :cond_5
    const-wide/16 v7, 0x1

    goto :goto_1

    .line 114
    .end local v0    # "begin":I
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "end":I
    .end local v7    # "mTotal":J
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 112
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 110
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private prepareStyle31Animation()Landroid/animation/Animator;
    .locals 15

    .prologue
    const-wide/16 v13, 0x5dc

    const-wide/16 v11, 0x4b0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 80
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 81
    .local v0, "animation":Landroid/animation/AnimatorSet;
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsActivity;->percent:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v3, v4

    .line 82
    .local v3, "percentage":F
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(F)V

    .line 85
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsActivity;->drawable:Lcom/android/systemui/recent/CircularProgressDrawable;

    const-string v5, "progress"

    new-array v6, v8, [F

    const/4 v7, 0x0

    aput v7, v6, v9

    const/high16 v7, 0x42c80000

    div-float v7, v3, v7

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 86
    .local v2, "invertedProgress":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 87
    invoke-virtual {v2, v13, v14}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 88
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsActivity;->drawable:Lcom/android/systemui/recent/CircularProgressDrawable;

    const-string v5, "circleScale"

    new-array v6, v8, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 90
    .local v1, "invertedCircle":Landroid/animation/Animator;
    invoke-virtual {v1, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 91
    invoke-virtual {v1, v13, v14}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 92
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v2, v4, v9

    aput-object v1, v4, v10

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 94
    return-object v0

    .line 89
    :array_0
    .array-data 4
        0x0
        0x3f666666
    .end array-data
.end method
.method private prepareStyle3Animation()Landroid/animation/Animator;
    .locals 12

    .prologue
    .line 69
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 71
    .local v0, "animation":Landroid/animation/AnimatorSet;
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsActivity;->percent:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v4, v6

    .line 72
    .local v4, "percentage":F
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(F)V

    .line 73
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsActivity;->drawable:Lcom/android/systemui/recent/CircularProgressDrawable;

    const-string v7, "progress"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x42c80000

    div-float v10, v4, v10

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 74
    .local v5, "progressAnimation":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x4b0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 75
    new-instance v6, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsActivity;->drawable:Lcom/android/systemui/recent/CircularProgressDrawable;

    const-string v7, "circleScale"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 77
    .local v1, "innerCircleAnimation":Landroid/animation/Animator;
    const-wide/16 v6, 0x4b0

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 78
    new-instance v6, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsActivity;->drawable:Lcom/android/systemui/recent/CircularProgressDrawable;

    const-string v7, "progress"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x41700000

    sub-float v10, v4, v10

    const/high16 v11, 0x42c80000

    div-float/2addr v10, v11

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 80
    .local v3, "invertedProgress":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x4b0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 81
    const-wide/16 v6, 0x5dc

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 82
    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v6}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsActivity;->drawable:Lcom/android/systemui/recent/CircularProgressDrawable;

    const-string v7, "circleScale"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 84
    .local v2, "invertedCircle":Landroid/animation/Animator;
    const-wide/16 v6, 0x4b0

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 85
    const-wide/16 v6, 0x5dc

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 86
    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v6}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const/4 v7, 0x3

    aput-object v2, v6, v7

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 88
    return-object v0

    .line 76
    nop

    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 83
    :array_1
    .array-data 4
        0x0
        0x3f666666
    .end array-data
.end method





.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/systemui/recent/RecentsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mCleanRecentsBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/RecentsActivity;I)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsActivity;->setScreenMode(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/RecentsActivity;F)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsActivity;->setScreenBrightness(F)V

    return-void
.end method


.method private blur(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 13
    .param p1, "bkg"    # Landroid/graphics/Bitmap;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/high16 v12, 0x3f800000

    const/4 v11, 0x0

    .line 35
    const/high16 v6, 0x3f800000

    .line 36
    .local v6, "scaleFactor":F
    const/high16 v6, 0x41900000

    .line 37
    const/high16 v5, 0x40800000

    .line 38
    .local v5, "radius":F
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 39
    .local v2, "mDisplay":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 40
    .local v7, "w":I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 41
    .local v1, "h":I
    int-to-float v8, v7

    div-float/2addr v8, v6

    float-to-int v8, v8

    .line 42
    int-to-float v9, v1

    div-float/2addr v9, v6

    float-to-int v9, v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 41
    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 43
    .local v3, "overlay":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 44
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45
    div-float v8, v12, v6

    div-float v9, v12, v6

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 46
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setFlags(I)V

    .line 48
    invoke-virtual {v0, p1, v11, v11, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 49
    float-to-int v8, v5

    const/4 v9, 0x1

    invoke-static {v3, v8, v9}, Lcom/android/systemui/recent/FastBlur;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 50
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    return-void
.end method

.method public static forceOpaqueBackground(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;Z)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "checkWaitingForAnimationParam"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 256
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 257
    const-string v3, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v3, :cond_0

    .line 259
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    .line 263
    .local v0, "recentTasksLoader":Lcom/android/systemui/recent/RecentTasksLoader;
    if-eqz p2, :cond_2

    const-string v3, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 265
    .local v1, "waitingForWindowAnimation":Z
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getLoadedTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->isFirstScreenful()Z

    move-result v5

    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZLjava/util/ArrayList;ZZ)V

    goto :goto_0
.end method

.method private setScreenBrightness(F)V
    .locals 6
    .param p1, "value"    # F

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 308
    .local v2, "mWindow":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 309
    .local v1, "mParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v3, 0x437f0000

    div-float v0, p1, v3

    .line 310
    .local v0, "f":F
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 311
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    float-to-int v5, p1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    return-void
.end method

.method private setScreenMode(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    return-void
.end method

.method private updateWallpaperVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/high16 v2, 0x100000

    .line 118
    if-eqz p1, :cond_1

    move v1, v2

    .line 119
    .local v1, "wpflags":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    .line 121
    .local v0, "curflags":I
    if-eq v1, v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 124
    :cond_0
    return-void

    .line 118
    .end local v0    # "curflags":I
    .end local v1    # "wpflags":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private wallpaper()V
    .locals 4

    .prologue
    .line 28
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 29
    .local v2, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 30
    .local v1, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    .local v0, "bm":Landroid/graphics/Bitmap;
    const v3, 0x7f0700f5

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->yun_bg:Landroid/widget/FrameLayout;

    .line 32
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->yun_bg:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/recent/RecentsActivity;->blur(Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 33
    return-void
.end method



.method public bluetoothfunction(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 116
    const-string v3, "error"

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsActivity;->checkBluetooth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "bluetoothstatus":Ljava/lang/String;
    const v3, 0x7f0700f9

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    .local v0, "bluetooth":Landroid/widget/ImageView;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 119
    .local v1, "bluetoothadapter":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "open"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const-string v2, "close"

    .line 121
    const v3, 0x7f020054

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 132
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string v3, "close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    const-string v2, "open"

    .line 126
    const v3, 0x7f020055

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 129
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "some thing errror here"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkBluetooth(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 171
    const v3, 0x7f0700f9

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 172
    .local v0, "bluetooth":Landroid/widget/ImageView;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 173
    .local v1, "bluetoothadapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 174
    const-string p1, "close"

    .line 175
    const v3, 0x7f020054

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v2, p1

    .line 181
    .end local p1    # "string":Ljava/lang/String;
    .local v2, "string":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 179
    .end local v2    # "string":Ljava/lang/String;
    .restart local p1    # "string":Ljava/lang/String;
    :cond_0
    const-string p1, "open"

    .line 180
    const v3, 0x7f020055

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v2, p1

    .line 181
    .end local p1    # "string":Ljava/lang/String;
    .restart local v2    # "string":Ljava/lang/String;
    goto :goto_0
.end method

.method public checkWifi(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "activitiy"    # Landroid/app/Activity;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 100
    const v5, 0x7f0700f8

    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 102
    .local v3, "wifi":Landroid/widget/ImageView;
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 103
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 104
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 105
    .local v0, "ipAddress":I
    :goto_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    .line 106
    const-string p2, "open"

    .line 107
    const v5, 0x7f0200aa

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v2, p2

    .line 112
    .end local p2    # "string":Ljava/lang/String;
    .local v2, "string":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 104
    .end local v0    # "ipAddress":I
    .end local v2    # "string":Ljava/lang/String;
    .restart local p2    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    goto :goto_0

    .line 110
    .restart local v0    # "ipAddress":I
    :cond_1
    const-string p2, "close"

    .line 111
    const v5, 0x7f0200b5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v2, p2

    .line 112
    .end local p2    # "string":Ljava/lang/String;
    .restart local v2    # "string":Ljava/lang/String;
    goto :goto_1
.end method


.method public checkdata(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 186
    const v4, 0x7f0700fa

    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 188
    .local v3, "yun_data":Landroid/widget/ImageView;
    const-string v4, "connectivity"

    .line 187
    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 189
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 190
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_0

    .line 191
    const-string p1, "close"

    .line 192
    const v4, 0x7f02006e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v2, p1

    .line 197
    .end local p1    # "string":Ljava/lang/String;
    .local v2, "string":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 195
    .end local v2    # "string":Ljava/lang/String;
    .restart local p1    # "string":Ljava/lang/String;
    :cond_0
    const-string p1, "open"

    .line 196
    const v4, 0x7f02006f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v2, p1

    .line 197
    .end local p1    # "string":Ljava/lang/String;
    .restart local v2    # "string":Ljava/lang/String;
    goto :goto_0
.end method

.method public checkrotate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 202
    const v3, 0x7f0700fb

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 203
    .local v2, "yun_rotate":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 204
    const-string v4, "accelerometer_rotation"

    const/4 v5, 0x0

    .line 203
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 205
    .local v0, "flag":I
    if-nez v0, :cond_0

    .line 206
    const-string p1, "close"

    .line 207
    const v3, 0x7f020080

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v1, p1

    .line 213
    .end local p1    # "string":Ljava/lang/String;
    .local v1, "string":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 211
    .end local v1    # "string":Ljava/lang/String;
    .restart local p1    # "string":Ljava/lang/String;
    :cond_0
    const-string p1, "open"

    .line 212
    const v3, 0x7f02003c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v1, p1

    .line 213
    .end local p1    # "string":Ljava/lang/String;
    .restart local v1    # "string":Ljava/lang/String;
    goto :goto_0
.end method

.method public datafunction(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    const-string v7, "error"

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/RecentsActivity;->checkdata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "datastatus":Ljava/lang/String;
    const v7, 0x7f0700fa

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 137
    .local v6, "yun_data":Landroid/widget/ImageView;
    const-string v7, "connectivity"

    .line 136
    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 138
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    const-string v7, "open"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 139
    const-string v2, "close"

    .line 141
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 142
    .local v5, "ownerClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Class;

    .line 143
    .local v0, "argsClass":[Ljava/lang/Class;
    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v0, v7

    .line 144
    const-string v7, "setMobileDataEnabled"

    invoke-virtual {v5, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 145
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0    # "argsClass":[Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "ownerClass":Ljava/lang/Class;
    :goto_0
    const v7, 0x7f02006e

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    :goto_1
    return-void

    .line 146
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u79fb\u52a8\u6570\u636e\u8bbe\u7f6e\u9519\u8bef: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v7, "close"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 154
    const-string v2, "open"

    .line 156
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 157
    .restart local v5    # "ownerClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Class;

    .line 158
    .restart local v0    # "argsClass":[Ljava/lang/Class;
    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v0, v7

    .line 159
    const-string v7, "setMobileDataEnabled"

    invoke-virtual {v5, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 160
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .end local v0    # "argsClass":[Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "ownerClass":Ljava/lang/Class;
    :goto_2
    const v7, 0x7f02006f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 162
    :catch_1
    move-exception v3

    .line 163
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u79fb\u52a8\u6570\u636e\u8bbe\u7f6e\u9519\u8bef: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 168
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "some thing errror here"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public dismissAndGoBack()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 171
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v2, :cond_1

    .line 172
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 174
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    .line 178
    .local v1, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v3, v2}, Lcom/android/systemui/recent/RecentsPanelView;->simulateClick(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_0
    return-void

    .line 183
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 185
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->finish()V

    goto :goto_0
.end method

.method public dismissAndGoHome()V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v1, :cond_0

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 162
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 166
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 168
    .end local v0    # "homeIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public initView()V
    .locals 7

    .prologue
    .line 263
    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 264
    .local v1, "brightnessmanager":Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 265
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 266
    const v5, 0x7f0700fe

    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 268
    .local v4, "seekBar":Landroid/widget/SeekBar;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 269
    .local v3, "progress":I
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v3    # "progress":I
    :goto_0
    new-instance v5, Lcom/android/systemui/recent/RecentsActivity$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/recent/RecentsActivity$3;-><init>(Lcom/android/systemui/recent/RecentsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 302
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e1":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method isActivityShowing()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    .line 157
    return-void
.end method



.method public rotatefunction(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    const v4, 0x7f0700fb

    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 218
    .local v1, "yun_rotate":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 219
    const-string v5, "accelerometer_rotation"

    .line 218
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 220
    .local v0, "flag":I
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    if-ne v0, v3, :cond_0

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    if-nez v0, :cond_1

    .line 222
    const v2, 0x7f02003c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 220
    goto :goto_0

    .line 225
    :cond_1
    const v2, 0x7f020080

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public wififunction(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    const-string v3, "error"

    invoke-virtual {p0, p0, v3}, Lcom/android/systemui/recent/RecentsActivity;->checkWifi(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "wifistatus":Ljava/lang/String;
    const v3, 0x7f0700f8

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 80
    .local v1, "wifi":Landroid/widget/ImageView;
    const-string v3, "haha"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const-string v2, "open"

    .line 98
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v3, "open"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    const-string v2, "close"

    .line 85
    const v3, 0x7f0200b5

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "wifimanager":Landroid/net/wifi/WifiManager;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wifimanager":Landroid/net/wifi/WifiManager;
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 88
    .restart local v0    # "wifimanager":Landroid/net/wifi/WifiManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 90
    .end local v0    # "wifimanager":Landroid/net/wifi/WifiManager;
    :cond_1
    const-string v3, "close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    const-string v2, "open"

    .line 92
    const v3, 0x7f0200aa

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    const/4 v0, 0x0

    .line 94
    .restart local v0    # "wifimanager":Landroid/net/wifi/WifiManager;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wifimanager":Landroid/net/wifi/WifiManager;
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 95
    .restart local v0    # "wifimanager":Landroid/net/wifi/WifiManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 97
    .end local v0    # "wifimanager":Landroid/net/wifi/WifiManager;
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "some thing errror here"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

# virtual methods
.method public donghua()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->currentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->currentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsActivity;->prepareStyle3Animation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->currentAnimation:Landroid/animation/Animator;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->currentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 63
    return-void
.end method

.method public donghua1()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->currentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->currentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsActivity;->prepareStyle31Animation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->currentAnimation:Landroid/animation/Animator;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->currentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 78
    return-void
.end method


.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    const v1, 0x7f040027

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsActivity;->wallpaper()V
    
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->setup()I
    
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->donghua1()V

    
    .line 44
    const-string v0, "errorf"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/recent/RecentsActivity;->checkWifi(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsActivity;->checkBluetooth(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsActivity;->checkdata(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsActivity;->checkrotate(Ljava/lang/String;)Ljava/lang/String;


    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->initView()V


    .line 191
    const v1, 0x7f070092

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentsPanelView;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 192
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    new-instance v2, Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;-><init>(Lcom/android/systemui/recent/RecentsActivity;Lcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setSystemUiVisibility(I)V

    .line 196
    const v1, 0x7f070097

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mCleanRecentsBtn:Landroid/widget/ImageView;

    .line 197
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mCleanRecentsBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mCleanRecentsBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/recent/RecentsActivity$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recent/RecentsActivity$2;-><init>(Lcom/android/systemui/recent/RecentsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    .line 223
    .local v0, "recentTasksLoader":Lcom/android/systemui/recent/RecentTasksLoader;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 224
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setMinSwipeAlpha(F)V

    .line 227
    if-eqz p1, :cond_1

    const-string v1, "was_showing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/recent/RecentsActivity;->handleIntent(Landroid/content/Intent;Z)V

    .line 231
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 232
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recent/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    return-void

    .line 229
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setup()I
    .locals 15

    .prologue
    const-wide/16 v13, 0x400

    const-wide/16 v11, 0x64

    .line 40
    const v5, 0x7f070097

    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/systemui/recent/RecentsActivity;->mermeoryimage:Landroid/widget/ImageView;

    .line 41
    new-instance v5, Lcom/android/systemui/recent/CircularProgressDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x1060000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1060014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060013

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/systemui/recent/CircularProgressDrawable;-><init>(IIII)V

    .line 41
    iput-object v5, p0, Lcom/android/systemui/recent/RecentsActivity;->drawable:Lcom/android/systemui/recent/CircularProgressDrawable;

    .line 45
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsActivity;->mermeoryimage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsActivity;->drawable:Lcom/android/systemui/recent/CircularProgressDrawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    const v5, 0x7f0700f4

    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/systemui/recent/RecentsActivity;->tvAvailMem:Landroid/widget/TextView;

    .line 47
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lcom/android/systemui/recent/RecentsActivity;->mActivityManager:Landroid/app/ActivityManager;

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsActivity;->getSystemAvaialbeMemorySize()J

    move-result-wide v2

    .line 49
    .local v2, "availMemStr":J
    invoke-static {}, Lcom/android/systemui/recent/RecentsActivity;->getmem_TOLAL()J

    move-result-wide v0

    .line 50
    .local v0, "allMerm":J
    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "mavailMemStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsActivity;->tvAvailMem:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u53ef\u7528"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "G"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    mul-long v5, v2, v11

    div-long/2addr v5, v13

    div-long/2addr v5, v13

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v0

    div-long/2addr v5, v7

    sub-long v5, v11, v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recent/RecentsActivity;->percent:Ljava/lang/Integer;

    .line 54
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsActivity;->percent:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 245
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 248
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 252
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recent/RecentsActivity;->handleIntent(Landroid/content/Intent;Z)V

    .line 253
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 100
    const v0, 0x7f05000e

    const v1, 0x7f05000f

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RecentsActivity;->overridePendingTransition(II)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 152
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 240
    const-string v0, "was_showing"

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 133
    invoke-static {p0}, Lcom/android/systemui/recent/RecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsActivity;->updateWallpaperVisibility(Z)V

    .line 138
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    .line 139
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList()V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshViews()V

    .line 145
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 146
    return-void

    .line 136
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsActivity;->updateWallpaperVisibility(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    .line 110
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->cancelCleanRecents()V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    .line 114
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 115
    return-void
.end method
