.class public Lmiui/os/Build;
.super Landroid/os/Build;
.source "Build.java"


# static fields
.field public static final whitelist DEVICE_HIGH_END:I = 0x3

.field public static final whitelist DEVICE_LEVEL_FOR_CPU:I = 0x2

.field public static final whitelist DEVICE_LEVEL_FOR_GPU:I = 0x3

.field public static final whitelist DEVICE_LEVEL_FOR_RAM:I = 0x1

.field public static final whitelist DEVICE_LEVEL_UNKNOWN:I = -0x1

.field public static final whitelist DEVICE_LOW_END:I = 0x1

.field public static final whitelist DEVICE_MIDDLE_END:I = 0x2

.field public static final whitelist DEV_STANDARD_VER_1:I = 0x1

.field public static final whitelist HAS_CUST_PARTITION:Z

.field public static final whitelist IS_ALPHA_BUILD:Z

.field public static final whitelist IS_CDMA:Z

.field public static final whitelist IS_CM_COOPERATION:Z

.field public static final whitelist IS_CM_CUSTOMIZATION:Z

.field public static final whitelist IS_CM_CUSTOMIZATION_TEST:Z

.field public static final whitelist IS_CTA_BUILD:Z = false

.field public static final whitelist IS_CTS_BUILD:Z

.field public static final whitelist IS_CT_CUSTOMIZATION:Z

.field public static final whitelist IS_CT_CUSTOMIZATION_TEST:Z

.field public static final whitelist IS_CU_CUSTOMIZATION:Z

.field public static final whitelist IS_CU_CUSTOMIZATION_TEST:Z

.field public static final whitelist IS_DEBUGGABLE:Z

.field public static final whitelist IS_DEMO_BUILD:Z

.field public static final whitelist IS_DEVELOPMENT_VERSION:Z

.field public static final whitelist IS_DEV_VERSION:Z

.field public static final blacklist IS_FUNCTION_LIMITED:Z

.field public static final whitelist IS_GLOBAL_BUILD:Z

.field public static final whitelist IS_HONGMI:Z

.field public static final whitelist IS_HONGMI2_TDSCDMA:Z

.field public static final whitelist IS_HONGMI_THREE:Z

.field public static final whitelist IS_HONGMI_THREEX:Z

.field public static final whitelist IS_HONGMI_THREEX_CM:Z

.field public static final whitelist IS_HONGMI_THREEX_CT:Z

.field public static final whitelist IS_HONGMI_THREEX_CU:Z

.field public static final whitelist IS_HONGMI_THREE_LTE:Z

.field public static final whitelist IS_HONGMI_THREE_LTE_CM:Z

.field public static final whitelist IS_HONGMI_THREE_LTE_CU:Z

.field public static final whitelist IS_HONGMI_TWO:Z

.field public static final whitelist IS_HONGMI_TWOS_LTE_MTK:Z

.field public static final whitelist IS_HONGMI_TWOX:Z

.field public static final whitelist IS_HONGMI_TWOX_BR:Z

.field public static final whitelist IS_HONGMI_TWOX_CM:Z

.field public static final whitelist IS_HONGMI_TWOX_CT:Z

.field public static final whitelist IS_HONGMI_TWOX_CU:Z

.field public static final whitelist IS_HONGMI_TWOX_IN:Z

.field public static final whitelist IS_HONGMI_TWOX_LC:Z

.field public static final whitelist IS_HONGMI_TWOX_SA:Z

.field public static final whitelist IS_HONGMI_TWO_A:Z

.field public static final whitelist IS_HONGMI_TWO_S:Z

.field public static final whitelist IS_INTERNATIONAL_BUILD:Z

.field public static final whitelist IS_MI1S:Z

.field public static final whitelist IS_MI2A:Z

.field public static final whitelist IS_MIFIVE:Z

.field public static final whitelist IS_MIFOUR:Z

.field public static final whitelist IS_MIFOUR_CDMA:Z

