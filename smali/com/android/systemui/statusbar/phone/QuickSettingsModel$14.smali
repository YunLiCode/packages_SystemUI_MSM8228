.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$14;
.super Ljava/lang/Object;
.source "QuickSettingsModel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addApn(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$14;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1507
    const-string v0, "QuickSettingsModel"

    const-string v1, "ctwap-ctnet on click! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$14;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNetStateTracker:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$14;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NetStateTracker;->toggleState(Landroid/content/Context;)V

    .line 1509
    return-void
.end method
