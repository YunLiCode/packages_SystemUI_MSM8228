.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mIsAirplaneMode:Z

.field mMobile:Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:I

.field private mMobileDescription:Ljava/lang/String;

.field mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileStrengthId:I

.field mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNoSimIconId:I

.field mNoSimSlot:Landroid/widget/ImageView;

.field mSpacer:Landroid/view/View;

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiConnected:Z

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiConnected:Z

    .line 49
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 51
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 52
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 54
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 71
    return-void
.end method

.method private apply()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x8

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 239
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v2, :cond_4

    .line 192
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 206
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v2, :cond_5

    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 213
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v2, :cond_6

    .line 219
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    :goto_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    if-eqz v2, :cond_7

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiConnected:Z

    if-nez v3, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 198
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 215
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 222
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 229
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 82
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 83
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 86
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    .line 91
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 94
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 99
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 100
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 101
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 102
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 103
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 104
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 105
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 106
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    .line 107
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 109
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 110
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 185
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 143
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 146
    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "typeIcon"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;
    .param p6, "typeContentDescription"    # Ljava/lang/String;
    .param p7, "noSimIcon"    # I

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 130
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 131
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 132
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    .line 133
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    .line 134
    iput-object p6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 135
    iput p7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 138
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 76
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;Z)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;
    .param p5, "wifiConnected"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 116
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 117
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 118
    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 119
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiConnected:Z

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 122
    return-void
.end method
