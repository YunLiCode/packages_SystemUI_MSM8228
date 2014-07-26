.class Lcom/android/systemui/roundr/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/roundr/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/roundr/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/roundr/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/roundr/SettingsActivity$1;->this$0:Lcom/android/systemui/roundr/SettingsActivity;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 32
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 33
    .local v0, "isChecked":Z
    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$1;->this$0:Lcom/android/systemui/roundr/SettingsActivity;

    const-class v2, Lcom/android/systemui/roundr/Corner;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lwei/mark/standout/StandOutWindow;->show(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 35
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$1;->this$0:Lcom/android/systemui/roundr/SettingsActivity;

    const-class v2, Lcom/android/systemui/roundr/Corner;

    invoke-static {v1, v2, v4}, Lwei/mark/standout/StandOutWindow;->show(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 36
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$1;->this$0:Lcom/android/systemui/roundr/SettingsActivity;

    const-class v2, Lcom/android/systemui/roundr/Corner;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lwei/mark/standout/StandOutWindow;->show(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 37
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$1;->this$0:Lcom/android/systemui/roundr/SettingsActivity;

    const-class v2, Lcom/android/systemui/roundr/Corner;

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lwei/mark/standout/StandOutWindow;->show(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 41
    :goto_0
    return v4

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/roundr/SettingsActivity$1;->this$0:Lcom/android/systemui/roundr/SettingsActivity;

    const-class v2, Lcom/android/systemui/roundr/Corner;

    invoke-static {v1, v2}, Lwei/mark/standout/StandOutWindow;->closeAll(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method
