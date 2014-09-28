.class Lcom/android/systemui/recent/RecentsActivity$3;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsActivity$3;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    const/16 v4, 0xa

    .line 276
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 279
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v4, v4, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 281
    mul-int/lit16 v4, p2, 0x1e0

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, -0x14

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 283
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, p2}, Ljava/io/PrintStream;->println(I)V

    .line 284
    int-to-float v1, p2

    .line 286
    .local v1, "m":F
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsActivity$3;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v4}, Lcom/android/systemui/recent/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 287
    .local v3, "screenMode":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 288
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsActivity$3;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    const/4 v5, 0x0

    # invokes: Lcom/android/systemui/recent/RecentsActivity;->setScreenMode(I)V
    invoke-static {v4, v5}, Lcom/android/systemui/recent/RecentsActivity;->access$500(Lcom/android/systemui/recent/RecentsActivity;I)V

    .line 290
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsActivity$3;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    # invokes: Lcom/android/systemui/recent/RecentsActivity;->setScreenBrightness(F)V
    invoke-static {v4, v1}, Lcom/android/systemui/recent/RecentsActivity;->access$600(Lcom/android/systemui/recent/RecentsActivity;F)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v3    # "screenMode":I
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 297
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 300
    return-void
.end method