.field public static final whitelist IS_MIFOUR_LTE_CM:Z

.field public static final whitelist IS_MIFOUR_LTE_CT:Z

.field public static final whitelist IS_MIFOUR_LTE_CU:Z

.field public static final whitelist IS_MIFOUR_LTE_INDIA:Z

.field public static final whitelist IS_MIFOUR_LTE_SEASA:Z

.field public static final whitelist IS_MIONE:Z

.field public static final whitelist IS_MIONE_CDMA:Z

.field public static final whitelist IS_MIPAD:Z

.field public static final whitelist IS_MITHREE:Z

.field public static final whitelist IS_MITHREE_CDMA:Z

.field public static final whitelist IS_MITHREE_TDSCDMA:Z

.field public static final whitelist IS_MITWO:Z

.field public static final whitelist IS_MITWO_CDMA:Z

.field public static final whitelist IS_MITWO_TDSCDMA:Z

.field public static final blacklist IS_MIUI:Z

.field public static final whitelist IS_MIUI_LITE_VERSION:Z

.field public static final whitelist IS_N7:Z

.field public static final whitelist IS_OFFICIAL_VERSION:Z

.field public static final whitelist IS_PRE_VERSION:Z

.field public static final blacklist IS_PRIVATE_BUILD:Z

.field public static final blacklist IS_PRIVATE_WATER_MARKER:Z

.field public static final whitelist IS_PRO_DEVICE:Z

.field public static final whitelist IS_STABLE_VERSION:Z

.field public static final whitelist IS_TABLET:Z

.field public static final whitelist IS_TDS_CDMA:Z

.field public static final whitelist IS_XIAOMI:Z

.field private static final blacklist PROP_MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final blacklist REGULAR_EXPRESSION_FOR_DEV:Ljava/lang/String; = "^(V\\d{1,})(\\.\\d{1,})*(\\.DEV)$"

.field private static final blacklist REGULAR_EXPRESSION_FOR_PRE:Ljava/lang/String; = "\\d+(.\\d+){2,}(-internal)?"

.field private static final blacklist REGULAR_EXPRESSION_FOR_STABLE:Ljava/lang/String; = "^(V\\d{1,})(\\.\\d{1,})*(\\.([A-Z]{4,}))$"

.field private static final blacklist TAG:Ljava/lang/String; = "lowmemvalue"

.field public static final whitelist TOTAL_RAM:I

.field public static final blacklist USERDATA_IMAGE_VERSION_CODE:Ljava/lang/String;

.field public static final whitelist USER_MODE:Ljava/lang/String; = "persist.sys.user_mode"

.field public static final whitelist USER_MODE_ELDER:I = 0x1

