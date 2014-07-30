.class final Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;
.super Lcom/android/systemui/statusbar/util/StateTracker;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GpsStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/util/StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;

    .prologue
    .line 1277
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1280
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1281
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1282
    .local v0, "on":Z
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDisabledResource()I
    .locals 1

    .prologue
    .line 1310
    const v0, 0x7f020063

    return v0
.end method

.method public getEnabledResource()I
    .locals 1

    .prologue
    .line 1314
    const v0, 0x7f020062

    return v0
.end method

.method public getImageButtonView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$2000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1327
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTileView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mGpsTileView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$2100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unused"    # Landroid/content/Intent;

    .prologue
    .line 1289
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 1290
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 1294
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1295
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker;Landroid/content/ContentResolver;ZLandroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$GpsStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1307
    return-void
.end method
