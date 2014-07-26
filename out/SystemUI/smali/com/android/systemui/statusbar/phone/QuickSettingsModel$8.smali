.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$8;
.super Ljava/lang/Object;
.source "QuickSettingsModel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1089
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1091
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileKeys:Ljava/util/List;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1092
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileKeys:Ljava/util/List;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1094
    const-string v4, "QuickSettingsModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick called, profile clicked is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileKeys:Ljava/util/List;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileKeys:Ljava/util/List;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1097
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateAudioProfile(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1600(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Ljava/lang/String;)V

    .line 1098
    invoke-static {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 1099
    .local v2, "senario":Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateProfileView(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)V
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1700(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)V

    .line 1100
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1800(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1101
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mProfileSwitchDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$1800(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1091
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "senario":Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1105
    :cond_1
    return-void
.end method