.field public static final whitelist USER_MODE_NORMAL:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 48
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mione"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "mione_plus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    .line 51
    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "MI 1S"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "MI 1SC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v3, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v3, 0x1

    :goto_32
    sput-boolean v3, Lmiui/os/Build;->IS_MI1S:Z

    .line 54
    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "aries"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "taurus"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "taurus_td"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_55

    :cond_53
    const/4 v3, 0x0

    goto :goto_56

    :cond_55
    :goto_55
    const/4 v3, 0x1

    :goto_56
    sput-boolean v3, Lmiui/os/Build;->IS_MITWO:Z

    .line 57
    sget-object v4, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "MI 2A"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    sget-object v4, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "MI 2A TD"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    goto :goto_6f

    :cond_6d
    const/4 v4, 0x0

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v4, 0x1

    :goto_70
    sput-boolean v4, Lmiui/os/Build;->IS_MI2A:Z

    .line 60
    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "pisces"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "cancro"

    if-nez v4, :cond_93

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    sget-object v4, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "MI 3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_91

    goto :goto_93

    :cond_91
    const/4 v4, 0x0

    goto :goto_94

    :cond_93
    :goto_93
    const/4 v4, 0x1

    :goto_94
    sput-boolean v4, Lmiui/os/Build;->IS_MITHREE:Z

    .line 63
    sget-object v6, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    sget-object v5, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "MI 4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_aa

    const/4 v5, 0x1

    goto :goto_ab

    :cond_aa
    const/4 v5, 0x0

    :goto_ab
    sput-boolean v5, Lmiui/os/Build;->IS_MIFOUR:Z

    .line 66
    sget-object v6, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "virgo"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lmiui/os/Build;->IS_MIFIVE:Z

    .line 69
    if-nez v0, :cond_c4

    if-nez v3, :cond_c4

    if-nez v4, :cond_c4

    if-nez v5, :cond_c4

    if-eqz v6, :cond_c2

    goto :goto_c4

    :cond_c2
    const/4 v6, 0x0

    goto :goto_c5

    :cond_c4
    :goto_c4
    const/4 v6, 0x1

    :goto_c5
    sput-boolean v6, Lmiui/os/Build;->IS_XIAOMI:Z

    .line 75
    sget-object v6, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "mocha"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lmiui/os/Build;->IS_MIPAD:Z

    .line 77
    sget-object v6, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "flo"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lmiui/os/Build;->IS_N7:Z

    .line 84
    sget-object v6, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "armani"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lmiui/os/Build;->IS_HONGMI_TWO_A:Z

    .line 87
    sget-object v7, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "HM2014011"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_fc

    sget-object v7, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "HM2014012"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fa

    goto :goto_fc

    :cond_fa
    const/4 v7, 0x0

    goto :goto_fd

    :cond_fc
    :goto_fc
    const/4 v7, 0x1

    :goto_fd
    sput-boolean v7, Lmiui/os/Build;->IS_HONGMI_TWO_S:Z

    .line 90
    sget-object v8, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v9, "HM2014501"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sput-boolean v8, Lmiui/os/Build;->IS_HONGMI_TWOS_LTE_MTK:Z

    .line 93
    sget-object v9, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v10, "HM2013022"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_124

    sget-object v9, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v11, "HM2013023"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_124

    if-nez v6, :cond_124

    if-eqz v7, :cond_122

    goto :goto_124

    :cond_122
    const/4 v6, 0x0

    goto :goto_125

    :cond_124
    :goto_124
    const/4 v6, 0x1

    :goto_125
    sput-boolean v6, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    .line 97
    sget-object v7, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v9, "lcsh92_wet_jb9"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13e

    sget-object v7, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v9, "lcsh92_wet_tdd"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13c

    goto :goto_13e

    :cond_13c
    const/4 v7, 0x0

    goto :goto_13f

    :cond_13e
    :goto_13e
    const/4 v7, 0x1

    :goto_13f
    sput-boolean v7, Lmiui/os/Build;->IS_HONGMI_THREE:Z

    .line 100
    sget-object v9, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v11, "dior"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    sput-boolean v9, Lmiui/os/Build;->IS_HONGMI_THREE_LTE:Z

    .line 103
    const-string v11, "ro.boot.modem"

    if-eqz v9, :cond_15d

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "LTETD"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15d

    const/4 v12, 0x1

    goto :goto_15e

    :cond_15d
    const/4 v12, 0x0

    :goto_15e
    sput-boolean v12, Lmiui/os/Build;->IS_HONGMI_THREE_LTE_CM:Z

    .line 106
    if-eqz v9, :cond_170

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "LTEW"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_170

    const/4 v11, 0x1

    goto :goto_171

    :cond_170
    const/4 v11, 0x0

    :goto_171
    sput-boolean v11, Lmiui/os/Build;->IS_HONGMI_THREE_LTE_CU:Z

    .line 109
    sget-object v11, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v12, "HM2014811"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    sput-boolean v11, Lmiui/os/Build;->IS_HONGMI_TWOX_CU:Z

    .line 112
    sget-object v12, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v13, "HM2014812"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_194

    sget-object v12, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v13, "HM2014821"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_192

    goto :goto_194

    :cond_192
    const/4 v12, 0x0

    goto :goto_195

    :cond_194
    :goto_194
    const/4 v12, 0x1

    :goto_195
    sput-boolean v12, Lmiui/os/Build;->IS_HONGMI_TWOX_CT:Z

    .line 115
    sget-object v13, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "HM2014813"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1ae

    sget-object v13, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "HM2014112"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1ac

    goto :goto_1ae

    :cond_1ac
    const/4 v13, 0x0

    goto :goto_1af

    :cond_1ae
    :goto_1ae
    const/4 v13, 0x1

    :goto_1af
    sput-boolean v13, Lmiui/os/Build;->IS_HONGMI_TWOX_CM:Z

    .line 118
    sget-object v14, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v15, "HM2014818"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    sput-boolean v14, Lmiui/os/Build;->IS_HONGMI_TWOX_IN:Z

    .line 121
    sget-object v15, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "HM2014817"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lmiui/os/Build;->IS_HONGMI_TWOX_SA:Z

    .line 124
    sget-object v15, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "HM2014819"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lmiui/os/Build;->IS_HONGMI_TWOX_BR:Z

    .line 127
    if-nez v11, :cond_1de

    if-nez v12, :cond_1de

    if-nez v13, :cond_1de

    if-nez v14, :cond_1de

    if-nez v1, :cond_1de

    if-eqz v2, :cond_1dc

    goto :goto_1de

    :cond_1dc
    const/4 v1, 0x0

    goto :goto_1df

    :cond_1de
    :goto_1de
    const/4 v1, 0x1

    :goto_1df
    sput-boolean v1, Lmiui/os/Build;->IS_HONGMI_TWOX:Z

    .line 130
    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v11, "lte26007"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lmiui/os/Build;->IS_HONGMI_TWOX_LC:Z

    .line 133
    sget-object v11, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v12, "gucci"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    sput-boolean v11, Lmiui/os/Build;->IS_HONGMI_THREEX:Z

    .line 136
    const-string v12, "persist.sys.modem"

    const-string v13, "cm"

    if-eqz v11, :cond_207

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_207

    const/4 v14, 0x1

    goto :goto_208

    :cond_207
    const/4 v14, 0x0

    :goto_208
    sput-boolean v14, Lmiui/os/Build;->IS_HONGMI_THREEX_CM:Z

    .line 139
    const-string v14, "cu"

    if-eqz v11, :cond_21a

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_21a

    const/4 v15, 0x1

    goto :goto_21b

    :cond_21a
    const/4 v15, 0x0

    :goto_21b
    sput-boolean v15, Lmiui/os/Build;->IS_HONGMI_THREEX_CU:Z

    .line 142
    const-string v15, "ct"

    if-eqz v11, :cond_22d

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22d

    const/4 v12, 0x1

    goto :goto_22e

    :cond_22d
    const/4 v12, 0x0

    :goto_22e
    sput-boolean v12, Lmiui/os/Build;->IS_HONGMI_THREEX_CT:Z

    .line 146
    if-nez v6, :cond_241

    if-nez v7, :cond_241

    if-nez v1, :cond_241

    if-nez v9, :cond_241

    if-nez v2, :cond_241

    if-nez v8, :cond_241

    if-eqz v11, :cond_23f

    goto :goto_241

    :cond_23f
    const/4 v1, 0x0

    goto :goto_242

    :cond_241
    :goto_241
    const/4 v1, 0x1

    :goto_242
    sput-boolean v1, Lmiui/os/Build;->IS_HONGMI:Z

    .line 153
    if-eqz v0, :cond_24e

    invoke-static {}, Lmiui/os/Build;->hasMsm8660Property()Z

    move-result v0

    if-eqz v0, :cond_24e

    const/4 v0, 0x1

    goto :goto_24f

    :cond_24e
    const/4 v0, 0x0

    :goto_24f
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE_CDMA:Z

    .line 156
    const-string v1, "CDMA"

    const-string v2, "persist.radio.modem"

    if-eqz v3, :cond_263

    .line 157
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 156
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_263

    const/4 v6, 0x1

    goto :goto_264

    :cond_263
    const/4 v6, 0x0

    :goto_264
    sput-boolean v6, Lmiui/os/Build;->IS_MITWO_CDMA:Z

    .line 160
    if-eqz v4, :cond_274

    sget-object v7, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, "MI 3C"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_274

    const/4 v7, 0x1

    goto :goto_275

    :cond_274
    const/4 v7, 0x0

    :goto_275
    sput-boolean v7, Lmiui/os/Build;->IS_MITHREE_CDMA:Z

    .line 163
    if-eqz v5, :cond_285

    .line 164
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 163
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_285

    const/4 v1, 0x1

    goto :goto_286

    :cond_285
    const/4 v1, 0x0

    :goto_286
    sput-boolean v1, Lmiui/os/Build;->IS_MIFOUR_CDMA:Z

    .line 167
    const-string v8, "TD"

    if-eqz v3, :cond_298

    .line 168
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_298

    const/4 v3, 0x1

    goto :goto_299

    :cond_298
    const/4 v3, 0x0

    :goto_299
    sput-boolean v3, Lmiui/os/Build;->IS_MITWO_TDSCDMA:Z

    .line 171
    if-eqz v4, :cond_2a9

    .line 172
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a9

    const/4 v4, 0x1

    goto :goto_2aa

    :cond_2a9
    const/4 v4, 0x0

    :goto_2aa
    sput-boolean v4, Lmiui/os/Build;->IS_MITHREE_TDSCDMA:Z

    .line 175
    if-eqz v5, :cond_2bc

    .line 176
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "LTE-CMCC"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2bc

    const/4 v8, 0x1

    goto :goto_2bd

    :cond_2bc
    const/4 v8, 0x0

    :goto_2bd
    sput-boolean v8, Lmiui/os/Build;->IS_MIFOUR_LTE_CM:Z

    .line 179
    if-eqz v5, :cond_2cf

    .line 180
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "LTE-CU"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2cf

    const/4 v8, 0x1

    goto :goto_2d0

    :cond_2cf
    const/4 v8, 0x0

    :goto_2d0
    sput-boolean v8, Lmiui/os/Build;->IS_MIFOUR_LTE_CU:Z

    .line 183
    if-eqz v5, :cond_2e2

    .line 184
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "LTE-CT"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e2

    const/4 v8, 0x1

    goto :goto_2e3

    :cond_2e2
    const/4 v8, 0x0

    :goto_2e3
    sput-boolean v8, Lmiui/os/Build;->IS_MIFOUR_LTE_CT:Z

    .line 187
    if-eqz v5, :cond_2f5

    .line 188
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "LTE-India"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f5

    const/4 v9, 0x1

    goto :goto_2f6

    :cond_2f5
    const/4 v9, 0x0

    :goto_2f6
    sput-boolean v9, Lmiui/os/Build;->IS_MIFOUR_LTE_INDIA:Z

    .line 191
    if-eqz v5, :cond_308

    .line 192
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "LTE-SEAsa"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_308

    const/4 v2, 0x1

    goto :goto_309

    :cond_308
    const/4 v2, 0x0

    :goto_309
    sput-boolean v2, Lmiui/os/Build;->IS_MIFOUR_LTE_SEASA:Z

    .line 195
    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lmiui/os/Build;->IS_HONGMI2_TDSCDMA:Z

    .line 198
    if-nez v0, :cond_320

    if-nez v6, :cond_320

    if-nez v7, :cond_320

    if-nez v1, :cond_320

    if-eqz v8, :cond_31e

    goto :goto_320

    :cond_31e
    const/4 v0, 0x0

    goto :goto_321

    :cond_320
    :goto_320
    const/4 v0, 0x1

    :goto_321
    sput-boolean v0, Lmiui/os/Build;->IS_CDMA:Z

    .line 201
    if-nez v4, :cond_32c

    if-nez v2, :cond_32c

    if-eqz v3, :cond_32a

    goto :goto_32c

    :cond_32a
    const/4 v0, 0x0

    goto :goto_32d

    :cond_32c
    :goto_32c
    const/4 v0, 0x1

    :goto_32d
    sput-boolean v0, Lmiui/os/Build;->IS_TDS_CDMA:Z

    .line 204
    nop

    .line 205
    const-string v0, "ro.carrier.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    .line 208
    nop

    .line 209
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ro.miui.cust_variant"

    if-eqz v1, :cond_363

    .line 210
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    const-string v3, "cn_chinamobile"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_361

    .line 211
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string v3, "cn_cta"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_363

    :cond_361
    const/4 v1, 0x1

    goto :goto_364

    :cond_363
    const/4 v1, 0x0

    :goto_364
    sput-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    .line 214
    nop

    .line 215
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37f

    .line 216
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v2, "cn_cmcooperation"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37f

    const/4 v1, 0x1

    goto :goto_380

    :cond_37f
    const/4 v1, 0x0

    :goto_380
    sput-boolean v1, Lmiui/os/Build;->IS_CM_COOPERATION:Z

    .line 219
    nop

    .line 220
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    .line 223
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a1

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 225
    const-string v1, "\\d+(.\\d+){2,}(-internal)?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a1

    const/4 v0, 0x1

    goto :goto_3a2

    :cond_3a1
    const/4 v0, 0x0

    :goto_3a2
    sput-boolean v0, Lmiui/os/Build;->IS_PRE_VERSION:Z

    .line 228
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 229
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b8

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 230
    const-string v2, "^(V\\d{1,})(\\.\\d{1,})*(\\.DEV)$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b8

    const/4 v1, 0x1

    goto :goto_3b9

    :cond_3b8
    const/4 v1, 0x0

    :goto_3b9
    sput-boolean v1, Lmiui/os/Build;->IS_DEV_VERSION:Z

    .line 237
    if-nez v0, :cond_3c2

    if-eqz v1, :cond_3c0

    goto :goto_3c2

    :cond_3c0
    const/4 v2, 0x0

    goto :goto_3c3

    :cond_3c2
    :goto_3c2
    const/4 v2, 0x1

    :goto_3c3
    sput-boolean v2, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    .line 240
    sget-object v2, Lmiui/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e3

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 241
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e3

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 242
    const-string v3, "^(V\\d{1,})(\\.\\d{1,})*(\\.([A-Z]{4,}))$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e3

    const/4 v2, 0x1

    goto :goto_3e4

    :cond_3e3
    const/4 v2, 0x0

    :goto_3e4
    sput-boolean v2, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    .line 245
    if-nez v0, :cond_3ef

    if-nez v1, :cond_3ef

    if-eqz v2, :cond_3ed

    goto :goto_3ef

    :cond_3ed
    const/4 v0, 0x0

    goto :goto_3f0

    :cond_3ef
    :goto_3ef
    const/4 v0, 0x1

    :goto_3f0
    sput-boolean v0, Lmiui/os/Build;->IS_OFFICIAL_VERSION:Z

    .line 248
    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_alpha"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    .line 251
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_demo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    sput-boolean v2, Lmiui/os/Build;->IS_DEMO_BUILD:Z

    .line 257
    nop

    .line 258
    const-string v2, "ro.miui.cts"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    const-string v5, "persist.sys.miui_optimization"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v4

    sput-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    .line 267
    sget-boolean v2, Lcom/miui/internal/cust/PrivateConfig;->IS_PRIVATE_BUILD:Z

    sput-boolean v2, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    .line 270
    sget-boolean v2, Lcom/miui/internal/cust/PrivateWaterMarkerConfig;->IS_PRIVATE_WATER_MARKER:Z

    sput-boolean v2, Lmiui/os/Build;->IS_PRIVATE_WATER_MARKER:Z

    .line 273
    nop

    .line 274
    const-string v2, "ro.cust.test"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    .line 277
    nop

    .line 278
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    .line 281
    nop

    .line 282
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    .line 285
    nop

    .line 286
    const-string v2, "persist.sys.func_limit_switch"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lmiui/os/Build;->IS_FUNCTION_LIMITED:Z

    .line 289
    invoke-static {}, Lmiui/os/Build;->getTotalPhysicalRam()I

    move-result v2

    sput v2, Lmiui/os/Build;->TOTAL_RAM:I

    .line 291
    invoke-static {}, Lmiui/os/Build;->isMiuiLiteVersion()Z

    move-result v2

    sput-boolean v2, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    .line 340
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_global"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    sput-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 343
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    .line 348
    invoke-static {}, Lmiui/os/Build;->isTablet()Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    .line 406
    invoke-static {}, Lmiui/os/Build;->getUserdataImageVersionCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/Build;->USERDATA_IMAGE_VERSION_CODE:Ljava/lang/String;

    .line 439
    nop

    .line 440
    const-string v0, "ro.debuggable"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_499

    const/4 v0, 0x1

    goto :goto_49a

    :cond_499
    move v0, v4

    :goto_49a
    sput-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    .line 445
    nop

    .line 446
    const-string v0, "ro.miui.has_cust_partition"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    .line 451
    const-string v0, "ro.miui.cust_device"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    const-string v2, "_pro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_PRO_DEVICE:Z

    .line 458
    const-string v0, "ro.miui.ui.version.code"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    .line 458
    return-void
