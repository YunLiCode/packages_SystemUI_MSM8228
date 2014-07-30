.class public Lcom/android/systemui/statusbar/CUMSimSignalClusterView;
.super Lcom/android/systemui/statusbar/MSimSignalClusterView;
.source "CUMSimSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;


# instance fields
.field private dataConnected:[Z

.field private dataEnabledsub:[Z

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mIsAirplaneMode:Z

.field private mMNoSimIconVisible:[Z

.field mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

.field mMobile:Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:[I

.field mMobileActivitySub2:Landroid/widget/ImageView;

.field private mMobileDescription:[Ljava/lang/String;

.field mMobileGroup:Landroid/view/ViewGroup;

.field mMobileGroupSub2:Landroid/view/ViewGroup;

.field private mMobileStrengthId:[I

.field mMobileSub2:Landroid/widget/ImageView;

.field mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:[I

.field mMobileTypeSub2:Landroid/widget/ImageView;

.field private mMobileVisible:Z

.field private mNoSimIconId:[I

.field mNoSimSlot:Landroid/widget/ImageView;

.field mNoSimSlotSub2:Landroid/widget/ImageView;

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalIconVisible:[Z

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
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiVisible:Z

    .line 63
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiConnected:Z

    .line 65
    iput v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiStrengthId:I

    iput v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiActivityId:I

    .line 66
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileVisible:Z

    .line 71
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mIsAirplaneMode:Z

    .line 72
    iput v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mAirplaneIconId:I

    .line 100
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    .line 101
    .local v1, "numPhones":I
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileStrengthId:[I

    .line 102
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    .line 103
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileTypeId:[I

    .line 104
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileActivityId:[I

    .line 105
    new-array v2, v1, [Landroid/telephony/ServiceState;

    iput-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    .line 106
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mNoSimIconId:[I

    .line 107
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMNoSimIconVisible:[Z

    .line 108
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mSignalIconVisible:[Z

    .line 111
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->dataEnabledsub:[Z

    .line 112
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->dataConnected:[Z

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileStrengthId:[I

    aput v4, v2, v0

    .line 117
    iget-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileTypeId:[I

    aput v4, v2, v0

    .line 118
    iget-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileActivityId:[I

    aput v4, v2, v0

    .line 119
    iget-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mNoSimIconId:[I

    aput v4, v2, v0

    .line 120
    iget-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMNoSimIconVisible:[Z

    aput-boolean v4, v2, v0

    .line 121
    iget-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mSignalIconVisible:[Z

    aput-boolean v4, v2, v0

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v3, v2, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method private apply()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private applySubscription(I)V
    .locals 6
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileGroupSub2:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->apply()V

    .line 233
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileVisible:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v1, :cond_c

    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->dataEnabledsub:[Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->dataConnected:[Z

    aget-boolean v4, v4, p1

    aput-boolean v4, v1, p1

    .line 236
    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->STATUSBAR_STYLE:I

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 238
    .local v0, "useDefaultStyle":Z
    :goto_1
    if-nez p1, :cond_7

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileStrengthId:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mSignalIconVisible:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileActivityId:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileTypeId:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiConnected:Z

    if-nez v1, :cond_5

    :cond_2
    if-eqz v0, :cond_5

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mNoSimIconId:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMNoSimIconVisible:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    .end local v0    # "useDefaultStyle":Z
    :goto_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v1, :cond_e

    .line 276
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileGroupSub2:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    :goto_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileVisible:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v1, :cond_f

    .line 285
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mSpacer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 236
    goto/16 :goto_1

    .restart local v0    # "useDefaultStyle":Z
    :cond_4
    move v1, v3

    .line 241
    goto/16 :goto_2

    :cond_5
    move v1, v3

    .line 247
    goto :goto_3

    :cond_6
    move v1, v3

    .line 250
    goto :goto_4

    .line 253
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileGroupSub2:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileStrengthId:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mSignalIconVisible:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_7
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileGroupSub2:Landroid/view/ViewGroup;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileActivitySub2:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileActivityId:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileTypeSub2:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileTypeId:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileTypeSub2:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiConnected:Z

    if-nez v1, :cond_a

    :cond_8
    if-eqz v0, :cond_a

    move v1, v2

    :goto_8
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mNoSimSlotSub2:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mNoSimIconId:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object v4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mNoSimSlotSub2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMNoSimIconVisible:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_9
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_9
    move v1, v3

    .line 255
    goto :goto_7

    :cond_a
    move v1, v3

    .line 262
    goto :goto_8

    :cond_b
    move v1, v3

    .line 265
    goto :goto_9

    .line 269
    .end local v0    # "useDefaultStyle":Z
    :cond_c
    if-nez p1, :cond_d

    .line 270
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 272
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileGroupSub2:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 281
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 287
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private convertNoSimIconIdToCU(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 363
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_NO_SIM_CU:[I

    aget v0, v0, p1

    return v0
.end method

.method private convertSignalNullIconIdToCU(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 367
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_NULL_CU:[I

    aget v0, v0, p1

    return v0
.end method

.method private convertStrengthIconIdToCU(II)I
    .locals 2
    .param p1, "orignalId"    # I
    .param p2, "subscription"    # I

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, "level":I
    const/4 v0, 0x0

    .line 313
    .local v0, "inetCondition":I
    sparse-switch p1, :sswitch_data_0

    .line 359
    .end local p1    # "orignalId":I
    :goto_0
    return p1

    .line 315
    .restart local p1    # "orignalId":I
    :sswitch_0
    const/4 v1, 0x0

    .line 316
    const/4 v0, 0x0

    .line 359
    :goto_1
    invoke-direct {p0, p2, v0, v1}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->getCUSignalStrenthIconId(III)I

    move-result p1

    goto :goto_0

    .line 319
    :sswitch_1
    const/4 v1, 0x1

    .line 320
    const/4 v0, 0x0

    .line 321
    goto :goto_1

    .line 323
    :sswitch_2
    const/4 v1, 0x2

    .line 324
    const/4 v0, 0x0

    .line 325
    goto :goto_1

    .line 327
    :sswitch_3
    const/4 v1, 0x3

    .line 328
    const/4 v0, 0x0

    .line 329
    goto :goto_1

    .line 331
    :sswitch_4
    const/4 v1, 0x4

    .line 332
    const/4 v0, 0x0

    .line 333
    goto :goto_1

    .line 335
    :sswitch_5
    const/4 v1, 0x0

    .line 336
    const/4 v0, 0x1

    .line 337
    goto :goto_1

    .line 339
    :sswitch_6
    const/4 v1, 0x1

    .line 340
    const/4 v0, 0x1

    .line 341
    goto :goto_1

    .line 343
    :sswitch_7
    const/4 v1, 0x2

    .line 344
    const/4 v0, 0x1

    .line 345
    goto :goto_1

    .line 347
    :sswitch_8
    const/4 v1, 0x3

    .line 348
    const/4 v0, 0x1

    .line 349
    goto :goto_1

    .line 351
    :sswitch_9
    const/4 v1, 0x4

    .line 352
    const/4 v0, 0x1

    .line 353
    goto :goto_1

    .line 355
    :sswitch_a
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->convertSignalNullIconIdToCU(I)I

    move-result p1

    goto :goto_0

    .line 313
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0201c6 -> :sswitch_0
        0x7f0201db -> :sswitch_5
        0x7f0201f0 -> :sswitch_1
        0x7f020205 -> :sswitch_6
        0x7f02021e -> :sswitch_2
        0x7f020233 -> :sswitch_7
        0x7f02024c -> :sswitch_3
        0x7f020261 -> :sswitch_8
        0x7f02027a -> :sswitch_4
        0x7f02028f -> :sswitch_9
        0x7f0202b7 -> :sswitch_a
    .end sparse-switch
.end method

.method private getCUSignalStrenthIconId(III)I
    .locals 2
    .param p1, "subscription"    # I
    .param p2, "inetCondition"    # I
    .param p3, "level"    # I

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 374
    const/4 v1, 0x0

    .line 401
    :goto_0
    return v1

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 378
    .local v0, "radioTechnology":I
    if-nez v0, :cond_1

    .line 379
    iget-object v1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    .line 386
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 401
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_IMAGES_G:[[[I

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    aget v1, v1, p3

    goto :goto_0

    .line 389
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_IMAGES_G:[[[I

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    aget v1, v1, p3

    goto :goto_0

    .line 393
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_IMAGES_3G:[[[I

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    aget v1, v1, p3

    goto :goto_0

    .line 397
    :pswitch_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_IMAGES_H:[[[I

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    aget v1, v1, p3

    goto :goto_0

    .line 399
    :pswitch_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_IMAGES_HP:[[[I

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    aget v1, v1, p3

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->onAttachedToWindow()V

    .line 137
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 138
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 140
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 141
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 143
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 144
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileGroupSub2:Landroid/view/ViewGroup;

    .line 146
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    .line 147
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileActivitySub2:Landroid/widget/ImageView;

    .line 148
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileTypeSub2:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mNoSimSlotSub2:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mSpacer:Landroid/view/View;

    .line 151
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->apply()V

    .line 154
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 159
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 160
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 161
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 162
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 163
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 164
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 165
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mSpacer:Landroid/view/View;

    .line 166
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 167
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileGroupSub2:Landroid/view/ViewGroup;

    .line 168
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    .line 169
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileActivitySub2:Landroid/widget/ImageView;

    .line 170
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileTypeSub2:Landroid/widget/ImageView;

    .line 171
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mNoSimSlotSub2:Landroid/widget/ImageView;

    .line 172
    iput-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 173
    invoke-super {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->onDetachedFromWindow()V

    .line 174
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 1
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mIsAirplaneMode:Z

    .line 222
    iput p2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mAirplaneIconId:I

    .line 223
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->applySubscription(I)V

    .line 224
    return-void
.end method

.method public setMobileDataIndicators(Z[IIILjava/lang/String;Ljava/lang/String;IILandroid/telephony/ServiceState;ZZ)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # [I
    .param p3, "activityIcon"    # I
    .param p4, "typeIcon"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;
    .param p6, "typeContentDescription"    # Ljava/lang/String;
    .param p7, "noSimIcon"    # I
    .param p8, "subscription"    # I
    .param p9, "simServiceState"    # Landroid/telephony/ServiceState;
    .param p10, "isRoaming"    # Z
    .param p11, "dataConnect"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileVisible:Z

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileStrengthId:[I

    aget v1, p2, v2

    invoke-direct {p0, v1, p8}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->convertStrengthIconIdToCU(II)I

    move-result v1

    aput v1, v0, p8

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileActivityId:[I

    aput p3, v0, p8

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileTypeId:[I

    aput p4, v0, p8

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aput-object p5, v0, p8

    .line 198
    iput-object p6, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mNoSimIconId:[I

    invoke-direct {p0, p8}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->convertNoSimIconIdToCU(I)I

    move-result v1

    aput v1, v0, p8

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p9, v0, p8

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->dataConnected:[Z

    aput-boolean p11, v0, p8

    .line 205
    if-eqz p7, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMNoSimIconVisible:[Z

    aput-boolean v3, v0, p8

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mSignalIconVisible:[Z

    aput-boolean v2, v0, p8

    .line 217
    :goto_0
    invoke-direct {p0, p8}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->applySubscription(I)V

    .line 218
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMNoSimIconVisible:[Z

    aput-boolean v2, v0, p8

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mSignalIconVisible:[Z

    aput-boolean v3, v0, p8

    goto :goto_0
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V
    .locals 0
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    .line 131
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
    .line 179
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiVisible:Z

    .line 180
    iput p2, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiStrengthId:I

    .line 181
    iput p3, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiActivityId:I

    .line 182
    iput-object p4, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 183
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->mWifiConnected:Z

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CUMSimSignalClusterView;->apply()V

    .line 186
    return-void
.end method
