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
.field private mCleanRecentsBtn:Landroid/widget/ImageButton;

.field private mForeground:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mShowing:Z


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

    .line 56
    new-instance v0, Lcom/android/systemui/recent/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsActivity$1;-><init>(Lcom/android/systemui/recent/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    return-void
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

.method static synthetic access$400(Lcom/android/systemui/recent/RecentsActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mCleanRecentsBtn:Landroid/widget/ImageButton;

    return-object v0
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


# virtual methods
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    const v1, 0x7f040027

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsActivity;->setContentView(I)V

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

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mCleanRecentsBtn:Landroid/widget/ImageButton;

    .line 197
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mCleanRecentsBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mCleanRecentsBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/systemui/recent/RecentsActivity$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recent/RecentsActivity$2;-><init>(Lcom/android/systemui/recent/RecentsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
