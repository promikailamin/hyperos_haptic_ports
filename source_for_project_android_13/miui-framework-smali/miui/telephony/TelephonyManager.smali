.class public abstract Lmiui/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/TelephonyManager$Holder;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final whitelist ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final whitelist CALL_STATE_IDLE:I = 0x0

.field public static final whitelist CALL_STATE_OFFHOOK:I = 0x2

.field public static final whitelist CALL_STATE_RINGING:I = 0x1

.field public static final whitelist CF_ACTION_DISABLE:I = 0x0

.field public static final whitelist CF_ACTION_ENABLE:I = 0x1

.field public static final whitelist CF_ACTION_ERASURE:I = 0x4

.field public static final whitelist CF_ACTION_REGISTRATION:I = 0x3

.field public static final whitelist CF_REASON_ALL:I = 0x4

.field public static final whitelist CF_REASON_ALL_CONDITIONAL:I = 0x5

.field public static final whitelist CF_REASON_BUSY:I = 0x1

.field public static final whitelist CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final whitelist CF_REASON_NO_REPLY:I = 0x2

.field public static final whitelist CF_REASON_UNCONDITIONAL:I = 0x0

.field public static final whitelist CT_VOLTE_MODE_HVOLTE:I = 0x2

.field public static final whitelist CT_VOLTE_MODE_NOT_SUPPORT:I = 0x0

.field public static final whitelist CT_VOLTE_MODE_VOLTE_ONLY:I = 0x1

.field public static final whitelist CUSTOMIZED_REGION:Ljava/lang/String;

.field public static final whitelist DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final whitelist DATA_ACTIVITY_IN:I = 0x1

.field public static final whitelist DATA_ACTIVITY_INOUT:I = 0x3

.field public static final whitelist DATA_ACTIVITY_NONE:I = 0x0

.field public static final whitelist DATA_ACTIVITY_OUT:I = 0x2

.field public static final whitelist DATA_CONNECTED:I = 0x2

.field public static final whitelist DATA_CONNECTING:I = 0x1

.field public static final whitelist DATA_DISCONNECTED:I = 0x0

.field public static final whitelist DATA_DOMESTIC_ROAMING:Ljava/lang/String; = "data_domestic_roaming"

.field public static final whitelist DATA_SUSPENDED:I = 0x3

.field public static final whitelist EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final whitelist EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final whitelist EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final whitelist EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final whitelist EXTRA_STATE_RINGING:Ljava/lang/String;

.field private static final blacklist IS_CARRIER_APEX_ENABLED:Z

.field private static final blacklist IS_CARRIER_COTA_ENABLED:Z

.field private static final blacklist IS_CUST_SINGLE_SIM:Z

.field private static final blacklist IS_GOOGLE_CSP:Z

.field public static final whitelist MCC_CHINA:Ljava/lang/String; = "460"

.field public static final whitelist NETWORK_TYPE_1xRTT:I = 0x7

.field public static final whitelist NETWORK_TYPE_CDMA:I = 0x4

.field public static final whitelist NETWORK_TYPE_DC_HSPAP:I = 0x14

.field public static final whitelist NETWORK_TYPE_EDGE:I = 0x2

.field public static final whitelist NETWORK_TYPE_EHRPD:I = 0xe

.field public static final whitelist NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final whitelist NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final whitelist NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final whitelist NETWORK_TYPE_GPRS:I = 0x1

.field public static final whitelist NETWORK_TYPE_HSDPA:I = 0x8

.field public static final whitelist NETWORK_TYPE_HSPA:I = 0xa

.field public static final whitelist NETWORK_TYPE_HSPAP:I = 0xf

.field public static final whitelist NETWORK_TYPE_HSUPA:I = 0x9

.field public static final whitelist NETWORK_TYPE_IDEN:I = 0xb

.field public static final whitelist NETWORK_TYPE_LTE:I = 0xd

.field public static final whitelist NETWORK_TYPE_LTE_CA:I = 0x13

