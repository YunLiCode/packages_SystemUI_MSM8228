.class Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;
.super Landroid/database/ContentObserver;
.source "MSimNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->setCarrierText()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V

    .line 129
    return-void
.end method
