.class public Lcom/android/systemui/statusbar/policy/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# instance fields
.field private mAttachedToWindow:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdating:Z

.field private mWindowVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/policy/DateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DateView$1;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    return-void
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 108
    move-object v1, p0

    .line 110
    .local v1, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const/4 v2, 0x0

    .line 117
    :goto_1
    return v2

    .line 113
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 114
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 115
    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 117
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setUpdates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mWindowVisible:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 124
    .local v1, "update":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdating:Z

    if-eq v1, v2, :cond_0

    .line 125
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdating:Z

    .line 126
    if-eqz v1, :cond_2

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 139
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_1
    return-void

    .line 123
    .end local v1    # "update":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 136
    .restart local v1    # "update":Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method


# virtual methods
.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 66
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 73
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 86
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 78
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mWindowVisible:Z

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 80
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateClock()V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method
