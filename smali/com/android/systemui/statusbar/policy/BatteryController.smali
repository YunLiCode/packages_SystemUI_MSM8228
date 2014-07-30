.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# instance fields
.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "action":Ljava/lang/String;
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 71
    const-string v11, "level"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 72
    .local v7, "level":I
    const-string v11, "status"

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 75
    .local v9, "status":I
    const/4 v8, 0x0

    .line 76
    .local v8, "plugged":Z
    packed-switch v9, :pswitch_data_0

    .line 84
    :goto_0
    if-eqz v8, :cond_0

    const v6, 0x7f020142

    .line 87
    .local v6, "icon":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 88
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v1, :cond_1

    .line 89
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 90
    .local v10, "v":Landroid/widget/ImageView;
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 92
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0076

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 80
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v6    # "icon":I
    .end local v10    # "v":Landroid/widget/ImageView;
    :pswitch_0
    const/4 v8, 0x1

    goto :goto_0

    .line 84
    :cond_0
    const v6, 0x7f020139

    goto :goto_1

    .line 95
    .restart local v1    # "N":I
    .restart local v4    # "i":I
    .restart local v6    # "icon":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 96
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_2

    .line 97
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 98
    .local v10, "v":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v12, 0x7f0a001b

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 102
    .end local v10    # "v":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 104
    .local v3, "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    invoke-interface {v3, v7, v8, v9}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZI)V

    goto :goto_4

    .line 107
    .end local v1    # "N":I
    .end local v3    # "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "icon":I
    .end local v7    # "level":I
    .end local v8    # "plugged":Z
    .end local v9    # "status":I
    :cond_3
    return-void

    .line 76
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
