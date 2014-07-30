.class public Lcom/android/systemui/statusbar/CTMSimSignalClusterView;
.super Lcom/android/systemui/statusbar/MSimSignalClusterView;
.source "CTMSimSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;


# instance fields
.field private dataConnected:[Z

.field private dataEnabledsub:[Z

.field private isSimRoam:[Z

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mConnectService:Landroid/net/ConnectivityManager;

.field private mIsAirplaneMode:Z

.field private mMNoSimIconVisible:[Z

.field private mMobileActResourceId:[I

.field mMobileActivity:[Landroid/widget/ImageView;

.field private mMobileActivityId:[I

.field private mMobileDescription:[Ljava/lang/String;

.field mMobileGroup:[Landroid/view/ViewGroup;

.field private mMobileGroupResourceId:[I

.field private mMobileStrengthId:[[I

.field mMobileSub2:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileVisible:Z

.field private mNoSimIconId:[I

.field mNoSimSlot:[Landroid/widget/ImageView;

.field private mNoSimSlotResourceId:[I

.field private mNumPhones:I

.field private mServiceState:[Landroid/telephony/ServiceState;

.field mSignalCDMA1x:Landroid/widget/ImageView;

.field mSignalCDMA1xOnly:Landroid/widget/ImageView;

.field mSignalCDMA3g:Landroid/widget/ImageView;

.field mSignalCDMAboth:Landroid/widget/LinearLayout;

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
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiVisible:Z

    .line 61
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiConnected:Z

    .line 63
    iput v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiStrengthId:I

    iput v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiActivityId:I

    .line 64
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileVisible:Z

    .line 68
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mIsAirplaneMode:Z

    .line 69
    iput v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mAirplaneIconId:I

    .line 94
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileGroupResourceId:[I

    .line 95
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileActResourceId:[I

    .line 96
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNoSimSlotResourceId:[I

    .line 98
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    .line 110
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    .line 111
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    .line 112
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    .line 113
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileActivityId:[I

    .line 114
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    .line 115
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    .line 116
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/telephony/ServiceState;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    .line 117
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMNoSimIconVisible:[Z

    .line 118
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalIconVisible:[Z

    .line 119
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->dataEnabledsub:[Z

    .line 120
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNoSimIconId:[I

    .line 121
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->isSimRoam:[Z

    .line 122
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->dataConnected:[Z

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileActivityId:[I

    aput v3, v1, v0

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNoSimIconId:[I

    aput v3, v1, v0

    .line 127
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMNoSimIconVisible:[Z

    aput-boolean v3, v1, v0

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalIconVisible:[Z

    aput-boolean v3, v1, v0

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v2, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mConnectService:Landroid/net/ConnectivityManager;

    .line 133
    return-void

    .line 94
    :array_0
    .array-data 4
        0x7f07001a
        0x7f070021
    .end array-data

    .line 95
    :array_1
    .array-data 4
        0x7f07001d
        0x7f070032
    .end array-data

    .line 96
    :array_2
    .array-data 4
        0x7f07001e
        0x7f070025
    .end array-data
.end method

.method private apply()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 320
    :goto_1
    const-string v1, "CTMSimSignalCluster"

    const-string v2, "wifi: %s sig=%d act=%d"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_2

    const-string v0, "VISIBLE"

    :goto_2
    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget v4, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiStrengthId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget v4, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiActivityId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 320
    :cond_2
    const-string v0, "GONE"

    goto :goto_2
.end method

.method private applySubscription(I)V
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    const v6, 0x7f0202b9

    const/4 v5, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->apply()V

    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_9

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->dataEnabledsub:[Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->dataConnected:[Z

    aget-boolean v3, v3, p1

    aput-boolean v3, v0, p1

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v3, v0, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->dataEnabledsub:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNoSimIconId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v3, v0, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMNoSimIconVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    if-nez p1, :cond_7

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalCDMA3g:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v3, v3, p1

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalCDMA1x:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v3, v3, p1

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalCDMA1xOnly:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v3, v3, p1

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    iget-object v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalCDMAboth:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v5

    if-eq v0, v6, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalIconVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalCDMA1xOnly:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v5

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v5

    if-ne v0, v6, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalIconVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    :goto_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_a

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 270
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 274
    goto :goto_2

    :cond_5
    move v0, v2

    .line 281
    goto :goto_3

    :cond_6
    move v0, v2

    .line 285
    goto :goto_4

    .line 290
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v3, v3, p1

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    iget-object v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalIconVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_8

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_8
    move v0, v2

    goto :goto_6

    .line 295
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 302
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private convertNoSimIconIdToCT(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 326
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_NO_SIM_CU:[I

    aget v0, v0, p1

    return v0
.end method

.method private convertSignalNullIconIdToCT(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 330
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_NULL_CU:[I

    aget v0, v0, p1

    return v0
.end method

.method private getAcitivyTypeIconId(III)I
    .locals 6
    .param p1, "dataType"    # I
    .param p2, "dataInout"    # I
    .param p3, "subscription"    # I

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, "type":I
    const/4 v0, 0x0

    .line 336
    .local v0, "inout":I
    packed-switch p1, :pswitch_data_0

    .line 353
    :pswitch_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    .line 354
    .local v1, "phoneType":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 355
    const/4 v2, 0x1

    .line 361
    .end local v1    # "phoneType":I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 372
    const/4 v0, 0x0

    .line 376
    :goto_1
    const-string v3, "CTMSimSignalCluster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAcitivyTypeIconId type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " inout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subscription"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TYPE_ACTIVITY:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    return v3

    .line 338
    :pswitch_1
    const/4 v2, 0x0

    .line 339
    goto :goto_0

    .line 341
    :pswitch_2
    const/4 v2, 0x3

    .line 342
    goto :goto_0

    .line 344
    :pswitch_3
    const/4 v2, 0x4

    .line 345
    goto :goto_0

    .line 347
    :pswitch_4
    const/4 v2, 0x2

    .line 348
    goto :goto_0

    .line 350
    :pswitch_5
    const/4 v2, 0x1

    .line 351
    goto :goto_0

    .line 357
    .restart local v1    # "phoneType":I
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 363
    .end local v1    # "phoneType":I
    :sswitch_0
    const/4 v0, 0x1

    .line 364
    goto :goto_1

    .line 366
    :sswitch_1
    const/4 v0, 0x2

    .line 367
    goto :goto_1

    .line 369
    :sswitch_2
    const/4 v0, 0x3

    .line 370
    goto :goto_1

    .line 336
    :pswitch_data_0
    .packed-switch 0x7f02014d
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_3
    .end packed-switch

    .line 361
    :sswitch_data_0
    .sparse-switch
        0x7f0202b5 -> :sswitch_0
        0x7f0202b6 -> :sswitch_2
        0x7f0202bb -> :sswitch_1
    .end sparse-switch
.end method

.method private getSub0SignalId(IZZZ)I
    .locals 10
    .param p1, "originalId"    # I
    .param p2, "hasEvdo"    # Z
    .param p3, "isEvdo"    # Z
    .param p4, "isRoaming"    # Z

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "isGSM":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    .line 387
    .local v1, "radioTech":I
    invoke-static {v1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    .line 389
    const-string v2, "CTMSimSignalCluster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voice radio technology is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isGSM = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v1    # "radioTech":I
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v2, p1

    .line 637
    :goto_0
    return v2

    .line 395
    :sswitch_0
    if-eqz p4, :cond_4

    .line 396
    if-eqz p2, :cond_2

    .line 397
    if-eqz p3, :cond_1

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    .line 400
    :cond_2
    if-eqz v0, :cond_3

    .line 401
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    .line 403
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    .line 407
    :cond_4
    if-eqz p2, :cond_6

    .line 408
    if-eqz p3, :cond_5

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    .line 411
    :cond_6
    if-eqz v0, :cond_7

    .line 412
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    .line 414
    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    .line 419
    :sswitch_1
    if-eqz p4, :cond_b

    .line 420
    if-eqz p2, :cond_9

    .line 421
    if-eqz p3, :cond_8

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto :goto_0

    :cond_8
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto :goto_0

    .line 424
    :cond_9
    if-eqz v0, :cond_a

    .line 425
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto :goto_0

    .line 427
    :cond_a
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto :goto_0

    .line 431
    :cond_b
    if-eqz p2, :cond_d

    .line 432
    if-eqz p3, :cond_c

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto :goto_0

    :cond_c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto :goto_0

    .line 435
    :cond_d
    if-eqz v0, :cond_e

    .line 436
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto/16 :goto_0

    .line 438
    :cond_e
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto/16 :goto_0

    .line 443
    :sswitch_2
    if-eqz p4, :cond_12

    .line 444
    if-eqz p2, :cond_10

    .line 445
    if-eqz p3, :cond_f

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    :cond_f
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    .line 448
    :cond_10
    if-eqz v0, :cond_11

    .line 449
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    .line 451
    :cond_11
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    .line 455
    :cond_12
    if-eqz p2, :cond_14

    .line 456
    if-eqz p3, :cond_13

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    :cond_13
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    .line 459
    :cond_14
    if-eqz v0, :cond_15

    .line 460
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    .line 462
    :cond_15
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    .line 467
    :sswitch_3
    if-eqz p4, :cond_19

    .line 468
    if-eqz p2, :cond_17

    .line 469
    if-eqz p3, :cond_16

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    :cond_16
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    .line 472
    :cond_17
    if-eqz v0, :cond_18

    .line 473
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    .line 475
    :cond_18
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    .line 479
    :cond_19
    if-eqz p2, :cond_1b

    .line 480
    if-eqz p3, :cond_1a

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    :cond_1a
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    .line 483
    :cond_1b
    if-eqz v0, :cond_1c

    .line 484
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    .line 486
    :cond_1c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    .line 491
    :sswitch_4
    if-eqz p4, :cond_20

    .line 492
    if-eqz p2, :cond_1e

    .line 493
    if-eqz p3, :cond_1d

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    :cond_1d
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    .line 496
    :cond_1e
    if-eqz v0, :cond_1f

    .line 497
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    .line 499
    :cond_1f
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    .line 503
    :cond_20
    if-eqz p2, :cond_22

    .line 504
    if-eqz p3, :cond_21

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    :cond_21
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    .line 507
    :cond_22
    if-eqz v0, :cond_23

    .line 508
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    .line 510
    :cond_23
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    .line 515
    :sswitch_5
    if-eqz p4, :cond_27

    .line 516
    if-eqz p2, :cond_25

    .line 517
    if-eqz p3, :cond_24

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    :cond_24
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    .line 520
    :cond_25
    if-eqz v0, :cond_26

    .line 521
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    .line 523
    :cond_26
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    .line 527
    :cond_27
    if-eqz p2, :cond_29

    .line 528
    if-eqz p3, :cond_28

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    :cond_28
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    .line 531
    :cond_29
    if-eqz v0, :cond_2a

    .line 532
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    .line 534
    :cond_2a
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    .line 539
    :sswitch_6
    if-eqz p4, :cond_2e

    .line 540
    if-eqz p2, :cond_2c

    .line 541
    if-eqz p3, :cond_2b

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    :cond_2b
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    .line 544
    :cond_2c
    if-eqz v0, :cond_2d

    .line 545
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    .line 547
    :cond_2d
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    .line 551
    :cond_2e
    if-eqz p2, :cond_30

    .line 552
    if-eqz p3, :cond_2f

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    :cond_2f
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    .line 555
    :cond_30
    if-eqz v0, :cond_31

    .line 556
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    .line 558
    :cond_31
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    .line 563
    :sswitch_7
    if-eqz p4, :cond_35

    .line 564
    if-eqz p2, :cond_33

    .line 565
    if-eqz p3, :cond_32

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    :cond_32
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    .line 568
    :cond_33
    if-eqz v0, :cond_34

    .line 569
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    .line 571
    :cond_34
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    .line 575
    :cond_35
    if-eqz p2, :cond_37

    .line 576
    if-eqz p3, :cond_36

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    :cond_36
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    .line 579
    :cond_37
    if-eqz v0, :cond_38

    .line 580
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    .line 582
    :cond_38
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    .line 587
    :sswitch_8
    if-eqz p4, :cond_3c

    .line 588
    if-eqz p2, :cond_3a

    .line 589
    if-eqz p3, :cond_39

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    :cond_39
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    .line 592
    :cond_3a
    if-eqz v0, :cond_3b

    .line 593
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    .line 595
    :cond_3b
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    .line 599
    :cond_3c
    if-eqz p2, :cond_3e

    .line 600
    if-eqz p3, :cond_3d

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    :cond_3d
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    .line 603
    :cond_3e
    if-eqz v0, :cond_3f

    .line 604
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    .line 606
    :cond_3f
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    .line 611
    :sswitch_9
    if-eqz p4, :cond_43

    .line 612
    if-eqz p2, :cond_41

    .line 613
    if-eqz p3, :cond_40

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    :cond_40
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    .line 616
    :cond_41
    if-eqz v0, :cond_42

    .line 617
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    .line 619
    :cond_42
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    .line 623
    :cond_43
    if-eqz p2, :cond_45

    .line 624
    if-eqz p3, :cond_44

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    :cond_44
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    .line 627
    :cond_45
    if-eqz v0, :cond_46

    .line 628
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    .line 630
    :cond_46
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    .line 635
    :sswitch_a
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->convertSignalNullIconIdToCT(I)I

    move-result v2

    goto/16 :goto_0

    .line 393
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

.method private getSub1SignalId(IZ)I
    .locals 6
    .param p1, "originalId"    # I
    .param p2, "isRoaming"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 642
    sparse-switch p1, :sswitch_data_0

    .line 696
    .end local p1    # "originalId":I
    :goto_0
    return p1

    .line 644
    .restart local p1    # "originalId":I
    :sswitch_0
    if-eqz p2, :cond_0

    .line 645
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v2

    goto :goto_0

    .line 647
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v2

    goto :goto_0

    .line 649
    :sswitch_1
    if-eqz p2, :cond_1

    .line 650
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v1

    goto :goto_0

    .line 652
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v1

    goto :goto_0

    .line 654
    :sswitch_2
    if-eqz p2, :cond_2

    .line 655
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v3

    goto :goto_0

    .line 657
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v3

    goto :goto_0

    .line 659
    :sswitch_3
    if-eqz p2, :cond_3

    .line 660
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v4

    goto :goto_0

    .line 662
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v4

    goto :goto_0

    .line 664
    :sswitch_4
    if-eqz p2, :cond_4

    .line 665
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v5

    goto :goto_0

    .line 667
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v5

    goto :goto_0

    .line 669
    :sswitch_5
    if-eqz p2, :cond_5

    .line 670
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v2

    goto :goto_0

    .line 672
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v2

    goto :goto_0

    .line 674
    :sswitch_6
    if-eqz p2, :cond_6

    .line 675
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v1

    goto :goto_0

    .line 677
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v1

    goto :goto_0

    .line 679
    :sswitch_7
    if-eqz p2, :cond_7

    .line 680
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v3

    goto :goto_0

    .line 682
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v3

    goto :goto_0

    .line 684
    :sswitch_8
    if-eqz p2, :cond_8

    .line 685
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v4

    goto/16 :goto_0

    .line 687
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v4

    goto/16 :goto_0

    .line 689
    :sswitch_9
    if-eqz p2, :cond_9

    .line 690
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v5

    goto/16 :goto_0

    .line 692
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v5

    goto/16 :goto_0

    .line 694
    :sswitch_a
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->convertSignalNullIconIdToCT(I)I

    move-result p1

    goto/16 :goto_0

    .line 642
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


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->onAttachedToWindow()V

    .line 146
    const v1, 0x7f070015

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 147
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 148
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileGroupResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    .line 152
    iget-object v2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileActResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 153
    iget-object v2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNoSimSlotResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalCDMAboth:Landroid/widget/LinearLayout;

    .line 157
    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalCDMA3g:Landroid/widget/ImageView;

    .line 158
    const v1, 0x7f070030

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalCDMA1x:Landroid/widget/ImageView;

    .line 159
    const v1, 0x7f070031

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalCDMA1xOnly:Landroid/widget/ImageView;

    .line 160
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    .line 162
    const v1, 0x7f070018

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSpacer:Landroid/view/View;

    .line 163
    const v1, 0x7f07002d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->apply()V

    .line 166
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iput-object v2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 171
    iput-object v2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 172
    iput-object v2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 174
    iput-object v2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalCDMAboth:Landroid/widget/LinearLayout;

    .line 175
    iput-object v2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalCDMA3g:Landroid/widget/ImageView;

    .line 176
    iput-object v2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalCDMA1x:Landroid/widget/ImageView;

    .line 177
    iput-object v2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalCDMA1xOnly:Landroid/widget/ImageView;

    .line 178
    iput-object v2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->onDetachedFromWindow()V

    .line 187
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 1
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mIsAirplaneMode:Z

    .line 254
    iput p2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mAirplaneIconId:I

    .line 255
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->applySubscription(I)V

    .line 256
    return-void
.end method

.method public setMobileDataIndicators(Z[IIILjava/lang/String;Ljava/lang/String;IILandroid/telephony/ServiceState;ZZ)V
    .locals 5
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
    .line 207
    const-string v1, "CTMSimSignalCluster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataIndicators subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileVisible:Z

    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->isSimRoam:[Z

    aput-boolean p10, v1, p8

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->dataConnected:[Z

    aput-boolean p11, v1, p8

    .line 212
    const/4 v1, 0x1

    if-ne p8, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v1, v1, p8

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, p2, v3

    invoke-direct {p0, v3, p10}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->getSub1SignalId(IZ)I

    move-result v3

    aput v3, v1, v2

    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v1, v1, p8

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 225
    :goto_0
    const-string v1, "CTMSimSignalCluster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataIndicators mMobileStrengthId[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v3, v3, p8

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMobileStrengthId[1]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v3, v3, p8

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileActivityId:[I

    invoke-direct {p0, p4, p3, p8}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->getAcitivyTypeIconId(III)I

    move-result v2

    aput v2, v1, p8

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aput-object p5, v1, p8

    .line 233
    iput-object p6, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mNoSimIconId:[I

    invoke-direct {p0, p8}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->convertNoSimIconIdToCT(I)I

    move-result v2

    aput v2, v1, p8

    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p9, v1, p8

    .line 237
    if-eqz p7, :cond_3

    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMNoSimIconVisible:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p8

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalIconVisible:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p8

    .line 246
    :goto_1
    const-string v1, "CTMSimSignalCluster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetMobileDataIndicators MNoSimIconVisible "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMNoSimIconVisible:[Z

    aget-boolean v3, v3, p8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0, p8}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->applySubscription(I)V

    .line 250
    return-void

    .line 216
    :cond_0
    const/4 v1, 0x1

    aget v1, p2, v1

    const v2, 0x7f0201c6

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    aget v1, p2, v1

    const v2, 0x7f0201db

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    aget v1, p2, v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 219
    .local v0, "hasEvdo":Z
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v1, v1, p8

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, p2, v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4, p10}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->getSub0SignalId(IZZZ)I

    move-result v3

    aput v3, v1, v2

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v2, v1, p8

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v4, 0x1

    invoke-direct {p0, v1, v0, v4, p10}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->getSub0SignalId(IZZZ)I

    move-result v1

    :goto_3
    aput v1, v2, v3

    goto/16 :goto_0

    .line 216
    .end local v0    # "hasEvdo":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 221
    .restart local v0    # "hasEvdo":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 241
    .end local v0    # "hasEvdo":Z
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mMNoSimIconVisible:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p8

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mSignalIconVisible:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p8

    goto :goto_1
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V
    .locals 3
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    .prologue
    .line 137
    const-string v0, "CTMSimSignalCluster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSimNetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    .line 140
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
    .line 192
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiVisible:Z

    .line 193
    iput p2, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiStrengthId:I

    .line 194
    iput p3, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiActivityId:I

    .line 195
    iput-object p4, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 196
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->mWifiConnected:Z

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CTMSimSignalClusterView;->apply()V

    .line 199
    return-void
.end method
