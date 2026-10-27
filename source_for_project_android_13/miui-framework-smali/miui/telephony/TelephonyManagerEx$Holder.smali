.class Lmiui/telephony/TelephonyManagerEx$Holder;
.super Ljava/lang/Object;
.source "TelephonyManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/TelephonyManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static final blacklist CONTEXT:Landroid/content/Context;

.field static final blacklist CT_VOLTE_SUPPORTED_MODE:I

.field static final blacklist INSTANCE:Lmiui/telephony/TelephonyManagerEx;

.field static final blacklist IS_700M_SUPPORTED_HW:Z

.field static final blacklist IS_700M_SUPPORTED_SW:Z

.field static final blacklist IS_AIRPORT_OPTIMIZATION_SUPPORTED:Z

.field static final blacklist IS_BWP_SUPPORTED:Z

.field static final blacklist IS_CARRIER_AGGREGATION_SUPPORTED:Ljava/lang/String;

.field static final blacklist IS_CDMA_DATA_OPTIMIZE_SUPPORTED:Z

.field static final blacklist IS_CMCC_COOPERATION_DEVICE:Z

.field static final blacklist IS_DSDA_SUPPORTED:Z

.field static final blacklist IS_DUAL_DATA_SUPPORTED:Z

.field static final blacklist IS_DUAL_NR_SUPPORTED:Z

.field static final blacklist IS_DUAL_SA_SUPPORTED:Z

.field static final blacklist IS_DUAL_VOLTE_SUPPORTED:Z

.field static final blacklist IS_ENABLE_DUAL_SA:Z

.field static final blacklist IS_FOREIGN_ROAMING_SUPPORTED:Z

.field static final blacklist IS_GLOBAL_CRBT_SUPPORTED:Z

.field static final blacklist IS_HIDE_FIVEG_AND_NETWORK:Z

.field static final blacklist IS_HIKING_OPTIMIZATION_SUPPORTED:Z

.field static final blacklist IS_MIEVENT_SUPPORTED:Z

.field static final blacklist IS_MIMO_SUPPORTED:Z

.field static final blacklist IS_N1_SUPPORTED:Z

.field static final blacklist IS_N28_SUPPORTED:Z

.field static final blacklist IS_N5_SUPPORTED:Z

.field static final blacklist IS_N8_SUPPORTED:Z

.field static final blacklist IS_NR_CA_SUPPORTED:Z

.field static final blacklist IS_QMS_SUPPORT:Z

.field static final blacklist IS_R16_5G_SUPPORTED:Z

.field static final blacklist IS_RELAY_CALL_SUPPORTED:Z

.field static final blacklist IS_SA_POWER_OPTIMIZATION_SUPPORTED:Z

.field static final blacklist IS_SA_SUPPORTED_HW:Z

.field static final blacklist IS_SA_SUPPORTED_SW:Z

.field static final blacklist IS_SUBWAY_OPTIMIZATION_SUPPORTED:Z

.field static final blacklist IS_UPDATE_MESUBWAY_BY_CLOUD_SUPPORTED:Z

.field static final blacklist IS_UPDATE_SATELLITE_BY_CLOUD_SUPPORTED:Z

.field static final blacklist IS_USE_SA_OPTION3_MTK:Z

.field static final blacklist IS_VONR_PLUS_SUPPORTED:Z

.field static final blacklist IS_VONR_SUPPORTED:Z

.field static final blacklist PHONE_COUNT:I

.field static final blacklist SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

.field static final blacklist TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 57
    new-instance v0, Lmiui/telephony/TelephonyManagerEx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/telephony/TelephonyManagerEx;-><init>(Lmiui/telephony/TelephonyManagerEx-IA;)V

    sput-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->INSTANCE:Lmiui/telephony/TelephonyManagerEx;

    .line 59
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    sput-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    .line 61
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    .line 63
    nop

    .line 64
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    .line 65
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    sput v1, Lmiui/telephony/TelephonyManagerEx$Holder;->PHONE_COUNT:I

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_DUAL_VOLTE_SUPPORTED:Z

    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_DUAL_NR_SUPPORTED:Z

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_DUAL_SA_SUPPORTED:Z

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_USE_SA_OPTION3_MTK:Z

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_NR_CA_SUPPORTED:Z

    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_VONR_SUPPORTED:Z

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_SA_POWER_OPTIMIZATION_SUPPORTED:Z

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lmiui/telephony/TelephonyManagerEx$Holder;->CT_VOLTE_SUPPORTED_MODE:I

    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_CMCC_COOPERATION_DEVICE:Z

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_MIMO_SUPPORTED:Z

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_CDMA_DATA_OPTIMIZE_SUPPORTED:Z

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_DUAL_DATA_SUPPORTED:Z

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_AIRPORT_OPTIMIZATION_SUPPORTED:Z

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_SUBWAY_OPTIMIZATION_SUPPORTED:Z

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_HIKING_OPTIMIZATION_SUPPORTED:Z

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_QMS_SUPPORT:Z

    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_MIEVENT_SUPPORTED:Z

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_RELAY_CALL_SUPPORTED:Z

    .line 87
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_N1_SUPPORTED:Z

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_N5_SUPPORTED:Z

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_N8_SUPPORTED:Z

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_N28_SUPPORTED:Z

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_BWP_SUPPORTED:Z

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_ENABLE_DUAL_SA:Z

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_DSDA_SUPPORTED:Z

    .line 94
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_HIDE_FIVEG_AND_NETWORK:Z

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_GLOBAL_CRBT_SUPPORTED:Z

    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_700M_SUPPORTED_SW:Z

    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_700M_SUPPORTED_HW:Z

    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110f00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_CARRIER_AGGREGATION_SUPPORTED:Ljava/lang/String;

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_FOREIGN_ROAMING_SUPPORTED:Z

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_R16_5G_SUPPORTED:Z

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_SA_SUPPORTED_SW:Z

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_SA_SUPPORTED_HW:Z

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_VONR_PLUS_SUPPORTED:Z

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_UPDATE_MESUBWAY_BY_CLOUD_SUPPORTED:Z

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11050050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_UPDATE_SATELLITE_BY_CLOUD_SUPPORTED:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
