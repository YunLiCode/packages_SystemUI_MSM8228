.class public Lcom/android/systemui/recent/WaterWaveView;
.super Landroid/view/View;
.source "WaterWaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;,
        Lcom/android/systemui/recent/WaterWaveView$SavedState;
    }
.end annotation


# instance fields
.field private aboveOffset:F

.field private aboveWaveColor:I

.field private aboveWavePaint:Landroid/graphics/Paint;

.field private aboveWavePath:Landroid/graphics/Path;

.field private animOffset:F

.field private blowOffset:F

.field private blowWaveColor:I

.field private blowWavePaint:Landroid/graphics/Paint;

.field private blowWavePath:Landroid/graphics/Path;

.field private final default_above_wave_alpha:I

.field private final default_blow_wave_alpha:I

.field private mRefreshProgressRunnable:Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;

.field private final max_right:F

.field private final offset:F

.field private progress:I

.field private waveToTop:I

.field private final x_zoom:I

.field private final y_zoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const v0, 0x7f010012

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/WaterWaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v4, 0x32

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveWavePath:Landroid/graphics/Path;

    .line 20
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->blowWavePath:Landroid/graphics/Path;

    .line 21
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveWavePaint:Landroid/graphics/Paint;

    .line 22
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->blowWavePaint:Landroid/graphics/Paint;

    .line 24
    iput v4, p0, Lcom/android/systemui/recent/WaterWaveView;->default_above_wave_alpha:I

    .line 25
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/systemui/recent/WaterWaveView;->default_blow_wave_alpha:I

    .line 33
    const/16 v1, 0x96

    iput v1, p0, Lcom/android/systemui/recent/WaterWaveView;->x_zoom:I

    .line 36
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/systemui/recent/WaterWaveView;->y_zoom:I

    .line 38
    const/high16 v1, 0x3f000000

    iput v1, p0, Lcom/android/systemui/recent/WaterWaveView;->offset:F

    .line 39
    const/high16 v1, 0x42960000

    iput v1, p0, Lcom/android/systemui/recent/WaterWaveView;->max_right:F

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveOffset:F

    .line 43
    const/high16 v1, 0x40800000

    iput v1, p0, Lcom/android/systemui/recent/WaterWaveView;->blowOffset:F

    .line 45
    const v1, 0x3dcccccd

    iput v1, p0, Lcom/android/systemui/recent/WaterWaveView;->animOffset:F

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recent/R$styleable;->WaveView:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "attributes":Landroid/content/res/TypedArray;
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveWaveColor:I

    .line 61
    const v1, -0xff669a

    iput v1, p0, Lcom/android/systemui/recent/WaterWaveView;->blowWaveColor:I

    .line 62
    const/16 v1, 0x14

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/WaterWaveView;->progress:I

    .line 64
    iget v1, p0, Lcom/android/systemui/recent/WaterWaveView;->progress:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/WaterWaveView;->setProgress(I)V

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/recent/WaterWaveView;->initializePainters()V

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/recent/WaterWaveView;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/android/systemui/recent/WaterWaveView;->progress:I

    return v0
.end method