.end method

.method protected constructor whitelist <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroid/os/Build;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist checkRegion(Ljava/lang/String;)Z
    .registers 2
    .param p0, "region"    # Ljava/lang/String;

    .line 336
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist getCustVariant()Ljava/lang/String;
    .registers 2

    .line 398
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v1, "ro.miui.cust_variant"

    if-nez v0, :cond_d

    .line 399
    const-string v0, "cn"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 401
    :cond_d
    const-string v0, "hk"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist getDeviceLevel(II)I
    .registers 3
    .param p0, "version"    # I
    .param p1, "type"    # I

    .line 537
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 538
    invoke-static {p0}, Lmiui/os/Build;->getDeviceLevelForRAM(I)I

    move-result v0

    return v0

    .line 539
    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    .line 540
    invoke-static {p0}, Lmiui/os/Build;->getDeviceLevelForCPU(I)I

    move-result v0

    return v0

    .line 541
    :cond_10
    const/4 v0, 0x3

    if-ne p1, v0, :cond_18

    .line 542
    invoke-static {p0}, Lmiui/os/Build;->getDeviceLevelForGPU(I)I

    move-result v0

    return v0

    .line 544
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method public static final whitelist getDeviceLevelForAnimation()I
    .registers 2

    .line 493
    sget v0, Lmiui/os/Build;->TOTAL_RAM:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_7

    .line 494
    const/4 v0, 0x1

    return v0

    .line 495
    :cond_7
    const/16 v1, 0x8

    if-gt v0, v1, :cond_d

    .line 496
    const/4 v0, 0x2

    return v0

    .line 498
    :cond_d
    const/4 v0, 0x3

    return v0