.field public static final whitelist NETWORK_TYPE_UMTS:I = 0x3

.field public static final whitelist NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist OPERATOR_NUMERIC_CHINA_MOBILE:Ljava/lang/String; = "46000"

.field public static final whitelist OPERATOR_NUMERIC_CHINA_TELECOM:Ljava/lang/String; = "46003"

.field public static final whitelist OPERATOR_NUMERIC_CHINA_UNICOM:Ljava/lang/String; = "46001"

.field public static final whitelist PHONE_TYPE_CDMA:I = 0x2

.field public static final whitelist PHONE_TYPE_GSM:I = 0x1

.field public static final whitelist PHONE_TYPE_NONE:I = 0x0

.field public static final whitelist PHONE_TYPE_SIP:I = 0x3

.field public static final whitelist REGION:Ljava/lang/String;

.field public static final whitelist SET_CALL_FOWARD_FAILURE:I = -0x1

.field public static final whitelist SET_CALL_FOWARD_NOT_SUPPORT:I = -0x2

.field public static final whitelist SET_CALL_FOWARD_SUCCESS:I = 0x0

.field public static final whitelist SET_CALL_FOWARD_UT_DATA_DISABLED:I = -0x3

.field public static final whitelist SIM_STATE_ABSENT:I = 0x1

.field public static final whitelist SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final whitelist SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final whitelist SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final whitelist SIM_STATE_READY:I = 0x5

.field public static final whitelist SIM_STATE_UNKNOWN:I = 0x0

.field protected static final blacklist TAG:Ljava/lang/String; = "TeleMgr"

