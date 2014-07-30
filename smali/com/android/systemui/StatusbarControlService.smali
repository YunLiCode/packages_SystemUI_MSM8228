.class public Lcom/android/systemui/StatusbarControlService;
.super Landroid/app/Service;
.source "StatusbarControlService.java"


# instance fields
.field private mDownY:I

.field private mHandler:Landroid/os/Handler;

.field private mHideLP:Landroid/view/WindowManager$LayoutParams;

.field private mHideStatusbar:Ljava/lang/Runnable;

.field private mInput:Landroid/view/View;

.field private mPost:Z

.field private mShowLP:Landroid/view/WindowManager$LayoutParams;

.field private mTouchLP:Landroid/view/WindowManager$LayoutParams;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mView:Landroid/view/View;

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/StatusbarControlService;->mDownY:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/StatusbarControlService;->mPost:Z

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/android/systemui/StatusbarControlService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/StatusbarControlService$1;-><init>(Lcom/android/systemui/StatusbarControlService;)V

    iput-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 148
    new-instance v0, Lcom/android/systemui/StatusbarControlService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/StatusbarControlService$2;-><init>(Lcom/android/systemui/StatusbarControlService;)V

    iput-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mHideStatusbar:Ljava/lang/Runnable;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/StatusbarControlService;I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/android/systemui/StatusbarControlService;->mDownY:I

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/StatusbarControlService;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/android/systemui/StatusbarControlService;->mDownY:I

    return v0
.end method

.method static synthetic access$10(Lcom/android/systemui/StatusbarControlService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mTouchLP:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$11(Lcom/android/systemui/StatusbarControlService;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/StatusbarControlService;->mPost:Z

    return v0
.end method

.method static synthetic access$2(Lcom/android/systemui/StatusbarControlService;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/systemui/StatusbarControlService;->showStatusbar()V

    return-void
.end method

.method static synthetic access$3(Lcom/android/systemui/StatusbarControlService;Z)V
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/StatusbarControlService;->mPost:Z

    return-void
.end method

.method static synthetic access$4(Lcom/android/systemui/StatusbarControlService;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mWM:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/systemui/StatusbarControlService;)Landroid/view/View;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/systemui/StatusbarControlService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mHideLP:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/systemui/StatusbarControlService;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mInput:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/systemui/StatusbarControlService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/android/systemui/StatusbarControlService;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mHideStatusbar:Ljava/lang/Runnable;

    return-object v0
.end method

.method private initLP()V
    .locals 6

    .prologue
    const/16 v5, 0x7d3

    const/16 v4, 0x30

    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 90
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mShowLP:Landroid/view/WindowManager$LayoutParams;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mShowLP:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x40808

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 92
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mShowLP:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 93
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mShowLP:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 94
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mShowLP:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mShowLP:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 96
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mShowLP:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 98
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mHideLP:Landroid/view/WindowManager$LayoutParams;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mHideLP:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 100
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mHideLP:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 101
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mHideLP:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 102
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mHideLP:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 103
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mHideLP:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 104
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mHideLP:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 106
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mTouchLP:Landroid/view/WindowManager$LayoutParams;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mTouchLP:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x40008

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 108
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mTouchLP:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 109
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mTouchLP:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 111
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mTouchLP:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x1e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 112
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mTouchLP:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 113
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mTouchLP:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 115
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 47
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/systemui/StatusbarControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/StatusbarControlService;->mWM:Landroid/view/WindowManager;

    .line 49
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/StatusbarControlService;->mView:Landroid/view/View;

    .line 51
    iget-object v2, p0, Lcom/android/systemui/StatusbarControlService;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/StatusbarControlService;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    iget-object v2, p0, Lcom/android/systemui/StatusbarControlService;->mWM:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/StatusbarControlService;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/StatusbarControlService;->mHideLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 56
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d6

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 57
    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 58
    const/16 v2, 0x8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 59
    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 61
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 62
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/StatusbarControlService;->mInput:Landroid/view/View;

    .line 63
    iget-object v2, p0, Lcom/android/systemui/StatusbarControlService;->mWM:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/StatusbarControlService;->mInput:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v2, p0, Lcom/android/systemui/StatusbarControlService;->mInput:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 67
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/systemui/StatusbarControlService$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/StatusbarControlService$3;-><init>(Lcom/android/systemui/StatusbarControlService;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 84
    return-void
.end method

.method private showStatusbar()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/StatusbarControlService;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/StatusbarControlService;->mShowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/StatusbarControlService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/StatusbarControlService;->mHideStatusbar:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/StatusbarControlService;->mPost:Z

    .line 143
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/StatusbarControlService;->initLP()V

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/StatusbarControlService;->initView()V

    .line 44
    return-void
.end method
