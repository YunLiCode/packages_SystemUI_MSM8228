.class Lcom/android/systemui/statusbar/phone/QuickSettings$21;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addTemporaryTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$21;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$21;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->collapsePanels()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$300(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 725
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$21;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettings;->showBugreportDialog()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 726
    return-void
.end method
