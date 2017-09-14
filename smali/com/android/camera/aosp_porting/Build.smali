.class public Lcom/android/camera/aosp_porting/Build;
.super Landroid/os/Build;
.source "Build.java"


# static fields
.field public static final HAS_CUST_PARTITION:Z

.field public static final IS_ALPHA_BUILD:Z

.field public static final IS_CDMA:Z

.field public static final IS_CM_COOPERATION:Z

.field public static final IS_CM_CUSTOMIZATION:Z

.field public static final IS_CM_CUSTOMIZATION_TEST:Z

.field public static final IS_CTA_BUILD:Z

.field public static final IS_CTS_BUILD:Z

.field public static final IS_CT_CUSTOMIZATION:Z

.field public static final IS_CT_CUSTOMIZATION_TEST:Z

.field public static final IS_CU_CUSTOMIZATION:Z

.field public static final IS_CU_CUSTOMIZATION_TEST:Z

.field public static final IS_DEBUGGABLE:Z

.field public static final IS_DEVELOPMENT_VERSION:Z

.field public static final IS_FUNCTION_LIMITED:Z

.field public static final IS_GLOBAL_BUILD:Z

.field public static final IS_HONGMI:Z

.field public static final IS_HONGMI2_TDSCDMA:Z

.field public static final IS_HONGMI_THREE:Z

.field public static final IS_HONGMI_THREEX:Z

.field public static final IS_HONGMI_THREEX_CM:Z

.field public static final IS_HONGMI_THREEX_CT:Z

.field public static final IS_HONGMI_THREEX_CU:Z

.field public static final IS_HONGMI_THREE_LTE:Z

.field public static final IS_HONGMI_THREE_LTE_CM:Z

.field public static final IS_HONGMI_THREE_LTE_CU:Z

.field public static final IS_HONGMI_TWO:Z

.field public static final IS_HONGMI_TWOS_LTE_MTK:Z

.field public static final IS_HONGMI_TWOX:Z

.field public static final IS_HONGMI_TWOX_BR:Z

.field public static final IS_HONGMI_TWOX_CM:Z

.field public static final IS_HONGMI_TWOX_CT:Z

.field public static final IS_HONGMI_TWOX_CU:Z

.field public static final IS_HONGMI_TWOX_IN:Z

.field public static final IS_HONGMI_TWOX_LC:Z

.field public static final IS_HONGMI_TWOX_SA:Z

.field public static final IS_HONGMI_TWO_A:Z

.field public static final IS_HONGMI_TWO_S:Z

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static final IS_MI1S:Z

.field public static final IS_MI2A:Z

.field public static final IS_MIFIVE:Z

.field public static final IS_MIFOUR:Z

.field public static final IS_MIFOUR_CDMA:Z

.field public static final IS_MIFOUR_LTE_CM:Z

.field public static final IS_MIFOUR_LTE_CT:Z

.field public static final IS_MIFOUR_LTE_CU:Z

.field public static final IS_MIFOUR_LTE_INDIA:Z

.field public static final IS_MIFOUR_LTE_SEASA:Z

.field public static final IS_MIONE:Z

.field public static final IS_MIONE_CDMA:Z

.field public static final IS_MIPAD:Z

.field public static final IS_MITHREE:Z

.field public static final IS_MITHREE_CDMA:Z

.field public static final IS_MITHREE_TDSCDMA:Z

.field public static final IS_MITWO:Z

.field public static final IS_MITWO_CDMA:Z

.field public static final IS_MITWO_TDSCDMA:Z

.field public static final IS_N7:Z

.field public static final IS_OFFICIAL_VERSION:Z

.field public static final IS_PRO_DEVICE:Z

.field public static final IS_STABLE_VERSION:Z

.field public static final IS_TABLET:Z

.field public static final IS_TDS_CDMA:Z

.field public static final IS_XIAOMI:Z

