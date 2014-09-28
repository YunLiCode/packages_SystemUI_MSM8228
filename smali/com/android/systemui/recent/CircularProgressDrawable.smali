.class public Lcom/android/systemui/recent/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"


# static fields
.field public static final CIRCLE_FILL_PROPERTY:Ljava/lang/String; = "circleScale"

.field public static final PROGRESS_FACTOR:I = -0x168

.field public static final PROGRESS_PROPERTY:Ljava/lang/String; = "progress"

.field public static final TAG:Ljava/lang/String; = "CircularProgressDrawable"


# instance fields
.field protected final arcElements:Landroid/graphics/RectF;

.field protected centerColor:I

.field protected circleScale:F

.field protected indeterminate:Z

.field protected outlineColor:I

.field private final paint:Landroid/graphics/Paint;

.field protected progress:F

.field protected ringColor:I

.field protected final ringWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "ringWidth"    # I
    .param p2, "outlineColor"    # I
    .param p3, "ringColor"    # I
    .param p4, "centerColor"    # I

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->progress:F

    .line 112
    iput p2, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->outlineColor:I

    .line 113
    iput p3, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->ringColor:I

    .line 114
    iput p4, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->centerColor:I

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iput p1, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->ringWidth:I

    .line 118
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->arcElements:Landroid/graphics/RectF;

    .line 119
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->circleScale:F

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->indeterminate:Z

    .line 121
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 128
    .local v12, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v18

    .line 129
    .local v18, "size":I
    :goto_0
    div-int/lit8 v2, v18, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x3f400000

    mul-float/2addr v2, v3

    const v3, 0x3f6fdf3b

    mul-float v17, v2, v3

    .line 130
    .local v17, "outerRadius":F
    div-int/lit8 v2, v18, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x3f400000

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f400000

    mul-float v14, v2, v3

    .line 131
    .local v14, "innerRadius":F
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000

    div-float v15, v2, v3

    .line 132
    .local v15, "offsetX":F
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000

    div-float v16, v2, v3

    .line 135
    .local v16, "offsetY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->outlineColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->centerColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->circleScale:F

    mul-float/2addr v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 145
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->ringWidth:I

    div-int/lit8 v13, v2, 0x2

    .line 146
    .local v13, "halfRingWidth":I
    int-to-float v2, v13

    add-float v9, v15, v2

    .line 147
    .local v9, "arcX0":F
    int-to-float v2, v13

    add-float v11, v16, v2

    .line 148
    .local v11, "arcY0":F
    const/high16 v2, 0x40000000

    mul-float v2, v2, v17

    add-float/2addr v2, v15

    int-to-float v3, v13

    sub-float v8, v2, v3

    .line 149
    .local v8, "arcX":F
    const/high16 v2, 0x40000000

    mul-float v2, v2, v17

    add-float v2, v2, v16

    int-to-float v3, v13

    sub-float v10, v2, v3

    .line 152
    .local v10, "arcY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->ringColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->ringWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->arcElements:Landroid/graphics/RectF;

    invoke-virtual {v2, v9, v11, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 157
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->indeterminate:Z

    if-eqz v2, :cond_1

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->arcElements:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->progress:F

    const/high16 v5, 0x42b40000

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 162
    :goto_1
    return-void

    .line 128
    .end local v8    # "arcX":F
    .end local v9    # "arcX0":F
    .end local v10    # "arcY":F
    .end local v11    # "arcY0":F
    .end local v13    # "halfRingWidth":I
    .end local v14    # "innerRadius":F
    .end local v15    # "offsetX":F
    .end local v16    # "offsetY":F
    .end local v17    # "outerRadius":F
    .end local v18    # "size":I
    :cond_0
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v18

    goto/16 :goto_0

    .line 160
    .restart local v8    # "arcX":F
    .restart local v9    # "arcX0":F
    .restart local v10    # "arcY":F
    .restart local v11    # "arcY0":F
    .restart local v13    # "halfRingWidth":I
    .restart local v14    # "innerRadius":F
    .restart local v15    # "offsetX":F
    .restart local v16    # "offsetY":F
    .restart local v17    # "outerRadius":F
    .restart local v18    # "size":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->arcElements:Landroid/graphics/RectF;

    const/high16 v4, 0x42b20000

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->progress:F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public getCenterColor()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->centerColor:I

    return v0
.end method

.method public getCircleScale()F
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->circleScale:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getOutlineColor()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->outlineColor:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->progress:F

    const/high16 v1, -0x3c4c0000

    div-float/2addr v0, v1

    return v0
.end method

.method public getRingColor()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->ringColor:I

    return v0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->indeterminate:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 167
    return-void
.end method

.method public setCenterColor(I)V
    .locals 0
    .param p1, "centerColor"    # I

    .prologue
    .line 303
    iput p1, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->centerColor:I

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/recent/CircularProgressDrawable;->invalidateSelf()V

    .line 305
    return-void
.end method

.method public setCircleScale(F)V
    .locals 0
    .param p1, "circleScale"    # F

    .prologue
    .line 220
    iput p1, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->circleScale:F

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/recent/CircularProgressDrawable;->invalidateSelf()V

    .line 222
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 172
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 0
    .param p1, "indeterminate"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->indeterminate:Z

    .line 248
    return-void
.end method

.method public setOutlineColor(I)V
    .locals 0
    .param p1, "outlineColor"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->outlineColor:I

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/recent/CircularProgressDrawable;->invalidateSelf()V

    .line 285
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->indeterminate:Z

    if-eqz v0, :cond_0

    .line 198
    iput p1, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->progress:F

    .line 202
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/CircularProgressDrawable;->invalidateSelf()V

    .line 203
    return-void

    .line 200
    :cond_0
    const/high16 v0, -0x3c4c0000

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->progress:F

    goto :goto_0
.end method

.method public setRingColor(I)V
    .locals 0
    .param p1, "ringColor"    # I

    .prologue
    .line 293
    iput p1, p0, Lcom/android/systemui/recent/CircularProgressDrawable;->ringColor:I

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/recent/CircularProgressDrawable;->invalidateSelf()V

    .line 295
    return-void
.end method
