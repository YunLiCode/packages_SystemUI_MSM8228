.class public Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_4G:[[I

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_HP:[[I

.field static final DATA_SIGNAL_STRENGTH:[[I

.field public static final DATA_TYPE_ACTIVITY:[[I

.field public static final MULTI_NO_SIM_CT:[I

.field public static final MULTI_NO_SIM_CU:[I

.field public static final MULTI_SIGNAL_IMAGES_3G:[[[I

.field public static final MULTI_SIGNAL_IMAGES_G:[[[I

.field public static final MULTI_SIGNAL_IMAGES_H:[[[I

.field public static final MULTI_SIGNAL_IMAGES_HP:[[[I

.field public static final MULTI_SIGNAL_IMAGES_R_3G:[[[I

.field public static final MULTI_SIGNAL_IMAGES_R_G:[[[I

.field public static final MULTI_SIGNAL_IMAGES_R_H:[[[I

.field public static final MULTI_SIGNAL_IMAGES_R_HP:[[[I

.field public static final MULTI_SIGNAL_NULL_CT:[I

.field public static final MULTI_SIGNAL_NULL_CU:[I

.field static final QS_TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field public static final TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

.field public static final TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

.field public static final TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

.field public static final TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

.field public static final TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

.field public static final TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

.field public static final TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

.field public static final TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM1_3G_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM1_G_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM1_HP_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM1_H_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM2_3G_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM2_G_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM2_HP_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM2_H_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_SIM1_3G_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_SIM1_G_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_SIM1_HP_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_SIM1_H_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_SIM2_3G_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_SIM2_G_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_SIM2_HP_CU:[[I

.field private static final TELEPHONY_SIGNAL_STRENGTH_SIM2_H_CU:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x5

    .line 28
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 41
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 54
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 68
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_NO_SIM_CU:[I

    .line 73
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_NULL_CU:[I

    .line 78
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM1_G_CU:[[I

    .line 91
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM2_G_CU:[[I

    .line 104
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM1_G_CU:[[I

    .line 117
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM2_G_CU:[[I

    .line 130
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM1_3G_CU:[[I

    .line 143
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM2_3G_CU:[[I

    .line 156
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM1_3G_CU:[[I

    .line 169
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM2_3G_CU:[[I

    .line 182
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM1_H_CU:[[I

    .line 195
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM2_H_CU:[[I

    .line 208
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM1_H_CU:[[I

    .line 221
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM2_H_CU:[[I

    .line 234
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM1_HP_CU:[[I

    .line 247
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM2_HP_CU:[[I

    .line 260
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM1_HP_CU:[[I

    .line 273
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_26

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_27

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM2_HP_CU:[[I

    .line 287
    new-array v0, v2, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_NO_SIM_CT:[I

    .line 292
    new-array v0, v2, [I

    fill-array-data v0, :array_29

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_NULL_CT:[I

    .line 297
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2a

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2b

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    .line 310
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2c

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2d

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    .line 323
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2e

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2f

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    .line 336
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_30

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_31

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    .line 349
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_32

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_33

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    .line 362
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_34

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_35

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    .line 375
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_36

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_37

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    .line 388
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_38

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_39

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    .line 401
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    .line 403
    new-array v0, v2, [[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM1_G_CU:[[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM2_G_CU:[[I

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_IMAGES_G:[[[I

    .line 407
    new-array v0, v2, [[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM1_G_CU:[[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM2_G_CU:[[I

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_IMAGES_R_G:[[[I

    .line 411
    new-array v0, v2, [[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM1_3G_CU:[[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM2_3G_CU:[[I

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_IMAGES_3G:[[[I

    .line 415
    new-array v0, v2, [[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM1_3G_CU:[[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM2_3G_CU:[[I

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_IMAGES_R_3G:[[[I

    .line 419
    new-array v0, v2, [[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM1_H_CU:[[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM2_H_CU:[[I

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_IMAGES_H:[[[I

    .line 423
    new-array v0, v2, [[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM1_H_CU:[[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM2_H_CU:[[I

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_IMAGES_R_H:[[[I

    .line 428
    new-array v0, v2, [[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM1_HP_CU:[[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM2_HP_CU:[[I

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_IMAGES_HP:[[[I

    .line 432
    new-array v0, v2, [[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM1_HP_CU:[[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM2_HP_CU:[[I

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->MULTI_SIGNAL_IMAGES_R_HP:[[[I

    .line 440
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_3a

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_3b

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    .line 451
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_3c

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_3d

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    .line 462
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_3e

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_3f

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    .line 474
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_40

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_41

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    .line 486
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_42

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_43

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HP:[[I

    .line 499
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_44

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_45

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    .line 511
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_46

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_47

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    .line 544
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_48

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_49

    aput-object v1, v0, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_4a

    aput-object v1, v0, v2

    const/4 v1, 0x3

    new-array v2, v6, [I

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_4c

    aput-object v1, v0, v6

    new-array v1, v6, [I

    fill-array-data v1, :array_4d

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TYPE_ACTIVITY:[[I

    return-void

    .line 28
    :array_0
    .array-data 4
        0x7f0201c6
        0x7f0201f0
        0x7f02021e
        0x7f02024c
        0x7f02027a
    .end array-data

    :array_1
    .array-data 4
        0x7f0201db
        0x7f020205
        0x7f020233
        0x7f020261
        0x7f02028f
    .end array-data

    .line 41
    :array_2
    .array-data 4
        0x7f020082
        0x7f020083
        0x7f020085
        0x7f020087
        0x7f020089
    .end array-data

    :array_3
    .array-data 4
        0x7f02008c
        0x7f02008d
        0x7f02008f
        0x7f020091
        0x7f020093
    .end array-data

    .line 54
    :array_4
    .array-data 4
        0x7f0201c6
        0x7f0201f0
        0x7f02021e
        0x7f02024c
        0x7f02027a
    .end array-data

    :array_5
    .array-data 4
        0x7f0201db
        0x7f020205
        0x7f020233
        0x7f020261
        0x7f02028f
    .end array-data

    .line 68
    :array_6
    .array-data 4
        0x7f02016c
        0x7f02016d
    .end array-data

    .line 73
    :array_7
    .array-data 4
        0x7f0202b9
        0x7f0202ba
    .end array-data

    .line 78
    :array_8
    .array-data 4
        0x7f0201e9
        0x7f020213
        0x7f020241
        0x7f02026f
        0x7f02029d
    .end array-data

    :array_9
    .array-data 4
        0x7f0201dd
        0x7f020207
        0x7f020235
        0x7f020263
        0x7f020291
    .end array-data

    .line 91
    :array_a
    .array-data 4
        0x7f0201ed
        0x7f020217
        0x7f020245
        0x7f020273
        0x7f0202a1
    .end array-data

    :array_b
    .array-data 4
        0x7f0201e1
        0x7f02020b
        0x7f020239
        0x7f020267
        0x7f020295
    .end array-data

    .line 104
    :array_c
    .array-data 4
        0x7f020178
        0x7f020188
        0x7f020198
        0x7f0201a8
        0x7f0201b8
    .end array-data

    :array_d
    .array-data 4
        0x7f020170
        0x7f020180
        0x7f020190
        0x7f0201a0
        0x7f0201b0
    .end array-data

    .line 117
    :array_e
    .array-data 4
        0x7f02017c
        0x7f02018c
        0x7f02019c
        0x7f0201ac
        0x7f0201bc
    .end array-data

    :array_f
    .array-data 4
        0x7f020174
        0x7f020184
        0x7f020194
        0x7f0201a4
        0x7f0201b4
    .end array-data

    .line 130
    :array_10
    .array-data 4
        0x7f0201e8
        0x7f020212
        0x7f020240
        0x7f02026e
        0x7f02029c
    .end array-data

    :array_11
    .array-data 4
        0x7f0201dc
        0x7f020206
        0x7f020234
        0x7f020262
        0x7f020290
    .end array-data

    .line 143
    :array_12
    .array-data 4
        0x7f0201ec
        0x7f020216
        0x7f020244
        0x7f020272
        0x7f0202a0
    .end array-data

    :array_13
    .array-data 4
        0x7f0201e0
        0x7f02020a
        0x7f020238
        0x7f020266
        0x7f020294
    .end array-data

    .line 156
    :array_14
    .array-data 4
        0x7f020177
        0x7f020187
        0x7f020197
        0x7f0201a7
        0x7f0201b7
    .end array-data

    :array_15
    .array-data 4
        0x7f02016f
        0x7f02017f
        0x7f02018f
        0x7f02019f
        0x7f0201af
    .end array-data

    .line 169
    :array_16
    .array-data 4
        0x7f02017b
        0x7f02018b
        0x7f02019b
        0x7f0201ab
        0x7f0201bb
    .end array-data

    :array_17
    .array-data 4
        0x7f020173
        0x7f020183
        0x7f020193
        0x7f0201a3
        0x7f0201b3
    .end array-data

    .line 182
    :array_18
    .array-data 4
        0x7f0201ea
        0x7f020214
        0x7f020242
        0x7f020270
        0x7f02029e
    .end array-data

    :array_19
    .array-data 4
        0x7f0201de
        0x7f020208
        0x7f020236
        0x7f020264
        0x7f020292
    .end array-data

    .line 195
    :array_1a
    .array-data 4
        0x7f0201ee
        0x7f020218
        0x7f020246
        0x7f020274
        0x7f0202a2
    .end array-data

    :array_1b
    .array-data 4
        0x7f0201e2
        0x7f02020c
        0x7f02023a
        0x7f020268
        0x7f020296
    .end array-data

    .line 208
    :array_1c
    .array-data 4
        0x7f020179
        0x7f020189
        0x7f020199
        0x7f0201a9
        0x7f0201b9
    .end array-data

    :array_1d
    .array-data 4
        0x7f020171
        0x7f020181
        0x7f020191
        0x7f0201a1
        0x7f0201b1
    .end array-data

    .line 221
    :array_1e
    .array-data 4
        0x7f02017d
        0x7f02018d
        0x7f02019d
        0x7f0201ad
        0x7f0201bd
    .end array-data

    :array_1f
    .array-data 4
        0x7f020175
        0x7f020185
        0x7f020195
        0x7f0201a5
        0x7f0201b5
    .end array-data

    .line 234
    :array_20
    .array-data 4
        0x7f0201eb
        0x7f020215
        0x7f020243
        0x7f020271
        0x7f02029f
    .end array-data

    :array_21
    .array-data 4
        0x7f0201df
        0x7f020209
        0x7f020237
        0x7f020265
        0x7f020293
    .end array-data

    .line 247
    :array_22
    .array-data 4
        0x7f0201ef
        0x7f020219
        0x7f020247
        0x7f020275
        0x7f0202a3
    .end array-data

    :array_23
    .array-data 4
        0x7f0201e3
        0x7f02020d
        0x7f02023b
        0x7f020269
        0x7f020297
    .end array-data

    .line 260
    :array_24
    .array-data 4
        0x7f02017a
        0x7f02018a
        0x7f02019a
        0x7f0201aa
        0x7f0201ba
    .end array-data

    :array_25
    .array-data 4
        0x7f020172
        0x7f020182
        0x7f020192
        0x7f0201a2
        0x7f0201b2
    .end array-data

    .line 273
    :array_26
    .array-data 4
        0x7f02017e
        0x7f02018e
        0x7f02019e
        0x7f0201ae
        0x7f0201be
    .end array-data

    :array_27
    .array-data 4
        0x7f020176
        0x7f020186
        0x7f020196
        0x7f0201a6
        0x7f0201b6
    .end array-data

    .line 287
    :array_28
    .array-data 4
        0x7f02016e
        0x7f02016e
    .end array-data

    .line 292
    :array_29
    .array-data 4
        0x7f0202b8
        0x7f0202b8
    .end array-data

    .line 297
    :array_2a
    .array-data 4
        0x7f0201d3
        0x7f0201fd
        0x7f02022b
        0x7f020259
        0x7f020287
    .end array-data

    :array_2b
    .array-data 4
        0x7f0201d8
        0x7f020202
        0x7f020230
        0x7f02025e
        0x7f02028c
    .end array-data

    .line 310
    :array_2c
    .array-data 4
        0x7f0201c7
        0x7f0201f1
        0x7f02021f
        0x7f02024d
        0x7f02027b
    .end array-data

    :array_2d
    .array-data 4
        0x7f0201c8
        0x7f0201f2
        0x7f020220
        0x7f02024e
        0x7f02027c
    .end array-data

    .line 323
    :array_2e
    .array-data 4
        0x7f0201ca
        0x7f0201f4
        0x7f020222
        0x7f020250
        0x7f02027e
    .end array-data

    :array_2f
    .array-data 4
        0x7f0201cb
        0x7f0201f5
        0x7f020223
        0x7f020251
        0x7f02027f
    .end array-data

    .line 336
    :array_30
    .array-data 4
        0x7f0201e4
        0x7f02020e
        0x7f02023c
        0x7f02026a
        0x7f020298
    .end array-data

    :array_31
    .array-data 4
        0x7f0201e5
        0x7f02020f
        0x7f02023d
        0x7f02026b
        0x7f020299
    .end array-data

    .line 349
    :array_32
    .array-data 4
        0x7f0201da
        0x7f020204
        0x7f020232
        0x7f020260
        0x7f02028e
    .end array-data

    :array_33
    .array-data 4
        0x7f0201d9
        0x7f020203
        0x7f020231
        0x7f02025f
        0x7f02028d
    .end array-data

    .line 362
    :array_34
    .array-data 4
        0x7f0201ce
        0x7f0201f8
        0x7f020226
        0x7f020254
        0x7f020282
    .end array-data

    :array_35
    .array-data 4
        0x7f0201c9
        0x7f0201f3
        0x7f020221
        0x7f02024f
        0x7f02027c
    .end array-data

    .line 375
    :array_36
    .array-data 4
        0x7f0201cd
        0x7f0201f7
        0x7f020225
        0x7f020253
        0x7f020281
    .end array-data

    :array_37
    .array-data 4
        0x7f0201cc
        0x7f0201f6
        0x7f020224
        0x7f020252
        0x7f020280
    .end array-data

    .line 388
    :array_38
    .array-data 4
        0x7f0201e7
        0x7f020211
        0x7f02023f
        0x7f02026d
        0x7f02029b
    .end array-data

    :array_39
    .array-data 4
        0x7f0201e6
        0x7f020210
        0x7f02023e
        0x7f02026c
        0x7f02029a
    .end array-data

    .line 440
    :array_3a
    .array-data 4
        0x7f020151
        0x7f020151
        0x7f020151
        0x7f020151
    .end array-data

    :array_3b
    .array-data 4
        0x7f02015a
        0x7f02015a
        0x7f02015a
        0x7f02015a
    .end array-data

    .line 451
    :array_3c
    .array-data 4
        0x7f02014e
        0x7f02014e
        0x7f02014e
        0x7f02014e
    .end array-data

    :array_3d
    .array-data 4
        0x7f020157
        0x7f020157
        0x7f020157
        0x7f020157
    .end array-data

    .line 462
    :array_3e
    .array-data 4
        0x7f020150
        0x7f020150
        0x7f020150
        0x7f020150
    .end array-data

    :array_3f
    .array-data 4
        0x7f020159
        0x7f020159
        0x7f020159
        0x7f020159
    .end array-data

    .line 474
    :array_40
    .array-data 4
        0x7f020152
        0x7f020152
        0x7f020152
        0x7f020152
    .end array-data

    :array_41
    .array-data 4
        0x7f02015b
        0x7f02015b
        0x7f02015b
        0x7f02015b
    .end array-data

    .line 486
    :array_42
    .array-data 4
        0x7f020153
        0x7f020153
        0x7f020153
        0x7f020153
    .end array-data

    :array_43
    .array-data 4
        0x7f02015c
        0x7f02015c
        0x7f02015c
        0x7f02015c
    .end array-data

    .line 499
    :array_44
    .array-data 4
        0x7f02014d
        0x7f02014d
        0x7f02014d
        0x7f02014d
    .end array-data

    :array_45
    .array-data 4
        0x7f020156
        0x7f020156
        0x7f020156
        0x7f020156
    .end array-data

    .line 511
    :array_46
    .array-data 4
        0x7f02014f
        0x7f02014f
        0x7f02014f
        0x7f02014f
    .end array-data

    :array_47
    .array-data 4
        0x7f020158
        0x7f020158
        0x7f020158
        0x7f020158
    .end array-data

    .line 544
    :array_48
    .array-data 4
        0x7f0202a6
        0x7f0202a4
        0x7f0202a7
        0x7f0202a5
    .end array-data

    :array_49
    .array-data 4
        0x7f0202ab
        0x7f0202a9
        0x7f0202ac
        0x7f0202aa
    .end array-data

    :array_4a
    .array-data 4
        0x7f02021c
        0x7f02021a
        0x7f02021d
        0x7f02021b
    .end array-data

    :array_4b
    .array-data 4
        0x7f020278
        0x7f020276
        0x7f020279
        0x7f020277
    .end array-data

    :array_4c
    .array-data 4
        0x7f0202af
        0x7f0202ad
        0x7f0202b0
        0x7f0202ae
    .end array-data

    :array_4d
    .array-data 4
        0x7f0202b3
        0x7f0202b1
        0x7f0202b4
        0x7f0202b2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