.field public static final USERDATA_IMAGE_VERSION_CODE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    const-string/jumbo v0, "mione"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mione_plus"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIONE:Z

    .line 43
    const-string/jumbo v0, "MI 1S"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "MI 1SC"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MI1S:Z

    .line 46
    const-string/jumbo v0, "aries"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "taurus"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "taurus_td"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITWO:Z

    .line 49
    const-string/jumbo v0, "MI 2A"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "MI 2A TD"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MI2A:Z

    .line 52
    const-string/jumbo v0, "pisces"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "cancro"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/camera/aosp_porting/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "MI 3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_4
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITHREE:Z

    .line 55
    const-string/jumbo v0, "cancro"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/camera/aosp_porting/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "MI 4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_5
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR:Z

    .line 58
    const-string/jumbo v0, "virgo"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFIVE:Z

    .line 61
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIONE:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITWO:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITHREE:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFIVE:Z

    :goto_6
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_XIAOMI:Z

    .line 67
    const-string/jumbo v0, "mocha"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIPAD:Z

    .line 69
    const-string/jumbo v0, "flo"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_N7:Z

    .line 76
    const-string/jumbo v0, "armani"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWO_A:Z

    .line 79
    const-string/jumbo v0, "HM2014011"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "HM2014012"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_7
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWO_S:Z

    .line 82
    const-string/jumbo v0, "HM2014501"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOS_LTE_MTK:Z

    .line 85
    const-string/jumbo v0, "HM2013022"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "HM2013023"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 86
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWO_A:Z

    .line 85
    if-nez v0, :cond_9

    .line 86
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWO_S:Z

    .line 85
    :goto_8
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWO:Z

    .line 89
    const-string/jumbo v0, "lcsh92_wet_jb9"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "lcsh92_wet_tdd"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_9
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREE:Z

    .line 92
    const-string/jumbo v0, "dior"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREE_LTE:Z

    .line 95
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREE_LTE:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "LTETD"

    const-string/jumbo v3, "ro.boot.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREE_LTE_CM:Z

    .line 98
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREE_LTE:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "LTEW"

    const-string/jumbo v3, "ro.boot.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_b
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREE_LTE_CU:Z

    .line 101
    const-string/jumbo v0, "HM2014811"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX_CU:Z

    .line 104
    const-string/jumbo v0, "HM2014812"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "HM2014821"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX_CT:Z

    .line 107
    const-string/jumbo v0, "HM2014813"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "HM2014112"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_d
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX_CM:Z

    .line 110
    const-string/jumbo v0, "HM2014818"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX_IN:Z

    .line 113
    const-string/jumbo v0, "HM2014817"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX_SA:Z

    .line 116
    const-string/jumbo v0, "HM2014819"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX_BR:Z

    .line 119
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX_CU:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX_CT:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX_CM:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX_IN:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX_SA:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX_BR:Z

    :goto_e
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX:Z

    .line 122
    const-string/jumbo v0, "lte26007"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX_LC:Z

    .line 125
    const-string/jumbo v0, "gucci"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREEX:Z

    .line 128
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREEX:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "cm"

    const-string/jumbo v3, "persist.sys.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_f
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREEX_CM:Z

    .line 131
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREEX:Z

    if-eqz v0, :cond_11

    const-string/jumbo v0, "cu"

    const-string/jumbo v3, "persist.sys.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_10
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREEX_CU:Z

    .line 134
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREEX:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "ct"

    const-string/jumbo v3, "persist.sys.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_11
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREEX_CT:Z

    .line 138
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWO:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREE:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREE_LTE:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOX_LC:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_TWOS_LTE_MTK:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI_THREEX:Z

    :goto_12
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI:Z

    .line 145
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIONE:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/camera/aosp_porting/Build;->hasMsm8660Property()Z

    move-result v0

    :goto_13
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIONE_CDMA:Z

    .line 148
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITWO:Z

    if-eqz v0, :cond_15

    const-string/jumbo v0, "CDMA"

    .line 149
    const-string/jumbo v3, "persist.radio.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_14
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITWO_CDMA:Z

    .line 152
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_16

    const-string/jumbo v0, "MI 3C"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_15
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITHREE_CDMA:Z

    .line 155
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_17

    const-string/jumbo v0, "CDMA"

    .line 156
    const-string/jumbo v3, "persist.radio.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_16
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR_CDMA:Z

    .line 159
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITWO:Z

    if-eqz v0, :cond_18

    const-string/jumbo v0, "TD"

    .line 160
    const-string/jumbo v3, "persist.radio.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_17
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITWO_TDSCDMA:Z

    .line 163
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_19

    const-string/jumbo v0, "TD"

    .line 164
    const-string/jumbo v3, "persist.radio.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_18
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITHREE_TDSCDMA:Z

    .line 167
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_1a

    .line 168
    const-string/jumbo v0, "LTE-CMCC"

    const-string/jumbo v3, "persist.radio.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 167
    :goto_19
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR_LTE_CM:Z

    .line 171
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_1b

    .line 172
    const-string/jumbo v0, "LTE-CU"

    const-string/jumbo v3, "persist.radio.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    :goto_1a
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR_LTE_CU:Z

    .line 175
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_1c

    .line 176
    const-string/jumbo v0, "LTE-CT"

    const-string/jumbo v3, "persist.radio.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 175
    :goto_1b
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR_LTE_CT:Z

    .line 179
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_1d

    .line 180
    const-string/jumbo v0, "LTE-India"

    const-string/jumbo v3, "persist.radio.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 179
    :goto_1c
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR_LTE_INDIA:Z

    .line 183
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_1e

    .line 184
    const-string/jumbo v0, "LTE-SEAsa"

    const-string/jumbo v3, "persist.radio.modem"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 183
    :goto_1d
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR_LTE_SEASA:Z

    .line 187
    const-string/jumbo v0, "HM2013022"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI2_TDSCDMA:Z

    .line 190
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIONE_CDMA:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITWO_CDMA:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITHREE_CDMA:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR_CDMA:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MIFOUR_LTE_CT:Z

    :goto_1e
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_CDMA:Z

    .line 193
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITHREE_TDSCDMA:Z

    if-nez v0, :cond_20

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_HONGMI2_TDSCDMA:Z

    if-nez v0, :cond_20

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_MITWO_TDSCDMA:Z

    :goto_1f
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_TDS_CDMA:Z

    .line 196
    const-string/jumbo v0, "cu"

    .line 197
    const-string/jumbo v3, "ro.carrier.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_CU_CUSTOMIZATION:Z

    .line 200
    const-string/jumbo v0, "cm"

    .line 201
    const-string/jumbo v3, "ro.carrier.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 201
    const-string/jumbo v0, "cn_chinamobile"

    .line 202
    const-string/jumbo v3, "ro.miui.cust_variant"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 200
    :goto_20
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_CM_CUSTOMIZATION:Z

    .line 205
    const-string/jumbo v0, "cm"

    .line 206
    const-string/jumbo v3, "ro.carrier.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 206
    const-string/jumbo v0, "cn_cmcooperation"

    .line 207
    const-string/jumbo v3, "ro.miui.cust_variant"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 205
    :goto_21
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_CM_COOPERATION:Z

    .line 210
    const-string/jumbo v0, "ct"

    .line 211
    const-string/jumbo v3, "ro.carrier.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_CT_CUSTOMIZATION:Z

    .line 215
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 216
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string/jumbo v3, "\\d+.\\d+.\\d+(-internal)?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 214
    :goto_22
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_DEVELOPMENT_VERSION:Z

    .line 219
    const-string/jumbo v0, "user"

    sget-object v3, Lcom/android/camera/aosp_porting/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 220
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_24

    move v0, v2

    .line 219
    :goto_23
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_STABLE_VERSION:Z

    .line 223
    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_26

    sget-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_STABLE_VERSION:Z

    :goto_24
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_OFFICIAL_VERSION:Z

    .line 226
    const-string/jumbo v0, "ro.product.mod_device"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "_alpha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_ALPHA_BUILD:Z

    .line 229
    const-string/jumbo v3, "persist.sys.miui_optimization"

    const-string/jumbo v0, "1"

    .line 230
    const-string/jumbo v4, "ro.miui.cts"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v2

    :goto_25
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v2

    :goto_26
    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_CTS_BUILD:Z

    .line 233
    const-string/jumbo v0, "1"

    .line 234
    const-string/jumbo v3, "ro.miui.cta"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_CTA_BUILD:Z

    .line 237
    const-string/jumbo v0, "cm"

    .line 238
    const-string/jumbo v3, "ro.cust.test"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    .line 241
    const-string/jumbo v0, "cu"

    .line 242
    const-string/jumbo v3, "ro.cust.test"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    .line 245
    const-string/jumbo v0, "ct"

    .line 246
    const-string/jumbo v3, "ro.cust.test"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    .line 249
    const-string/jumbo v0, "1"

    .line 250
    const-string/jumbo v3, "persist.sys.func_limit_switch"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_FUNCTION_LIMITED:Z

    .line 283
    const-string/jumbo v0, "ro.product.mod_device"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "_global"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 286
    const-string/jumbo v0, "ro.product.mod_device"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "_global"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_GLOBAL_BUILD:Z

    .line 291
    invoke-static {}, Lcom/android/camera/aosp_porting/Build;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_TABLET:Z

    .line 338
    invoke-static {}, Lcom/android/camera/aosp_porting/Build;->getUserdataImageVersionCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/aosp_porting/Build;->USERDATA_IMAGE_VERSION_CODE:Ljava/lang/String;

    .line 372
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_29

    .line 371
    :goto_27
    sput-boolean v1, Lcom/android/camera/aosp_porting/Build;->IS_DEBUGGABLE:Z

    .line 378
    const-string/jumbo v0, "ro.miui.has_cust_partition"

    .line 377
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->HAS_CUST_PARTITION:Z

    .line 384
    const-string/jumbo v0, "ro.miui.cust_device"

    const-string/jumbo v1, ""

    .line 383
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    const-string/jumbo v1, "_pro"

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aosp_porting/Build;->IS_PRO_DEVICE:Z

    .line 19
    return-void

    :cond_0
    move v0, v1

    .line 40
    goto/16 :goto_0

    :cond_1
    move v0, v1

    .line 43
    goto/16 :goto_1

    :cond_2
    move v0, v1

    .line 46
    goto/16 :goto_2

    :cond_3
    move v0, v1

    .line 49
    goto/16 :goto_3

    :cond_4
    move v0, v1

    .line 52
    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_4

    :cond_6
    move v0, v2

    .line 55
    goto/16 :goto_5

    :cond_7
    move v0, v1

    .line 61
    goto/16 :goto_6

    :cond_8
    move v0, v1

    .line 79
    goto/16 :goto_7

    :cond_9
    move v0, v1

    .line 85
    goto/16 :goto_8

    :cond_a
    move v0, v1

    .line 89
    goto/16 :goto_9

    :cond_b
    move v0, v2

    .line 95
    goto/16 :goto_a

    :cond_c
    move v0, v2

    .line 98
    goto/16 :goto_b

    :cond_d
    move v0, v1

    .line 104
    goto/16 :goto_c

    :cond_e
    move v0, v1

    .line 107
    goto/16 :goto_d

    :cond_f
    move v0, v1

    .line 119
    goto/16 :goto_e

    :cond_10
    move v0, v2

    .line 128
    goto/16 :goto_f

    :cond_11
    move v0, v2

    .line 131
    goto/16 :goto_10

    :cond_12
    move v0, v2

    .line 134
    goto/16 :goto_11

    :cond_13
    move v0, v1

    .line 138
    goto/16 :goto_12

    :cond_14
    move v0, v2

    .line 145
    goto/16 :goto_13

    :cond_15
    move v0, v2

    .line 148
    goto/16 :goto_14

    :cond_16
    move v0, v2

    .line 152
    goto/16 :goto_15

    :cond_17
    move v0, v2

    .line 155
    goto/16 :goto_16

    :cond_18
    move v0, v2

    .line 159
    goto/16 :goto_17

    :cond_19
    move v0, v2

    .line 163
    goto/16 :goto_18

    :cond_1a
    move v0, v2

    .line 167
    goto/16 :goto_19

    :cond_1b
    move v0, v2

    .line 171
    goto/16 :goto_1a

    :cond_1c
    move v0, v2

    .line 175
    goto/16 :goto_1b

    :cond_1d
    move v0, v2

    .line 179
    goto/16 :goto_1c

    :cond_1e
    move v0, v2

    .line 183
    goto/16 :goto_1d

    :cond_1f
    move v0, v1

    .line 190
    goto/16 :goto_1e

    :cond_20
    move v0, v1

    .line 193
    goto/16 :goto_1f

    :cond_21
    move v0, v2

    .line 200
    goto/16 :goto_20

    :cond_22
    move v0, v2

    .line 205
    goto/16 :goto_21

    :cond_23
    move v0, v2

    .line 215
    goto/16 :goto_22

    :cond_24
    move v0, v1

    .line 220
    goto/16 :goto_23

    :cond_25
    move v0, v2

    .line 219
    goto/16 :goto_23

    :cond_26
    move v0, v1

    .line 223
    goto/16 :goto_24

    :cond_27
    move v0, v1

    .line 229
    goto/16 :goto_25

    :cond_28
    move v0, v1

    goto/16 :goto_26

    :cond_29
    move v1, v2

    .line 372
    goto/16 :goto_27
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Build;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/InstantiationException;

    const-string/jumbo v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getUserdataImageVersionCode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 348
    const-string/jumbo v3, "ro.miui.userdata_version"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "versionCodeProperty":Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    const-string/jumbo v3, "Unavailable"

    return-object v3

    .line 354
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isGlobalBuild()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 355
    const-string/jumbo v1, "global"

    .line 360
    .local v1, "region":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "ro.carrier.name"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "carrier":Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_1
    const-string/jumbo v3, "%s(%s%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 357
    .end local v0    # "carrier":Ljava/lang/String;
    .end local v1    # "region":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "cn"

    .restart local v1    # "region":Ljava/lang/String;
    goto :goto_0
.end method

.method private static hasMsm8660Property()Z
    .locals 2

    .prologue
    .line 295
    const-string/jumbo v1, "ro.soc.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "soc":Ljava/lang/String;
    const-string/jumbo v1, "msm8660"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "unkown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isTablet()Z
    .locals 2

    .prologue
    .line 301
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
