.class public final Lcom/android/systemui/recent/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Themes:[I

.field public static final Themes_waveViewStyle:I = 0x0

.field public static final WaveView:[I

.field public static final WaveView_above_wave_color:I = 0x0

.field public static final WaveView_blow_wave_color:I = 0x1

.field public static final WaveView_progress:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 127
    const v2, 0x7f010012

    aput v2, v0, v1

    .line 126
    sput-object v0, Lcom/android/systemui/recent/R$styleable;->Themes:[I

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/recent/R$styleable;->WaveView:[I

    .line 199
    return-void

    .line 153
    :array_0
    .array-data 4
        0x7f01000f
        0x7f010010
        0x7f010011
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
