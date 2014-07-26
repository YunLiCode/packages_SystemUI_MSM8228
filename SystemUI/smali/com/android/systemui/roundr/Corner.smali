.class public Lcom/android/systemui/roundr/Corner;
.super Lwei/mark/standout/StandOutWindow;
.source "Corner.java"


# static fields
.field public static final ACTION_SETTINGS:Ljava/lang/String; = "SETTINGS"

.field public static final BCAST_CONFIGCHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field public static final UPDATE_CODE:I = 0x2

.field public static running:Z

.field public static final wildcard:I


# instance fields
.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/roundr/Corner;->running:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lwei/mark/standout/StandOutWindow;-><init>()V

    return-void
.end method

.method private pxFromDp(D)I
    .locals 2
    .param p1, "dp"    # D

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/roundr/Corner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public createAndAttachView(ILandroid/widget/FrameLayout;)V
    .locals 4
    .param p1, "corner"    # I
    .param p2, "frame"    # Landroid/widget/FrameLayout;

    .prologue
    .line 42
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/systemui/roundr/Corner;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 43
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04003d

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0700ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 45
    .local v1, "v":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/roundr/Corner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02036c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    packed-switch p1, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 48
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/roundr/Corner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02036d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/roundr/Corner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020362

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 54
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/roundr/Corner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020363

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAppIcon()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlags(I)I
    .locals 2
    .param p1, "corner"    # I

    .prologue
    .line 81
    invoke-super {p0, p1}, Lwei/mark/standout/StandOutWindow;->getFlags(I)I

    move-result v0

    sget v1, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_FOCUSABLE_DISABLE:I

    or-int/2addr v0, v1

    sget v1, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_EDGE_LIMITS_ENABLE:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getParams(ILwei/mark/standout/ui/Window;)Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    .locals 13
    .param p1, "corner"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;

    .prologue
    const/4 v9, -0x1

    const/4 v7, 0x1

    .line 63
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/roundr/Corner;->prefs:Landroid/content/SharedPreferences;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/roundr/Corner;->prefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "corner"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/16 v3, 0x14

    .line 66
    .local v3, "radius":I
    packed-switch p1, :pswitch_data_0

    .line 77
    .end local v3    # "radius":I
    :cond_0
    new-instance v4, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    move-object v5, p0

    move v6, p1

    move v8, v7

    move v10, v9

    move v11, v7

    move v12, v7

    invoke-direct/range {v4 .. v12}, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lwei/mark/standout/StandOutWindow;IIIIIII)V

    move-object v0, v4

    :goto_0
    return-object v0

    .line 68
    .restart local v3    # "radius":I
    :pswitch_0
    new-instance v0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    const/16 v5, 0x33

    move-object v1, p0

    move v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lwei/mark/standout/StandOutWindow;IIII)V

    goto :goto_0

    .line 70
    :pswitch_1
    new-instance v0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    const/16 v5, 0x35

    move-object v1, p0

    move v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lwei/mark/standout/StandOutWindow;IIII)V

    goto :goto_0

    .line 72
    :pswitch_2
    new-instance v0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    const/16 v5, 0x53

    move-object v1, p0

    move v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lwei/mark/standout/StandOutWindow;IIII)V

    goto :goto_0

    .line 74
    :pswitch_3
    new-instance v0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    const/16 v5, 0x55

    move-object v1, p0

    move v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;-><init>(Lwei/mark/standout/StandOutWindow;IIII)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClose(ILwei/mark/standout/ui/Window;)Z
    .locals 1
    .param p1, "corner"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;

    .prologue
    const/4 v0, 0x0

    .line 120
    sput-boolean v0, Lcom/android/systemui/roundr/Corner;->running:Z

    .line 121
    return v0
.end method

.method public onReceiveData(IILandroid/os/Bundle;Ljava/lang/Class;I)V
    .locals 6
    .param p1, "corner"    # I
    .param p2, "requestCode"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .param p5, "fromId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p4, "fromCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/systemui/roundr/Corner;->getWindow(I)Lwei/mark/standout/ui/Window;

    move-result-object v0

    .line 134
    .local v0, "window":Lwei/mark/standout/ui/Window;
    if-ne p2, v2, :cond_0

    .line 135
    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/roundr/Corner;->getParams(ILwei/mark/standout/ui/Window;)Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/roundr/Corner;->updateViewLayout(ILwei/mark/standout/StandOutWindow$StandOutLayoutParams;)V

    .line 136
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/roundr/Corner;->getParams(ILwei/mark/standout/ui/Window;)Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/roundr/Corner;->updateViewLayout(ILwei/mark/standout/StandOutWindow$StandOutLayoutParams;)V

    .line 137
    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/roundr/Corner;->getParams(ILwei/mark/standout/ui/Window;)Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/roundr/Corner;->updateViewLayout(ILwei/mark/standout/StandOutWindow$StandOutLayoutParams;)V

    .line 138
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/roundr/Corner;->getParams(ILwei/mark/standout/ui/Window;)Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/roundr/Corner;->updateViewLayout(ILwei/mark/standout/StandOutWindow$StandOutLayoutParams;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onShow(ILwei/mark/standout/ui/Window;)Z
    .locals 1
    .param p1, "corner"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "NewApi"
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/roundr/Corner;->running:Z

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v8, 0x0

    .line 85
    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "action":Ljava/lang/String;
    const-string v0, "id"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, "corner":I
    const-string v0, "SHOW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RESTORE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/roundr/Corner;->show(I)Lwei/mark/standout/ui/Window;

    .line 115
    .end local v1    # "corner":I
    .end local v6    # "action":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 91
    .restart local v1    # "corner":I
    .restart local v6    # "action":Ljava/lang/String;
    :cond_2
    const-string v0, "SETTINGS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/android/systemui/roundr/SettingsActivity;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v7, "intentS":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v7}, Lcom/android/systemui/roundr/Corner;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v7    # "intentS":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 98
    :cond_3
    const-string v0, "HIDE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/systemui/roundr/Corner;->hide(I)V

    goto :goto_0

    .line 100
    :cond_4
    const-string v0, "CLOSE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/systemui/roundr/Corner;->close(I)V

    goto :goto_0

    .line 102
    :cond_5
    const-string v0, "CLOSE_ALL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/roundr/Corner;->closeAll()V

    goto :goto_0

    .line 104
    :cond_6
    const-string v0, "SEND_DATA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/systemui/roundr/Corner;->isExistingId(I)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, -0x2

    if-ne v1, v0, :cond_1

    .line 106
    :cond_7
    const-string v0, "wei.mark.standout.data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 107
    .local v3, "data":Landroid/os/Bundle;
    const-string v0, "requestCode"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 109
    .local v2, "requestCode":I
    const-string v0, "wei.mark.standout.fromCls"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 110
    .local v4, "fromCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    const-string v0, "fromId"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, "fromId":I
    move-object v0, p0

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/roundr/Corner;->onReceiveData(IILandroid/os/Bundle;Ljava/lang/Class;I)V

    goto :goto_0
.end method
