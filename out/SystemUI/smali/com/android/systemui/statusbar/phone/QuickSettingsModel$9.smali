.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$9;
.super Lcom/yeptelecom/common/audioprofile/AudioProfileListener;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
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
    .line 1108
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$9;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {p0}, Lcom/yeptelecom/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioProfileChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1111
    if-eqz p1, :cond_0

    .line 1112
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 1114
    .local v0, "senario":Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    const-string v1, "QuickSettingsModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive called, profile type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    if-eqz v0, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$9;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateProfileView(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1700(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)V

    .line 1120
    .end local v0    # "senario":Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    :cond_0
    return-void
.end method
