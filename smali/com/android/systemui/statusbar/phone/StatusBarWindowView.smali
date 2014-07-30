.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.super Landroid/widget/FrameLayout;
.source "StatusBarWindowView.java"


# instance fields
.field private latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mScrollView:Landroid/widget/ScrollView;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setMotionEventSplittingEnabled(Z)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setWillNotDraw(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public cancelExpandHelper()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper;->cancel()V

    .line 135
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 79
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 86
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_1
    return v1

    .line 78
    .end local v0    # "down":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    .restart local v0    # "down":Z
    :pswitch_0
    if-nez v0, :cond_0

    .line 82
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_1

    .line 79
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 59
    const v3, 0x7f070079

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 60
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScrollView:Landroid/widget/ScrollView;

    .line 61
    const v3, 0x7f070075

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 63
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 64
    .local v0, "maxHeight":I
    new-instance v3, Lcom/android/systemui/ExpandHelper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 65
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 66
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/ExpandHelper;->setScrollView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 71
    .local v2, "root":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    .line 72
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    .line 74
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "intercept":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 95
    :cond_0
    if-nez v1, :cond_1

    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    :cond_1
    if-eqz v1, :cond_2

    .line 99
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 100
    .local v0, "cancellation":Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 101
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 102
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 104
    .end local v0    # "cancellation":Landroid/view/MotionEvent;
    :cond_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 113
    :cond_0
    if-nez v0, :cond_1

    .line 114
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 116
    :cond_1
    return v0
.end method
