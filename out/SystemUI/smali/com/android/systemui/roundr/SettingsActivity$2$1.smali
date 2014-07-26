.class Lcom/android/systemui/roundr/SettingsActivity$2$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/roundr/SettingsActivity$2;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/roundr/SettingsActivity$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/roundr/SettingsActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/roundr/SettingsActivity$2$1;->this$1:Lcom/android/systemui/roundr/SettingsActivity$2;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$2$1;->this$1:Lcom/android/systemui/roundr/SettingsActivity$2;

    # getter for: Lcom/android/systemui/roundr/SettingsActivity$2;->this$0:Lcom/android/systemui/roundr/SettingsActivity;
    invoke-static {v1}, Lcom/android/systemui/roundr/SettingsActivity$2;->access$0(Lcom/android/systemui/roundr/SettingsActivity$2;)Lcom/android/systemui/roundr/SettingsActivity;

    move-result-object v1

    const-class v2, Lcom/android/systemui/roundr/Corner;

    invoke-static {v1, v2}, Lwei/mark/standout/StandOutWindow;->closeAll(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$2$1;->this$1:Lcom/android/systemui/roundr/SettingsActivity$2;

    # getter for: Lcom/android/systemui/roundr/SettingsActivity$2;->this$0:Lcom/android/systemui/roundr/SettingsActivity;
    invoke-static {v1}, Lcom/android/systemui/roundr/SettingsActivity$2;->access$0(Lcom/android/systemui/roundr/SettingsActivity$2;)Lcom/android/systemui/roundr/SettingsActivity;

    move-result-object v1

    const-class v2, Lcom/android/systemui/roundr/Corner;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lwei/mark/standout/StandOutWindow;->show(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 71
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$2$1;->this$1:Lcom/android/systemui/roundr/SettingsActivity$2;

    # getter for: Lcom/android/systemui/roundr/SettingsActivity$2;->this$0:Lcom/android/systemui/roundr/SettingsActivity;
    invoke-static {v1}, Lcom/android/systemui/roundr/SettingsActivity$2;->access$0(Lcom/android/systemui/roundr/SettingsActivity$2;)Lcom/android/systemui/roundr/SettingsActivity;

    move-result-object v1

    const-class v2, Lcom/android/systemui/roundr/Corner;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lwei/mark/standout/StandOutWindow;->show(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 72
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$2$1;->this$1:Lcom/android/systemui/roundr/SettingsActivity$2;

    # getter for: Lcom/android/systemui/roundr/SettingsActivity$2;->this$0:Lcom/android/systemui/roundr/SettingsActivity;
    invoke-static {v1}, Lcom/android/systemui/roundr/SettingsActivity$2;->access$0(Lcom/android/systemui/roundr/SettingsActivity$2;)Lcom/android/systemui/roundr/SettingsActivity;

    move-result-object v1

    const-class v2, Lcom/android/systemui/roundr/Corner;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lwei/mark/standout/StandOutWindow;->show(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 73
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$2$1;->this$1:Lcom/android/systemui/roundr/SettingsActivity$2;

    # getter for: Lcom/android/systemui/roundr/SettingsActivity$2;->this$0:Lcom/android/systemui/roundr/SettingsActivity;
    invoke-static {v1}, Lcom/android/systemui/roundr/SettingsActivity$2;->access$0(Lcom/android/systemui/roundr/SettingsActivity$2;)Lcom/android/systemui/roundr/SettingsActivity;

    move-result-object v1

    const-class v2, Lcom/android/systemui/roundr/Corner;

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lwei/mark/standout/StandOutWindow;->show(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 74
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