.end method

.method private static final blacklist getDeviceLevelForCPU(I)I
    .registers 2
    .param p0, "version"    # I

    .line 516
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 518
    const/4 v0, 0x3

    return v0

    .line 521
    :cond_5
    const/4 v0, -0x1

    return v0
.end method

.method private static final blacklist getDeviceLevelForGPU(I)I
    .registers 2
    .param p0, "version"    # I

    .line 525
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 527
    const/4 v0, 0x3

    return v0

    .line 530
    :cond_5
    const/4 v0, -0x1

    return v0
.end method

.method private static final blacklist getDeviceLevelForRAM(I)I
    .registers 4
    .param p0, "version"    # I

    .line 502
    const/4 v0, 0x1

    if-ne p0, v0, :cond_10

    .line 503
    sget v1, Lmiui/os/Build;->TOTAL_RAM:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_9

    .line 504
    return v0

    .line 505
    :cond_9
    const/4 v0, 0x6

    if-gt v1, v0, :cond_e

    .line 506
    const/4 v0, 0x2

    return v0

    .line 508
    :cond_e
    const/4 v0, 0x3

    return v0

    .line 512
    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method public static final whitelist getMiUiVersionCode()Ljava/lang/String;
    .registers 2

    .line 462
    const-string v0, "ro.miui.ui.version.code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getRegion()Ljava/lang/String;
    .registers 2

    .line 322
    const-string v0, "ro.miui.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final blacklist getTotalPhysicalRam()I
    .registers 8

    .line 478
    :try_start_0
    const-string v0, "miui.util.HardwareInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 479
    .local v0, "clazz":Ljava/lang/Class;
    const-string v1, "getTotalPhysicalMemory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 480
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 481
    .local v2, "totalPhysicalMemory":J
    const-wide/16 v4, 0x400

    div-long v6, v2, v4

    div-long/2addr v6, v4

    div-long/2addr v6, v4
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    long-to-int v4, v6

    .line 482
    .local v4, "memory_G":I
    return v4

    .line 483
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "totalPhysicalMemory":J
    .end local v4    # "memory_G":I
    :catch_1f
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lowmemvalue"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist getUserMode()I
    .registers 2

    .line 376
    const-string v0, "persist.sys.user_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist getUserdataImageVersionCode()Ljava/lang/String;
    .registers 5

    .line 416
    const-string v0, "ro.miui.userdata_version"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "versionCodeProperty":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 418
    const-string v1, "Unavailable"

    return-object v1

    .line 422
    :cond_11
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_18

    .line 423
    const-string v2, "global"

    .local v2, "region":Ljava/lang/String;
    goto :goto_1a

    .line 425
    .end local v2    # "region":Ljava/lang/String;
    :cond_18
    const-string v2, "cn"

    .line 428
    .restart local v2    # "region":Ljava/lang/String;
    :goto_1a
    const-string v3, "ro.carrier.name"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "carrier":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 433
    :cond_39
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const-string v4, "%s(%s%s)"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist hasCameraFlash(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 362
    const-string v0, "support_torch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist hasMsm8660Property()Z
    .registers 2

    .line 352
    const-string v0, "ro.soc.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "soc":Ljava/lang/String;
    const-string v1, "msm8660"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "unkown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    return v1
.end method

.method private static final blacklist isMiuiLiteVersion()Z
    .registers 3

    .line 469
    const-string v0, "ro.config.low_ram.threshold_gb"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 470
    .local v0, "lowmem_value":I
    sget v2, Lmiui/os/Build;->TOTAL_RAM:I

    if-lez v2, :cond_e

    if-gt v2, v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method private static blacklist isTablet()Z
    .registers 2

    .line 358
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUpgradedProduct()Z
    .registers 2

    .line 550
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    if-lez v0, :cond_c

    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist reboot(ZLjava/lang/String;Z)V
    .registers 4
    .param p0, "confim"    # Z
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "wait"    # Z

    .line 387
    :try_start_0
    const-string v0, "power"

    .line 388
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 387
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 389
    .local v0, "powermanager":Landroid/os/IPowerManager;
    if-eqz v0, :cond_f

    .line 390
    invoke-interface {v0, p0, p1, p2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 393
    .end local v0    # "powermanager":Landroid/os/IPowerManager;
    :cond_f
    goto :goto_11

    .line 392
    :catch_10
    move-exception v0

    .line 394
    :goto_11
    return-void
.end method

.method public static whitelist setUserMode(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .line 381
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.user_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, v0}, Lmiui/os/Build;->reboot(ZLjava/lang/String;Z)V

    .line 383
    return-void
.end method
