.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ApnObserver;
.super Landroid/database/ContentObserver;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ApnObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .line 237
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 238
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ApnObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->ApnTitleChanged()V

    .line 243
    return-void
.end method

.method public startObserving()V
    .locals 4

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ApnObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 248
    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->PREFERAPN_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$200()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ApnObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 249
    return-void
.end method