.method static synthetic access$1(Lcom/android/systemui/recent/WaterWaveView;I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/android/systemui/recent/WaterWaveView;->waveToTop:I

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/recent/WaterWaveView;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui/recent/WaterWaveView;->calculatePath()V

    return-void
.end method

.method private calculatePath()V
    .locals 10

    .prologue
    const/high16 v9, 0x42960000

    const/high16 v8, 0x3f000000

    const-wide/high16 v6, 0x4024000000000000L

    const/high16 v5, 0x43160000

    .line 125
    iget-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveWavePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 126
    iget-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->blowWavePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/recent/WaterWaveView;->getWaveOffset()V

    .line 132
    iget-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveWavePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 133
    const/4 v0, 0x0

    .local v0, "i":F
    :goto_0
    mul-float v1, v5, v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v9

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveWavePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 138
    iget-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->blowWavePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 139
    const/4 v0, 0x0

    :goto_1
    mul-float v1, v5, v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v9

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->blowWavePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 143
    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveWavePath:Landroid/graphics/Path;

    mul-float v2, v5, v0

    iget v3, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveOffset:F

    add-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/recent/WaterWaveView;->waveToTop:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 133
    add-float/2addr v0, v8

    goto :goto_0

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->blowWavePath:Landroid/graphics/Path;

    mul-float v2, v5, v0

    iget v3, p0, Lcom/android/systemui/recent/WaterWaveView;->blowOffset:F

    add-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/recent/WaterWaveView;->waveToTop:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    add-float/2addr v0, v8

    goto :goto_1
.end method

.method private getWaveOffset()V
    .locals 4

    .prologue
    const v3, 0x7f7fffff

    const/4 v2, 0x0

    .line 163
    iget v0, p0, Lcom/android/systemui/recent/WaterWaveView;->blowOffset:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 164
    iput v2, p0, Lcom/android/systemui/recent/WaterWaveView;->blowOffset:F

    .line 169
    :goto_0
    iget v0, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveOffset:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 170
    iput v2, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveOffset:F

    .line 174
    :goto_1
    return-void

    .line 166
    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/WaterWaveView;->blowOffset:F

    iget v1, p0, Lcom/android/systemui/recent/WaterWaveView;->animOffset:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/recent/WaterWaveView;->blowOffset:F

    goto :goto_0

    .line 172
    :cond_1
    iget v0, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveOffset:F

    iget v1, p0, Lcom/android/systemui/recent/WaterWaveView;->animOffset:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveOffset:F

    goto :goto_1
.end method

.method private initializePainters()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveWavePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveWaveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveWavePaint:Landroid/graphics/Paint;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveWavePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveWavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/recent/WaterWaveView;->blowWavePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/recent/WaterWaveView;->blowWaveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/recent/WaterWaveView;->blowWavePaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/recent/WaterWaveView;->blowWavePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/recent/WaterWaveView;->blowWavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    return-void
.end method

.method private measure(IZ)I
    .locals 6
    .param p1, "measureSpec"    # I
    .param p2, "isWidth"    # Z

    .prologue
    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 91
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 92
    .local v3, "size":I
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getPaddingRight()I

    move-result v5

    add-int v1, v4, v5

    .line 93
    .local v1, "padding":I
    :goto_0
    const/high16 v4, 0x40000000

    if-ne v0, v4, :cond_2

    .line 94
    move v2, v3

    .line 106
    .local v2, "result":I
    :cond_0
    :goto_1
    return v2

    .line 92
    .end local v1    # "padding":I
    .end local v2    # "result":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getPaddingBottom()I

    move-result v5

    add-int v1, v4, v5

    goto :goto_0

    .line 96
    .restart local v1    # "padding":I
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getSuggestedMinimumWidth()I

    move-result v2

    .line 97
    .restart local v2    # "result":I
    :goto_2
    add-int/2addr v2, v1

    .line 98
    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_0

    .line 99
    if-eqz p2, :cond_4

    .line 100
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 101
    goto :goto_1

    .line 96
    .end local v2    # "result":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getSuggestedMinimumHeight()I

    move-result v2

    goto :goto_2

    .line 102
    .restart local v2    # "result":I
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 152
    new-instance v0, Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;-><init>(Lcom/android/systemui/recent/WaterWaveView;Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;)V

    iput-object v0, p0, Lcom/android/systemui/recent/WaterWaveView;->mRefreshProgressRunnable:Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->mRefreshProgressRunnable:Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/recent/WaterWaveView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->mRefreshProgressRunnable:Lcom/android/systemui/recent/WaterWaveView$RefreshProgressRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/recent/WaterWaveView;->blowWavePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->blowWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveWavePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/recent/WaterWaveView;->aboveWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 75
    const/high16 v0, 0x41200000

    const/high16 v1, 0x43200000

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recent/WaterWaveView;->measure(IZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/recent/WaterWaveView;->measure(IZ)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/WaterWaveView;->setMeasuredDimension(II)V

    .line 86
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 189
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recent/WaterWaveView$SavedState;

    .line 190
    .local v0, "ss":Lcom/android/systemui/recent/WaterWaveView$SavedState;
    invoke-virtual {v0}, Lcom/android/systemui/recent/WaterWaveView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 192
    iget v1, v0, Lcom/android/systemui/recent/WaterWaveView$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/WaterWaveView;->setProgress(I)V

    .line 193
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 179
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 180
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/systemui/recent/WaterWaveView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/WaterWaveView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 182
    .local v0, "ss":Lcom/android/systemui/recent/WaterWaveView$SavedState;
    iget v2, p0, Lcom/android/systemui/recent/WaterWaveView;->progress:I

    iput v2, v0, Lcom/android/systemui/recent/WaterWaveView$SavedState;->progress:I

    .line 184
    return-object v0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    const/16 v0, 0x64

    .line 146
    if-le p1, v0, :cond_0

    move p1, v0

    .end local p1    # "progress":I
    :cond_0
    iput p1, p0, Lcom/android/systemui/recent/WaterWaveView;->progress:I

    .line 147
    return-void
.end method
