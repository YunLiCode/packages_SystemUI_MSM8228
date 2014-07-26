.class public abstract Lcom/android/systemui/statusbar/util/StateTracker;
.super Ljava/lang/Object;
.source "StateTracker.java"


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field protected mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;

.field protected mIsUserSwitching:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    .line 32
    iput-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 33
    iput-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public abstract getDisabledResource()I
.end method

.method public abstract getEnabledResource()I
.end method

.method public abstract getImageButtonView()Landroid/widget/ImageView;
.end method

.method public abstract getIndicatorView()Landroid/widget/ImageView;
.end method

.method public getInterMedateResource()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method public getSwitchingGifView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTileView()Landroid/view/View;
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 271
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    if-eqz v1, :cond_0

    .line 287
    :goto_0
    return v0

    .line 281
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/util/StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 283
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 285
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isClickable()Z
    .locals 3

    .prologue
    .line 46
    const-string v0, "StateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsUserSwitching is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method public final setCurrentState(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newState"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 218
    const-string v1, "StateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentState: newState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    .line 220
    .local v0, "wasInTransition":Z
    packed-switch p2, :pswitch_data_0

    .line 241
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 242
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 243
    const-string v1, "StateTracker"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    const-string v1, "StateTracker"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 254
    :cond_1
    return-void

    .line 222
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    .line 223
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 226
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    .line 227
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 230
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    .line 231
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 234
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    .line 235
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 248
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/util/StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setImageViewResources(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 139
    const-string v3, "StateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "setImageViewResources state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/util/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getIndicatorView()Landroid/widget/ImageView;

    move-result-object v0

    .line 144
    .local v0, "indicatorView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/util/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getTileView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->isClickable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getImageButtonView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getImageButtonView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getDisabledResource()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getSwitchingGifView()Landroid/widget/ImageView;

    move-result-object v2

    .line 154
    .local v2, "mtkImageView":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 157
    .local v1, "mFrameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 163
    .end local v1    # "mFrameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "mtkImageView":Landroid/widget/ImageView;
    :pswitch_1
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getTileView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->isClickable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getImageButtonView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getImageButtonView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getEnabledResource()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getSwitchingGifView()Landroid/widget/ImageView;

    move-result-object v2

    .line 171
    .restart local v2    # "mtkImageView":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 174
    .restart local v1    # "mFrameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 185
    .end local v1    # "mFrameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "mtkImageView":Landroid/widget/ImageView;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getTileView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getSwitchingGifView()Landroid/widget/ImageView;

    move-result-object v2

    .line 187
    .restart local v2    # "mtkImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getInterMedateResource()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getImageButtonView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    :cond_3
    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getInterMedateResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 196
    .restart local v1    # "mFrameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 64
    const-string v3, "ClickEvent"

    const-string v4, "toggleState"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getTileView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->isClickable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/util/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 68
    .local v0, "currentState":I
    const/4 v1, 0x0

    .line 69
    .local v1, "newState":Z
    packed-switch v0, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 85
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    if-eqz v3, :cond_2

    .line 90
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 95
    :goto_1
    return-void

    .line 71
    :pswitch_0
    const/4 v1, 0x0

    .line 72
    goto :goto_0

    .line 74
    :pswitch_1
    const/4 v1, 0x1

    .line 75
    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 92
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    .line 93
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/util/StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 69
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