.field private static final blacklist VDF_NUMERICS:[Ljava/lang/String;

.field public static final whitelist VICE_IMS_AUTO_REJECT_SUPPORT:Z


# instance fields
.field private blacklist BUILD_OPERATOR_TYPE:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 148
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 154
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 160
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 342
    const-string v0, "ro.miui.singlesim"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    goto :goto_18

    :cond_17
    move v2, v1

    :goto_18
    sput-boolean v2, Lmiui/telephony/TelephonyManager;->IS_CUST_SINGLE_SIM:Z

    .line 347
    const-string v0, "ro.miui.google.csp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/telephony/TelephonyManager;->IS_GOOGLE_CSP:Z

    .line 353
    const-string v0, "ro.miui.customized.region"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 359
    const-string v0, "ro.miui.build.region"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/TelephonyManager;->REGION:Ljava/lang/String;

    .line 364
    const-string v0, "ro.miui.carrier.apex"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/telephony/TelephonyManager;->IS_CARRIER_APEX_ENABLED:Z

    .line 369
    const-string v0, "ro.miui.carrier.cota"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/telephony/TelephonyManager;->IS_CARRIER_COTA_ENABLED:Z

    .line 375
    const-string v0, "ro.miui.vicegwsd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/telephony/TelephonyManager;->VICE_IMS_AUTO_REJECT_SUPPORT:Z

    .line 396
    const-string v1, "23003"

    const-string v2, "26202"

    const-string v3, "21401"

    const-string v4, "20205"

    const-string v5, "21670"

    const-string v6, "27201"

    const-string v7, "22210"

    const-string v8, "20404"

    const-string v9, "26801"

    const-string v10, "22601"

    const-string v11, "23415"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/TelephonyManager;->VDF_NUMERICS:[Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/TelephonyManager;->BUILD_OPERATOR_TYPE:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static whitelist checkCallingOrSelfPermissionGranted(I)Z
    .registers 3
    .param p0, "callingUid"    # I

    .line 1557
    invoke-static {p0}, Lmiui/telephony/TelephonyManager;->getAppIdUserHandle(I)I

    move-result v0

    .line 1558
    .local v0, "appId":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1b

    .line 1559
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ltz v1, :cond_19

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p0, v1}, Lmiui/telephony/TelephonyManager;->isSameAppUserHandle(II)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_1b

    .line 1562
    :cond_19
    const/4 v1, 0x0

    return v1

    .line 1560
    :cond_1b
    :goto_1b
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist getAppIdUserHandle(I)I
    .registers 2
    .param p0, "callingUid"    # I

    .line 1532
    invoke-static {p0}, Lmiui/os/UserHandleEx;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getCotaCarrierOperator()Ljava/lang/String;
    .registers 2

    .line 1660
    const-string v0, "persist.sys.cota.carrier"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1661
    .local v0, "cotaCarrier":Ljava/lang/String;
    return-object v0
.end method

.method public static whitelist getDefault()Lmiui/telephony/TelephonyManager;
    .registers 1

    .line 56
    sget-object v0, Lmiui/telephony/TelephonyManager$Holder;->INSTANCE:Lmiui/telephony/TelephonyManager;

    return-object v0
.end method

.method public static whitelist isBuildRegionForTaiWan()Z
    .registers 2

    .line 1716
    sget-object v0, Lmiui/telephony/TelephonyManager;->REGION:Ljava/lang/String;

    const-string v1, "tw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isCarrierApexEnabled()Z
    .registers 1

    .line 1931
    sget-boolean v0, Lmiui/telephony/TelephonyManager;->IS_CARRIER_APEX_ENABLED:Z

    return v0
.end method

.method public static blacklist isCarrierCotaSupported()Z
    .registers 1

    .line 1939
    sget-boolean v0, Lmiui/telephony/TelephonyManager;->IS_CARRIER_COTA_ENABLED:Z

    return v0
.end method

.method public static blacklist isCustForBYG()Z
    .registers 3

    .line 1681
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getCotaCarrierOperator()Ljava/lang/String;

    move-result-object v0

    .line 1682
    .local v0, "cotaCarrier":Ljava/lang/String;
    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v2, "eea_by"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "BY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static whitelist isCustForClEntel()Z
    .registers 3

    .line 1708
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getCotaCarrierOperator()Ljava/lang/String;

    move-result-object v0

    .line 1709
    .local v0, "cotaCarrier":Ljava/lang/String;
    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v2, "cl_entel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "cl_en"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1710
    const-string v1, "EN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v1, 0x1

    .line 1709
    :goto_22
    return v1
.end method

.method public static whitelist isCustForEsTelefonica()Z
    .registers 2

    .line 1646
    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "es_telefonica"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isCustForEsVodafone()Z
    .registers 3

    .line 1650
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getCotaCarrierOperator()Ljava/lang/String;

    move-result-object v0

    .line 1651
    .local v0, "cotaCarrier":Ljava/lang/String;
    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v2, "es_vodafone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "VF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static whitelist isCustForFrOrange()Z
    .registers 3

    .line 1686
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getCotaCarrierOperator()Ljava/lang/String;

    move-result-object v0

    .line 1687
    .local v0, "cotaCarrier":Ljava/lang/String;
    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v2, "fr_orange"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "OR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static whitelist isCustForFrRussia()Z
    .registers 2

    .line 1704
    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "ru"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isCustForFrSfr()Z
    .registers 3

    .line 1695
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getCotaCarrierOperator()Ljava/lang/String;

    move-result-object v0

    .line 1696
    .local v0, "cotaCarrier":Ljava/lang/String;
    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v2, "fr_sfr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "SF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static whitelist isCustForHkH3g()Z
    .registers 3

    .line 1673
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getCotaCarrierOperator()Ljava/lang/String;

    move-result-object v0

    .line 1674
    .local v0, "cotaCarrier":Ljava/lang/String;
    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v2, "hk_h3g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "HG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static whitelist isCustForJpKd()Z
    .registers 2

    .line 1829
    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "jp_kd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isCustForJpSb()Z
    .registers 2

    .line 1833
    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "jp_sb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isCustForKrKt()Z
    .registers 2

    .line 1773
    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "kr_kt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isCustForKrLgu()Z
    .registers 2

    .line 1777
    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "kr_lgu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isCustForKrOps()Z
    .registers 1

    .line 1781
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForKrSkt()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForKrKt()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForKrLgu()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static whitelist isCustForKrSkt()Z
    .registers 2

    .line 1769
    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "kr_skt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isCustForLmClaro()Z
    .registers 2

    .line 1700
    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "lm_cr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isCustForMTN()Z
    .registers 3

    .line 1655
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getCotaCarrierOperator()Ljava/lang/String;

    move-result-object v0

    .line 1656
    .local v0, "cotaCarrier":Ljava/lang/String;
    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v2, "za_mt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "MT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static whitelist isCustForMxAt()Z
    .registers 2

    .line 1669
    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "mx_at"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isCustForMxTelcel()Z
    .registers 2

    .line 1665
    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "mx_telcel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isCustForTurkCell()Z
    .registers 2

    .line 1691
    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "tr_turkcell"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isCustSingleSimDevice()Z
    .registers 1

    .line 1566
    sget-boolean v0, Lmiui/telephony/TelephonyManager;->IS_CUST_SINGLE_SIM:Z

    return v0
.end method

.method public static whitelist isDomesticRoamingEnable(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1549
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_domestic_roaming"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public static whitelist isFiveSignalBarsSupported()Z
    .registers 3

    .line 1837
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpKd()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "XIG03"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "XIG04"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    return v1

    .line 1838
    :cond_1c
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpSb()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpKd()Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "XIG02"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_32
    const/4 v1, 0x1

    :cond_33
    return v1
.end method

.method public static whitelist isForEEA()Z
    .registers 2

    .line 1745
    sget-object v0, Lmiui/telephony/TelephonyManager;->REGION:Ljava/lang/String;

    const-string v1, "eea"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isForEEAHasSubnetVDF()Z
    .registers 7

    .line 1749
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isForEEA()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1750
    return v1

    .line 1752
    :cond_8
    const-string v0, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1753
    .local v0, "numeric":Ljava/lang/String;
    sget-object v2, Lmiui/telephony/TelephonyManager;->VDF_NUMERICS:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_14
    if-ge v4, v3, :cond_23

    aget-object v5, v2, v4

    .line 1754
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1755
    const/4 v1, 0x1

    return v1

    .line 1753
    .end local v5    # "str":Ljava/lang/String;
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1758
    :cond_23
    return v1
.end method

.method public static blacklist isForJp()Z
    .registers 2

    .line 1825
    sget-object v0, Lmiui/telephony/TelephonyManager;->REGION:Ljava/lang/String;

    const-string v1, "jp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isGoogleCsp()Z
    .registers 1

    .line 1623
    sget-boolean v0, Lmiui/telephony/TelephonyManager;->IS_GOOGLE_CSP:Z

    return v0
.end method

.method private static blacklist isSameAppUserHandle(II)Z
    .registers 3
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .line 1536
    invoke-static {p0, p1}, Lmiui/os/UserHandleEx;->isSameApp(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSupportDomesticRoaming()Z
    .registers 1

    .line 1540
    const-string v0, "PL"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isViceImsAutoRejectSupport()Z
    .registers 1

    .line 1978
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lmiui/telephony/TelephonyManager;->VICE_IMS_AUTO_REJECT_SUPPORT:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static whitelist setDomesticRoamingEnable(Landroid/content/Context;Z)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z

    .line 1553
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_domestic_roaming"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract whitelist getCallState()I
.end method

.method public abstract whitelist getCallStateForSlot(I)I
.end method

.method public abstract whitelist getCallStateForSubscription(I)I
.end method

.method public abstract whitelist getCellLocationForSlot(I)Landroid/telephony/CellLocation;
.end method

.method public blacklist getCotaOpconfigVersionCode()J
    .registers 3

    .line 1955
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getCotaOpconfigVersionName()Ljava/lang/String;
    .registers 2

    .line 1947
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCtVolteSupportedMode()I
    .registers 2

    .line 1449
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist getDataActivity()I
.end method

.method public abstract whitelist getDataActivityForSlot(I)I
.end method

.method public abstract whitelist getDataActivityForSubscription(I)I
.end method

.method public abstract whitelist getDataState()I
.end method

.method public abstract whitelist getDataStateForSlot(I)I
.end method

.method public abstract whitelist getDataStateForSubscription(I)I
.end method

.method public abstract whitelist getDeviceId()Ljava/lang/String;
.end method

.method public abstract whitelist getDeviceIdForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getDeviceIdForSubscription(I)Ljava/lang/String;
.end method

.method public whitelist getDeviceIdList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 488
    const-string v0, "TelephonyManager"

    const-string v1, "unexpected getDeviceIdList method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getDeviceSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract whitelist getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
.end method

.method public whitelist getEsimGPIOState()I
    .registers 2

    .line 2020
    const v0, 0xffff

    return v0
.end method

.method public whitelist getIccCardCount()I
    .registers 5

    .line 410
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 411
    .local v0, "max":I
    const/4 v1, 0x0

    .line 412
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_13

    .line 413
    invoke-virtual {p0, v2}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 414
    add-int/lit8 v1, v1, 0x1

    .line 412
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 417
    .end local v2    # "i":I
    :cond_13
    return v1
.end method

.method public abstract whitelist getImei()Ljava/lang/String;
.end method

.method public abstract whitelist getImeiForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getImeiForSubscription(I)Ljava/lang/String;
.end method

.method public whitelist getImeiList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public abstract whitelist getLine1Number()Ljava/lang/String;
.end method

.method public abstract whitelist getLine1NumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getLine1NumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract whitelist getMeid()Ljava/lang/String;
.end method

.method public abstract whitelist getMeidForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getMeidForSubscription(I)Ljava/lang/String;
.end method

.method public whitelist getMeidList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public abstract whitelist getMiuiDeviceId()Ljava/lang/String;
.end method

.method public abstract whitelist getMiuiLevel(Landroid/telephony/SignalStrength;)I
.end method

.method public whitelist getMobileNetworkCapability(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 1985
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getNetworkClassName(I)Ljava/lang/String;
    .registers 3
    .param p1, "networkType"    # I

    .line 2074
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getNetworkCountryIso()Ljava/lang/String;
.end method

.method public abstract whitelist getNetworkCountryIsoForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
.end method

.method public abstract whitelist getNetworkOperator()Ljava/lang/String;
.end method

.method public abstract whitelist getNetworkOperatorForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getNetworkOperatorForSubscription(I)Ljava/lang/String;
.end method

.method public abstract whitelist getNetworkOperatorName()Ljava/lang/String;
.end method

.method public abstract whitelist getNetworkOperatorNameForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
.end method

.method public abstract whitelist getNetworkType()I
.end method

.method public abstract whitelist getNetworkTypeForSlot(I)I
.end method

.method public abstract whitelist getNetworkTypeForSubscription(I)I
.end method

.method public whitelist getNrConfigType()I
    .registers 2

    .line 1726
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getNrConfigType(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 1730
    const/4 v0, -0x1

    return v0
.end method

.method public abstract whitelist getPhoneCount()I
.end method

.method public abstract whitelist getPhoneType()I
.end method

.method public abstract whitelist getPhoneTypeForSlot(I)I
.end method

.method public abstract whitelist getPhoneTypeForSubscription(I)I
.end method

.method public whitelist getProductEid()Ljava/lang/String;
    .registers 2

    .line 2028
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getSimCountryIso()Ljava/lang/String;
.end method

.method public abstract whitelist getSimCountryIsoForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getSimCountryIsoForSubscription(I)Ljava/lang/String;
.end method

.method public abstract whitelist getSimOperator()Ljava/lang/String;
.end method

.method public abstract whitelist getSimOperatorForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getSimOperatorForSubscription(I)Ljava/lang/String;
.end method

.method public abstract whitelist getSimOperatorName()Ljava/lang/String;
.end method

.method public abstract whitelist getSimOperatorNameForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getSimOperatorNameForSubscription(I)Ljava/lang/String;
.end method

.method public abstract whitelist getSimSerialNumber()Ljava/lang/String;
.end method

.method public abstract whitelist getSimSerialNumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getSimSerialNumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract whitelist getSimState()I
.end method

.method public abstract whitelist getSimStateForSlot(I)I
.end method

.method public abstract whitelist getSimStateForSubscription(I)I
.end method

.method public abstract whitelist getSmallDeviceId()Ljava/lang/String;
.end method

.method public whitelist getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "longName"    # Z

    .line 1482
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only support android L and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getSubscriberId()Ljava/lang/String;
.end method

.method public abstract whitelist getSubscriberIdForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getSubscriberIdForSubscription(I)Ljava/lang/String;
.end method

.method public abstract whitelist getVoiceMailAlphaTag()Ljava/lang/String;
.end method

.method public abstract whitelist getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
.end method

.method public abstract whitelist getVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract whitelist getVoiceMailNumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract whitelist getVoiceMailNumberForSubscription(I)Ljava/lang/String;
.end method

.method public whitelist getWifiApState()I
    .registers 2

    .line 2092
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getXMNetworkType()I
    .registers 2

    .line 1737
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getXMNetworkType(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 1741
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist hasIccCard()Z
.end method

.method public abstract whitelist hasIccCard(I)Z
.end method

.method public whitelist isChinaTelecomTest(Ljava/lang/String;)Z
    .registers 4
    .param p1, "numeric"    # Ljava/lang/String;

    .line 1630
    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1631
    const-string v0, "46003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "46011"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "45502"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1632
    const-string v0, "45507"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "00101"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "20404"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_3b
    const/4 v1, 0x1

    .line 1631
    :cond_3c
    return v1

    .line 1634
    :cond_3d
    return v1
.end method

.method public whitelist isCmccCooperationDevice()Z
    .registers 2

    .line 1456
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCotaOpconfigUsed()Z
    .registers 2

    .line 1963
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCustForKrAndKrSimInserted()Z
    .registers 2

    .line 1765
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForKrOps()Z

    move-result v0

    if-nez v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_12

    :cond_a
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManager;->isKrSim()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist isDisableLte(Z)Z
    .registers 9
    .param p1, "checkSim"    # Z

    .line 1512
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1513
    return v1

    .line 1516
    :cond_6
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "ido"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "kenzo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    move v0, v1

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v0, v2

    .line 1517
    .local v0, "disableDevice":Z
    :goto_1f
    if-eqz v0, :cond_3e

    if-nez p1, :cond_24

    goto :goto_3e

    .line 1520
    :cond_24
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 1521
    .local v3, "phoneCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_29
    if-ge v4, v3, :cond_3d

    .line 1522
    invoke-virtual {p0, v4}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v5

    .line 1524
    .local v5, "numeric":Ljava/lang/String;
    if-eqz v5, :cond_3a

    const-string v6, "510"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 1525
    return v2

    .line 1521
    .end local v5    # "numeric":Ljava/lang/String;
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 1528
    .end local v4    # "i":I
    :cond_3d
    return v1

    .line 1518
    .end local v3    # "phoneCount":I
    :cond_3e
    :goto_3e
    return v0
.end method

.method public whitelist isDualNrEnabled()Z
    .registers 2

    .line 1442
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isDualNrSupported()Z
    .registers 2

    .line 1412
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDualSaEnabled()Z
    .registers 2

    .line 1910
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isDualSaSupported()Z
    .registers 2

    .line 1419
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isDualVolteSupported()Z
    .registers 2

    .line 1405
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEsimActive()Z
    .registers 2

    .line 2037
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isFiveGCapable()Z
    .registers 2

    .line 1917
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isGameFiveGOptimizeSupported()Z
    .registers 2

    .line 1924
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isGwsdSupport()Z
    .registers 2

    .line 1642
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isImsRegistered(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .line 1335
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isKrKtSim(I)Z
    .registers 4
    .param p1, "slotId"    # I

    .line 1806
    invoke-virtual {p0, p1}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "45008"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isKrLguSim(I)Z
    .registers 4
    .param p1, "slotId"    # I

    .line 1818
    invoke-virtual {p0, p1}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "45006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isKrSim()Z
    .registers 4

    .line 1788
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 1789
    .local v0, "phoneCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_12

    .line 1790
    invoke-virtual {p0, v1}, Lmiui/telephony/TelephonyManager;->isKrSim(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1791
    const/4 v2, 0x1

    return v2

    .line 1789
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1794
    .end local v1    # "i":I
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isKrSim(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 1800
    invoke-virtual {p0, p1}, Lmiui/telephony/TelephonyManager;->isKrKtSim(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, p1}, Lmiui/telephony/TelephonyManager;->isKrLguSim(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, p1}, Lmiui/telephony/TelephonyManager;->isKrSktSim(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public blacklist isKrSktSim(I)Z
    .registers 4
    .param p1, "slotId"    # I

    .line 1812
    invoke-virtual {p0, p1}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "45005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract whitelist isMultiSimEnabled()Z
.end method

.method public blacklist isNrCaSupported()Z
    .registers 2

    .line 1428
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRelayCallSupported()Z
    .registers 2

    .line 2056
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "anotherNumeric"    # Ljava/lang/String;

    .line 1477
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only support android L and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isSupportEsimForCountry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 2046
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUserFiveGEnabled()Z
    .registers 2

    .line 1845
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUserFiveGEnabled(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 1852
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUserFiveGSaEnabled()Z
    .registers 2

    .line 1873
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUserFiveGSaEnabled(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 1880
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVideoTelephonyAvailable(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .line 1390
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVoNRSupported()Z
    .registers 2

    .line 1435
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist isVoiceCapable()Z
.end method

.method public whitelist isVolteEnabledByPlatform()Z
    .registers 2

    .line 1374
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVolteEnabledByPlatform(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 1382
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVolteEnabledByUser()Z
    .registers 2

    .line 1342
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVolteEnabledByUser(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 1351
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVtEnabledByPlatform()Z
    .registers 2

    .line 1358
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVtEnabledByPlatform(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 1366
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isWifiCallingAvailable(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .line 1398
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist listen(Landroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract whitelist listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract whitelist listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
.end method

.method public whitelist nvReadItem(I)Ljava/lang/String;
    .registers 3
    .param p1, "itemID"    # I

    .line 2065
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "action"    # I
    .param p3, "reason"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ResultReceiver;

    .line 1603
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setCallForwardingOption not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCotaOpconfigUsed(Z)Z
    .registers 3
    .param p1, "used"    # Z

    .line 1971
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDualSaEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1903
    return-void
.end method

.method public whitelist setEnhanced4gLteModeSetting(Landroid/content/Context;ZI)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .param p3, "subId"    # I

    .line 2085
    return-void
.end method

.method public whitelist setEsimState(I)I
    .registers 3
    .param p1, "state"    # I

    .line 2008
    const v0, 0xffff

    return v0
.end method

.method public whitelist setIccCardActivate(IZ)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "isActivate"    # Z

    .line 1616
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only support android L and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMobileNetworkCapability(Ljava/lang/String;)V
    .registers 2
    .param p1, "nwCapability"    # Ljava/lang/String;

    .line 1993
    return-void
.end method

.method public whitelist setUserFiveGEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1860
    return-void
.end method

.method public whitelist setUserFiveGEnabled(ZI)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "slotId"    # I

    .line 1867
    return-void
.end method

.method public whitelist setUserFiveGSaEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1888
    return-void
.end method

.method public whitelist setUserFiveGSaEnabled(ZI)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "slotId"    # I

    .line 1895
    return-void
.end method
