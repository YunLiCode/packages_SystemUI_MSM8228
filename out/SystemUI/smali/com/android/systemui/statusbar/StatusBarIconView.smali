.class public Lcom/android/systemui/statusbar/StatusBarIconView;
.super Lcom/android/systemui/statusbar/AnimatedImageView;
.source "StatusBarIconView.java"


# instance fields
.field private mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mNotification:Landroid/app/Notification;

.field private mNumberBackground:Landroid/graphics/drawable/Drawable;

.field private mNumberPain:Landroid/graphics/Paint;

.field private mNumberText:Ljava/lang/String;

.field private mNumberX:I

.field private mNumberY:I

.field private mSlot:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 83
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f0c0017

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 84
    .local v2, "outerBounds":I
    const v5, 0x7f0c001c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 85
    .local v1, "imageBounds":I
    int-to-float v5, v1

    int-to-float v6, v2

    div-float v4, v5, v6

    .line 86
    .local v4, "scale":F
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleX(F)V

    .line 87
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleY(F)V

    .line 88
    const v5, 0x7f0c001d

    invoke-virtual {v3, v5, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 89
    .local v0, "alpha":F
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setAlpha(F)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v7, 0x1

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 57
    .local v3, "res":Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    .line 58
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    .line 59
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 60
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    const v6, 0x7f0202f1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iput-object p3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/app/Notification;

    .line 63
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Landroid/app/Notification;)V

    .line 67
    if-eqz p3, :cond_0

    .line 68
    const v5, 0x7f0c0017

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 69
    .local v2, "outerBounds":I
    const v5, 0x7f0c001c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 70
    .local v1, "imageBounds":I
    int-to-float v5, v1

    int-to-float v6, v2

    div-float v4, v5, v6

    .line 71
    .local v4, "scale":F
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleX(F)V

    .line 72
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleY(F)V

    .line 73
    const v5, 0x7f0c001d

    invoke-virtual {v3, v5, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 74
    .local v0, "alpha":F
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setAlpha(F)V

    .line 77
    .end local v0    # "alpha":F
    .end local v1    # "imageBounds":I
    .end local v2    # "outerBounds":I
    .end local v4    # "scale":F
    :cond_0
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    return-void
.end method

.method public static getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v5, 0x0

    .line 177
    const/4 v2, 0x0

    .line 179
    .local v2, "r":Landroid/content/res/Resources;
    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 181
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 182
    .local v3, "userId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 183
    const/4 v3, 0x0

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 195
    .end local v3    # "userId":I
    :goto_0
    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    if-nez v4, :cond_2

    move-object v4, v5

    .line 207
    :goto_1
    return-object v4

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "StatusBarIconView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Icon package not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 189
    goto :goto_1

    .line 192
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_0

    .line 200
    :cond_2
    :try_start_1
    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 201
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v6, "StatusBarIconView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Icon not found in "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 207
    goto :goto_1

    .line 202
    :cond_3
    const-string v4, "<system>"

    goto :goto_2
.end method

.method private getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private setContentDescription(Landroid/app/Notification;)V
    .locals 2
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 283
    .local v0, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 287
    .end local v0    # "tickerText":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method private static streq(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 93
    if-ne p0, p1, :cond_1

    .line 94
    const/4 v0, 0x1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_0

    .line 99
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_0

    .line 102
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateDrawable(Z)Z
    .locals 4
    .param p1, "withClear"    # Z

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 154
    const-string v1, "StatusBarIconView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No icon for slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v1, 0x0

    .line 161
    :goto_0
    return v1

    .line 157
    :cond_0
    if-eqz p1, :cond_1

    .line 158
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected debug(I)V
    .locals 3
    .param p1, "depth"    # I

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->debug(I)V

    .line 243
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 238
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/app/Notification;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 220
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AnimatedImageView;->onSizeChanged(IIII)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    .line 228
    :cond_0
    return-void
.end method

.method placeNumber()V
    .locals 13

    .prologue
    .line 249
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 251
    .local v7, "tooBig":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v10, v10, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-le v10, v7, :cond_2

    .line 252
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040017

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "str":Ljava/lang/String;
    :goto_0
    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v9

    .line 261
    .local v9, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v3

    .line 262
    .local v3, "h":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 263
    .local v4, "r":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v5, v11, v12, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 264
    iget v10, v4, Landroid/graphics/Rect;->right:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    sub-int v8, v10, v11

    .line 265
    .local v8, "tw":I
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    iget v11, v4, Landroid/graphics/Rect;->top:I

    sub-int v6, v10, v11

    .line 266
    .local v6, "th":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 267
    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v8

    iget v11, v4, Landroid/graphics/Rect;->right:I

    add-int v1, v10, v11

    .line 268
    .local v1, "dw":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 269
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 271
    :cond_0
    iget v10, v4, Landroid/graphics/Rect;->right:I

    sub-int v10, v9, v10

    iget v11, v4, Landroid/graphics/Rect;->right:I

    sub-int v11, v1, v11

    iget v12, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    .line 272
    iget v10, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    add-int v0, v10, v11

    .line 273
    .local v0, "dh":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    if-ge v0, v10, :cond_1

    .line 274
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 276
    :cond_1
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v3, v10

    iget v11, v4, Landroid/graphics/Rect;->top:I

    sub-int v11, v0, v11

    sub-int/2addr v11, v6

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    .line 277
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    sub-int v11, v9, v1

    sub-int v12, v3, v0

    invoke-virtual {v10, v11, v12, v9, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 278
    return-void

    .line 255
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v3    # "h":I
    .end local v4    # "r":Landroid/graphics/Rect;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "th":I
    .end local v8    # "tw":I
    .end local v9    # "w":I
    :cond_2
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 256
    .local v2, "f":Ljava/text/NumberFormat;
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v10, v10, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "str":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public set(Lcom/android/internal/statusbar/StatusBarIcon;)Z
    .locals 9
    .param p1, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 109
    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v6, v6, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->streq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v6, v6, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    iget v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    if-ne v6, v7, :cond_0

    move v0, v4

    .line 112
    .local v0, "iconEquals":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v6, v6, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    iget v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    if-ne v6, v7, :cond_1

    move v1, v4

    .line 114
    .local v1, "levelEquals":Z
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-boolean v6, v6, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iget-boolean v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-ne v6, v7, :cond_2

    move v3, v4

    .line 116
    .local v3, "visibilityEquals":Z
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v6, v6, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iget v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-ne v6, v7, :cond_3

    move v2, v4

    .line 118
    .local v2, "numberEquals":Z
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 119
    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    if-nez v0, :cond_4

    .line 121
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    move-result v6

    if-nez v6, :cond_4

    .line 144
    :goto_4
    return v5

    .end local v0    # "iconEquals":Z
    .end local v1    # "levelEquals":Z
    .end local v2    # "numberEquals":Z
    .end local v3    # "visibilityEquals":Z
    :cond_0
    move v0, v5

    .line 109
    goto :goto_0

    .restart local v0    # "iconEquals":Z
    :cond_1
    move v1, v5

    .line 112
    goto :goto_1

    .restart local v1    # "levelEquals":Z
    :cond_2
    move v3, v5

    .line 114
    goto :goto_2

    .restart local v3    # "visibilityEquals":Z
    :cond_3
    move v2, v5

    .line 116
    goto :goto_3

    .line 123
    .restart local v2    # "numberEquals":Z
    :cond_4
    if-nez v1, :cond_5

    .line 124
    iget v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageLevel(I)V

    .line 127
    :cond_5
    if-nez v2, :cond_7

    .line 128
    iget v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-lez v6, :cond_9

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 130
    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_6

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020021

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    .line 134
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    .line 139
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    .line 141
    :cond_7
    if-nez v3, :cond_8

    .line 142
    iget-boolean v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v6, :cond_a

    :goto_6
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    :cond_8
    move v5, v4

    .line 144
    goto :goto_4

    .line 136
    :cond_9
    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    .line 137
    iput-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    goto :goto_5

    .line 142
    :cond_a
    const/16 v5, 0x8

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarIconView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawable()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    .line 149
    return-void
.end method
