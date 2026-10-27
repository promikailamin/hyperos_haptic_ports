.class public Lmiui/telephony/TelephonyManagerEx;
.super Lmiui/telephony/TelephonyManager;
.source "TelephonyManagerEx.java"

# interfaces
.implements Landroid/telephony/IMiuiTelephonyManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/TelephonyManagerEx$Holder;
    }
.end annotation


# static fields
.field public static final blacklist NETWORK_CLASS_2_G:J = 0x804bL

.field public static final blacklist NETWORK_CLASS_2_G_NAME:Ljava/lang/String; = "2G"

.field public static final blacklist NETWORK_CLASS_3_G:J = 0x16bb4L

.field public static final blacklist NETWORK_CLASS_3_G_NAME:Ljava/lang/String; = "3G"

.field public static final blacklist NETWORK_CLASS_4_G:J = 0x61000L

.field public static final blacklist NETWORK_CLASS_4_G_NAME:Ljava/lang/String; = "4G"

.field public static final blacklist NETWORK_CLASS_5_G:J = 0x80000L

.field public static final blacklist NETWORK_CLASS_5_G_NAME:Ljava/lang/String; = "5G"

.field public static final blacklist NETWORK_CLASS_UNKNOWN:J = 0x0L

.field public static final blacklist NETWORK_CLASS_UNKNOWN_NAME:Ljava/lang/String; = "UNKNOWN"

.field public static final blacklist NETWORK_TYPE_GSM:I = 0x10

.field public static final blacklist NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final blacklist PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field public static final blacklist PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field private static final blacklist TAG:Ljava/lang/String; = "TelephonyManager"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Lmiui/telephony/TelephonyManager;-><init>()V

    .line 111
    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/telephony/TelephonyManagerEx-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;-><init>()V

    return-void
.end method

.method private static blacklist getCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1709
    const/4 v0, 0x0

    .line 1710
    .local v0, "countryIso":Ljava/lang/String;
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 1711
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_15

    .line 1712
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    .line 1713
    .local v2, "country":Landroid/location/Country;
    if-eqz v2, :cond_15

    .line 1714
    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1717
    .end local v2    # "country":Landroid/location/Country;
    :cond_15
    if-nez v0, :cond_3d

    .line 1718
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1719
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TelephonyManager"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_3d
    return-object v0
.end method

.method public static blacklist getDefault()Lmiui/telephony/TelephonyManagerEx;
    .registers 1

    .line 122
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->INSTANCE:Lmiui/telephony/TelephonyManagerEx;

    return-object v0
.end method

.method private blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .line 114
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNetworkClassNameByNetworkClass(J)Ljava/lang/String;
    .registers 7
    .param p0, "networkClass"    # J

    .line 705
    const-string v0, "UNKNOWN"

    .line 706
    .local v0, "networkClassName":Ljava/lang/String;
    const-wide/32 v1, 0x804b

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f

    .line 707
    const-string v0, "2G"

    goto :goto_2f

    .line 708
    :cond_f
    const-wide/32 v1, 0x16bb4

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1a

    .line 709
    const-string v0, "3G"

    goto :goto_2f

    .line 710
    :cond_1a
    const-wide/32 v1, 0x61000

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_25

    .line 711
    const-string v0, "4G"

    goto :goto_2f

    .line 712
    :cond_25
    const-wide/32 v1, 0x80000

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2f

    .line 713
    const-string v0, "5G"

    .line 715
    :cond_2f
    :goto_2f
    return-object v0
.end method

.method private blacklist getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .registers 2

    .line 118
    const-string v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 1679
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumberInternal(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist isLocalEmergencyNumberInternal(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .line 1728
    invoke-static {p0}, Lmiui/telephony/TelephonyManagerEx;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1729
    .local v0, "defaultCountryIso":Ljava/lang/String;
    const-string v1, "IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "TelephonyManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_47

    .line 1730
    const-string v1, "100"

    const-string v4, "101"

    const-string v5, "102"

    const-string v6, "108"

    filled-new-array {v1, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    .line 1731
    .local v1, "INemergencyNumbers":[Ljava/lang/String;
    array-length v4, v1

    move v5, v3

    :goto_1d
    if-ge v5, v4, :cond_47

    aget-object v6, v1, v5

    .line 1732
    .local v6, "INemergencyNum":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 1733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLocalEmergencyNumberInternal :number:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a real IN emergency number,return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    return v3

    .line 1731
    .end local v6    # "INemergencyNum":Ljava/lang/String;
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 1738
    .end local v1    # "INemergencyNumbers":[Ljava/lang/String;
    :cond_47
    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->INSTANCE:Lmiui/telephony/TelephonyManagerEx;

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v1

    .line 1739
    .local v1, "phoneCount":I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_5c

    .line 1740
    if-eqz p2, :cond_57

    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_5b

    .line 1741
    :cond_57
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 1740
    :goto_5b
    return v2

    .line 1745
    :cond_5c
    const-string v4, "IT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_6d

    const-string v4, "MM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 1746
    :cond_6d
    const/4 v4, 0x0

    .line 1747
    .local v4, "count":I
    const/4 v6, -0x1

    .line 1748
    .local v6, "validSlot":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_70
    if-ge v7, v1, :cond_81

    .line 1749
    sget-object v8, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_7e

    .line 1750
    add-int/lit8 v4, v4, 0x1

    .line 1751
    move v6, v7

    .line 1748
    :cond_7e
    add-int/lit8 v7, v7, 0x1

    goto :goto_70

    .line 1754
    .end local v7    # "i":I
    :cond_81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLocalEmergencyNumberInternal : in Italy or Myanmar,insert "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sim card, validSlot is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    if-ne v4, v5, :cond_bb

    .line 1756
    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v2, v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v2

    .line 1757
    .local v2, "subId":I
    if-eqz p2, :cond_b1

    invoke-static {p0, v2, p1}, Lmiui/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b9

    :cond_b1
    if-nez p2, :cond_ba

    .line 1758
    invoke-static {p0, v2, p1}, Lmiui/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 1760
    :cond_b9
    return v5

    .line 1762
    :cond_ba
    return v3

    .line 1766
    .end local v2    # "subId":I
    .end local v4    # "count":I
    .end local v6    # "validSlot":I
    :cond_bb
    const/4 v2, 0x0

    .local v2, "slotId":I
    :goto_bc
    if-ge v2, v1, :cond_d8

    .line 1767
    sget-object v4, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v4, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v4

    .line 1768
    .local v4, "subId":I
    if-eqz p2, :cond_cc

    invoke-static {p0, v4, p1}, Lmiui/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d4

    :cond_cc
    if-nez p2, :cond_d5

    .line 1769
    invoke-static {p0, v4, p1}, Lmiui/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d5

    .line 1771
    :cond_d4
    return v5

    .line 1766
    .end local v4    # "subId":I
    :cond_d5
    add-int/lit8 v2, v2, 0x1

    goto :goto_bc

    .line 1774
    .end local v2    # "slotId":I
    :cond_d8
    return v3
.end method

.method public static blacklist isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 1705
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumberInternal(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist normalizeSlotId(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 126
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p1, v0, :cond_b

    .line 127
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    return v0

    .line 130
    :cond_b
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 131
    const/4 p1, 0x0

    .line 133
    :cond_12
    return p1
.end method

.method private blacklist normalizeSubscriptionId(I)I
    .registers 3
    .param p1, "subId"    # I

    .line 137
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v0, :cond_b

    .line 138
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    return v0

    .line 140
    :cond_b
    return p1
.end method


# virtual methods
.method public blacklist answerRingingCall()V
    .registers 4

    .line 1198
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1201
    goto :goto_16

    .line 1199
    :catch_e
    move-exception v0

    .line 1200
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelecomService#acceptRingingCall"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1202
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist cancelMissedCallsNotification()V
    .registers 4

    .line 1173
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->cancelMissedCallsNotification(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1176
    goto :goto_16

    .line 1174
    :catch_e
    move-exception v0

    .line 1175
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error call ITelecomService#cancelMissedCallsNotification"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1177
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist enableDataConnectivity()Z
    .registers 2

    .line 1242
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public blacklist enableDataConnectivityForSlot(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 1246
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_e

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    .line 1247
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 1248
    const/4 v0, 0x0

    return v0

    .line 1251
    :cond_e
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public blacklist enableDataConnectivityForSubscription(I)Z
    .registers 3
    .param p1, "subId"    # I

    .line 1255
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq p1, v0, :cond_e

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    .line 1256
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 1257
    const/4 v0, 0x0

    return v0

    .line 1260
    :cond_e
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public blacklist endCall()Z
    .registers 4

    .line 1189
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->endCall(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 1190
    :catch_f
    move-exception v0

    .line 1191
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelecomService#endCall"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1193
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllCellInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 411
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getAllCellInfoForSubscription(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAllCellInfoForSlot(I)Ljava/util/List;
    .registers 3
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 436
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getAllCellInfoForSubscription(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAllCellInfoForSubscription(I)Ljava/util/List;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 461
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAllEsimProfiles()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;"
        }
    .end annotation

    .line 2111
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 2112
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_11

    :cond_d
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->getAllEsimProfiles()Ljava/util/List;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    :goto_11
    return-object v2

    .line 2113
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_12
    move-exception v1

    .line 2114
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "getAllEsimProfiles exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2116
    .end local v1    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1
.end method

.method public whitelist getCallState()I
    .registers 2

    .line 895
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public whitelist getCallStateForSlot(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 900
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getCallStateForSubscription(I)I

    move-result v0

    return v0
.end method

.method public whitelist getCallStateForSubscription(I)I
    .registers 4
    .param p1, "subId"    # I

    .line 905
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public blacklist getCellLocation()Landroid/telephony/CellLocation;
    .registers 2

    .line 312
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCellLocationForSlot(I)Landroid/telephony/CellLocation;
    .registers 8
    .param p1, "slotId"    # I

    .line 335
    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v2

    .line 336
    .local v2, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v2, :cond_a

    .line 337
    return-object v1

    .line 339
    :cond_a
    sget-object v3, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lmiui/telephony/IMiuiTelephony;->getCellLocationForSlot(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 340
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 341
    const-string v4, "getCellLocationForSlot returning null because bundle is empty"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-object v1

    .line 345
    :cond_20
    const/4 v4, 0x0

    .line 346
    .local v4, "cl":Landroid/telephony/CellLocation;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v5

    packed-switch v5, :pswitch_data_60

    goto :goto_3b

    .line 348
    :pswitch_2d
    new-instance v5, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v5, v3}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    move-object v4, v5

    .line 349
    goto :goto_3b

    .line 351
    :pswitch_34
    new-instance v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v5, v3}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    move-object v4, v5

    .line 352
    nop

    .line 357
    :goto_3b
    invoke-virtual {v4}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 358
    const-string v5, "getCellLocationForSlot returning null because CellLocation is empty"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_48

    .line 359
    return-object v1

    .line 361
    :cond_47
    return-object v4

    .line 362
    .end local v2    # "telephony":Lmiui/telephony/IMiuiTelephony;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "cl":Landroid/telephony/CellLocation;
    :catch_48
    move-exception v2

    .line 363
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCellLocationForSlot returning null due to Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v2    # "ex":Ljava/lang/Exception;
    return-object v1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2d
    .end packed-switch
.end method

.method public blacklist getCellLocationForSubscription(I)Landroid/telephony/CellLocation;
    .registers 3
    .param p1, "subId"    # I

    .line 386
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCotaOpconfigVersionCode()J
    .registers 4

    .line 2148
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 2149
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_b

    .line 2150
    invoke-interface {v0}, Lmiui/telephony/IMiuiTelephony;->getCotaOpconfigVersionCode()J

    move-result-wide v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return-wide v1

    .line 2154
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_b
    goto :goto_14

    .line 2152
    :catch_c
    move-exception v0

    .line 2153
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "getCotaOpconfigVersionCode exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2155
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getCotaOpconfigVersionName()Ljava/lang/String;
    .registers 4

    .line 2133
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 2134
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_b

    .line 2135
    invoke-interface {v0}, Lmiui/telephony/IMiuiTelephony;->getCotaOpconfigVersionName()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 2139
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_b
    goto :goto_14

    .line 2137
    :catch_c
    move-exception v0

    .line 2138
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "getCotaOpconfigVersionName exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCtVolteSupportedMode()I
    .registers 2

    .line 1820
    sget v0, Lmiui/telephony/TelephonyManagerEx$Holder;->CT_VOLTE_SUPPORTED_MODE:I

    return v0
.end method

.method public whitelist getDataActivity()I
    .registers 2

    .line 910
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public whitelist getDataActivityForSlot(I)I
    .registers 3
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 916
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_e

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    .line 917
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 918
    const/4 v0, 0x0

    return v0

    .line 921
    :cond_e
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public whitelist getDataActivityForSubscription(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 927
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq p1, v0, :cond_e

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    .line 928
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 929
    const/4 v0, 0x0

    return v0

    .line 932
    :cond_e
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public whitelist getDataState()I
    .registers 2

    .line 937
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public whitelist getDataStateForSlot(I)I
    .registers 3
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 943
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_e

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    .line 944
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 945
    const/4 v0, 0x0

    return v0

    .line 948
    :cond_e
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public whitelist getDataStateForSubscription(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 954
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq p1, v0, :cond_e

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    .line 955
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 956
    const/4 v0, 0x0

    return v0

    .line 959
    :cond_e
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public whitelist getDeviceId()Ljava/lang/String;
    .registers 2

    .line 238
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceIdForSlot(I)Ljava/lang/String;
    .registers 4
    .param p1, "slotId"    # I

    .line 243
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceIdForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 248
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceIdList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 203
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 204
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_12

    :cond_8
    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/telephony/IMiuiTelephony;->getDeviceIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-object v1

    .line 205
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_13
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceIdList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public whitelist getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 2

    .line 165
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 170
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 175
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEsimGPIOState()I
    .registers 5

    .line 2071
    const v0, 0xffff

    :try_start_3
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 2072
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_a

    goto :goto_e

    :cond_a
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->getEsimGPIOState()I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    :goto_e
    return v0

    .line 2073
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_f
    move-exception v1

    .line 2074
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "getEsimGPIOState exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2075
    return v0
.end method

.method public blacklist getFeatureInfoIntentByCloud(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p1, "featureType"    # Ljava/lang/String;

    .line 2249
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 2250
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_b

    .line 2251
    invoke-interface {v0, p1}, Lmiui/telephony/IMiuiTelephony;->getFeatureInfoIntentByCloud(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    .line 2255
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_b
    goto :goto_14

    .line 2253
    :catch_c
    move-exception v0

    .line 2254
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "getFeatureInfoIntentByCloud exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2256
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getImei()Ljava/lang/String;
    .registers 2

    .line 253
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImeiForSlot(I)Ljava/lang/String;
    .registers 6
    .param p1, "slotId"    # I

    .line 258
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    const-string v1, "disallow_imeiread"

    invoke-static {v0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 259
    const-string v0, ""

    return-object v0

    .line 262
    :cond_d
    const/4 v0, 0x0

    :try_start_e
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 263
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_15

    :goto_14
    goto :goto_24

    :cond_15
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v2

    sget-object v3, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lmiui/telephony/IMiuiTelephony;->getImei(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_25

    goto :goto_14

    :goto_24
    return-object v0

    .line 264
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_25
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImeiForSlot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public whitelist getImeiForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 272
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImeiList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    const-string v1, "disallow_imeiread"

    invoke-static {v0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 217
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 218
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v0, :cond_19

    const/4 v1, 0x0

    goto :goto_23

    :cond_19
    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiui/telephony/IMiuiTelephony;->getImeiList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_23} :catch_24

    :goto_23
    return-object v1

    .line 219
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_24
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImeiList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public whitelist getLine1Number()Ljava/lang/String;
    .registers 2

    .line 850
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLine1NumberForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 855
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLine1NumberForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 860
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMeid()Ljava/lang/String;
    .registers 2

    .line 277
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMeidForSlot(I)Ljava/lang/String;
    .registers 6
    .param p1, "slotId"    # I

    .line 283
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 284
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    :goto_7
    goto :goto_17

    :cond_8
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v2

    sget-object v3, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lmiui/telephony/IMiuiTelephony;->getMeid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_18

    goto :goto_7

    :goto_17
    return-object v0

    .line 285
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_18
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMeidForSlot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public whitelist getMeidForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 293
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMeidList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 229
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_12

    :cond_8
    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/telephony/IMiuiTelephony;->getMeidList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-object v1

    .line 230
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_13
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMeidList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public whitelist getMiuiDeviceId()Ljava/lang/String;
    .registers 5

    .line 181
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 182
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    :goto_7
    goto :goto_13

    :cond_8
    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/telephony/IMiuiTelephony;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_14

    goto :goto_7

    :goto_13
    return-object v0

    .line 183
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_14
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public whitelist getMiuiLevel(Landroid/telephony/SignalStrength;)I
    .registers 3
    .param p1, "ss"    # Landroid/telephony/SignalStrength;

    .line 1825
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getMiuiLevel()I

    move-result v0

    return v0
.end method

.method public blacklist getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    .registers 5

    .line 1303
    const/4 v0, 0x0

    .line 1306
    .local v0, "extTelephony":Lmiui/telephony/IMiuiTelephony;
    :try_start_1
    const-string v1, "miui.radio.extphone"

    .line 1307
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1306
    invoke-static {v1}, Lmiui/telephony/IMiuiTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/telephony/IMiuiTelephony;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 1310
    goto :goto_26

    .line 1308
    :catch_d
    move-exception v1

    .line 1309
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get IMiuiTelephony, Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_26
    return-object v0
.end method

.method public whitelist getMobileNetworkCapability(I)Ljava/lang/String;
    .registers 6
    .param p1, "slotId"    # I

    .line 2040
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 2041
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->getMobileNetworkCapability(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return-object v0

    .line 2042
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 2043
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "getMobileNetworkCapability exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2044
    return-object v0
.end method

.method public blacklist getMsisdn()Ljava/lang/String;
    .registers 2

    .line 970
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMsisdnForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMsisdnForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 983
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMsisdnForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMsisdnForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 996
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNeighboringCellInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .line 476
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNeighboringCellInfoForSlot(I)Ljava/util/List;
    .registers 3
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .line 493
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNeighboringCellInfoForSubscription(I)Ljava/util/List;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .line 510
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNetworkClass(I)J
    .registers 10
    .param p1, "networkType"    # I

    .line 675
    const-wide/16 v0, 0x0

    .line 676
    .local v0, "networkClass":J
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v2

    .line 677
    .local v2, "mask":J
    const-wide/32 v4, 0x804b

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_14

    .line 678
    const-wide/32 v0, 0x804b

    goto :goto_37

    .line 679
    :cond_14
    const-wide/32 v4, 0x16bb4

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_20

    .line 680
    const-wide/32 v0, 0x16bb4

    goto :goto_37

    .line 681
    :cond_20
    const-wide/32 v4, 0x61000

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2c

    .line 682
    const-wide/32 v0, 0x61000

    goto :goto_37

    .line 683
    :cond_2c
    const-wide/32 v4, 0x80000

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_37

    .line 684
    const-wide/32 v0, 0x80000

    .line 686
    :cond_37
    :goto_37
    return-wide v0
.end method

.method public whitelist getNetworkClassName(I)Ljava/lang/String;
    .registers 9
    .param p1, "networkType"    # I

    .line 690
    const-string v0, "UNKNOWN"

    .line 691
    .local v0, "networkClassName":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v1

    .line 692
    .local v1, "mask":J
    const-wide/32 v3, 0x804b

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_13

    .line 693
    const-string v0, "2G"

    goto :goto_33

    .line 694
    :cond_13
    const-wide/32 v3, 0x16bb4

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1e

    .line 695
    const-string v0, "3G"

    goto :goto_33

    .line 696
    :cond_1e
    const-wide/32 v3, 0x61000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_29

    .line 697
    const-string v0, "4G"

    goto :goto_33

    .line 698
    :cond_29
    const-wide/32 v3, 0x80000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_33

    .line 699
    const-string v0, "5G"

    .line 701
    :cond_33
    :goto_33
    return-object v0
.end method

.method public whitelist getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .line 570
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkCountryIsoForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkCountryIsoForSlot(I)Ljava/lang/String;
    .registers 4
    .param p1, "slotId"    # I

    .line 575
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 580
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 581
    .local v0, "phoneId":I
    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    sget v1, Lmiui/telephony/SubscriptionManager;->DEFAULT_PHONE_ID:I

    if-eq v0, v1, :cond_1a

    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    .line 582
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 583
    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    .line 585
    :cond_1a
    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkCountryIsoForSlot(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getNetworkOperator()Ljava/lang/String;
    .registers 2

    .line 540
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperatorForSlot(I)Ljava/lang/String;
    .registers 4
    .param p1, "slotId"    # I

    .line 545
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 550
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .line 555
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperatorNameForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 560
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 565
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkType()I
    .registers 2

    .line 590
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public whitelist getNetworkTypeForSlot(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 595
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public whitelist getNetworkTypeForSubscription(I)I
    .registers 4
    .param p1, "subId"    # I

    .line 600
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public blacklist getNetworkTypeName(I)Ljava/lang/String;
    .registers 3
    .param p1, "networkType"    # I

    .line 726
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNrConfigType()I
    .registers 3

    .line 1976
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    .line 1977
    .local v0, "slotId":I
    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNrConfigType(I)I

    move-result v1

    return v1
.end method

.method public whitelist getNrConfigType(I)I
    .registers 6
    .param p1, "slotId"    # I

    .line 1983
    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1984
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->getNrConfigType(I)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1985
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1986
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "getNrConfigType exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1987
    return v0
.end method

.method public whitelist getPhoneCount()I
    .registers 2

    .line 154
    sget v0, Lmiui/telephony/TelephonyManagerEx$Holder;->PHONE_COUNT:I

    return v0
.end method

.method public whitelist getPhoneType()I
    .registers 2

    .line 515
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public whitelist getPhoneTypeForSlot(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 520
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public whitelist getPhoneTypeForSubscription(I)I
    .registers 5
    .param p1, "subId"    # I

    .line 525
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.mms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 526
    .local v0, "isMmsPackage":Z
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_1e

    if-eqz v0, :cond_1c

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->isSmsCapable()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 527
    :cond_1c
    const/4 v1, 0x0

    return v1

    .line 529
    :cond_1e
    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    return v1
.end method

.method public whitelist getProductEid()Ljava/lang/String;
    .registers 5

    .line 2081
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 2082
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->getProductEid()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return-object v0

    .line 2083
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 2084
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "getProductEid exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2085
    return-object v0
.end method

.method public whitelist getSimCountryIso()Ljava/lang/String;
    .registers 2

    .line 799
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimCountryIsoForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 804
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 809
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperator()Ljava/lang/String;
    .registers 2

    .line 769
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 774
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 779
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorName()Ljava/lang/String;
    .registers 2

    .line 784
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorNameForSlot(I)Ljava/lang/String;
    .registers 4
    .param p1, "slotId"    # I

    .line 789
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 794
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimSerialNumber()Ljava/lang/String;
    .registers 2

    .line 814
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimSerialNumberForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 819
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimSerialNumberForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 824
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimState()I
    .registers 2

    .line 754
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public whitelist getSimStateForSlot(I)I
    .registers 4
    .param p1, "slotId"    # I

    .line 759
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public whitelist getSimStateForSubscription(I)I
    .registers 3
    .param p1, "subId"    # I

    .line 764
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public whitelist getSmallDeviceId()Ljava/lang/String;
    .registers 5

    .line 192
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 193
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    :goto_7
    goto :goto_13

    :cond_8
    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/telephony/IMiuiTelephony;->getSmallDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_14

    goto :goto_7

    :goto_13
    return-object v0

    .line 194
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_14
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmallDeviceId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public whitelist getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "longName"    # Z

    .line 1276
    const/4 v0, 0x0

    .line 1278
    .local v0, "result":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1279
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_9

    const/4 v2, 0x0

    goto :goto_d

    :cond_9
    invoke-interface {v1, p1, p2, p3, p4}, Lmiui/telephony/IMiuiTelephony;->getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f

    :goto_d
    move-object v0, v2

    .line 1282
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    goto :goto_17

    .line 1280
    :catch_f
    move-exception v1

    .line 1281
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getSpn error"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1284
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    if-nez v0, :cond_2e

    .line 1285
    if-eqz p3, :cond_21

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2c

    :cond_21
    invoke-static {p2}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1286
    invoke-virtual {p0, p2}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    :cond_2c
    move-object v1, p3

    :goto_2d
    move-object v0, v1

    .line 1288
    :cond_2e
    return-object v0
.end method

.method public whitelist getSubscriberId()Ljava/lang/String;
    .registers 2

    .line 835
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubscriberIdForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 840
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubscriberIdForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 845
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "defaultVal"    # Ljava/lang/String;

    .line 1128
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v0

    invoke-static {v0, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTelephonySetting(ILandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "name"    # Ljava/lang/String;

    .line 1067
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v0

    .line 1069
    .local v0, "slot":I
    invoke-static {p2, p3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1070
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 1071
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1072
    .local v2, "valArray":[Ljava/lang/String;
    if-ltz v0, :cond_1c

    array-length v3, v2

    if-ge v0, v3, :cond_1c

    aget-object v3, v2, v0

    if-eqz v3, :cond_1c

    .line 1073
    aget-object v3, v2, v0

    return-object v3

    .line 1076
    .end local v2    # "valArray":[Ljava/lang/String;
    :cond_1c
    const-string v2, ""

    return-object v2
.end method

.method public whitelist getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    .line 880
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 885
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 890
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    .line 865
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVoiceMailNumberForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 870
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVoiceMailNumberForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 875
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVoiceNetworkType()I
    .registers 2

    .line 641
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public blacklist getVoiceNetworkTypeForSlot(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 648
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public blacklist getVoiceNetworkTypeForSubscription(I)I
    .registers 4
    .param p1, "subId"    # I

    .line 655
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    return v0
.end method

.method public whitelist getWifiApState()I
    .registers 3

    .line 2243
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2244
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    return v1
.end method

.method public whitelist getXMNetworkType()I
    .registers 3

    .line 1993
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    .line 1994
    .local v0, "slotId":I
    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getXMNetworkType(I)I

    move-result v1

    return v1
.end method

.method public whitelist getXMNetworkType(I)I
    .registers 6
    .param p1, "slotId"    # I

    .line 2000
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 2001
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->getXMNetworkType(I)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 2002
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 2003
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "getXMNetworkType exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2004
    return v0
.end method

.method public whitelist hasIccCard()Z
    .registers 4

    .line 737
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v0

    .line 738
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_12

    .line 739
    invoke-virtual {p0, v1}, Lmiui/telephony/TelephonyManagerEx;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 740
    const/4 v2, 0x1

    return v2

    .line 738
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 744
    .end local v1    # "i":I
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist hasIccCard(I)Z
    .registers 4
    .param p1, "slotId"    # I

    .line 749
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isAirportOptimizationSupported()Z
    .registers 2

    .line 1566
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_AIRPORT_OPTIMIZATION_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isBWPSupported()Z
    .registers 2

    .line 1517
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_BWP_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isCdmaDataOptimizeSupported()Z
    .registers 2

    .line 1552
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_CDMA_DATA_OPTIMIZE_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isCmccCooperationDevice()Z
    .registers 2

    .line 1538
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_CMCC_COOPERATION_DEVICE:Z

    return v0
.end method

.method public blacklist isCnCustimizationTestBuild()Z
    .registers 2

    .line 1657
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist isConcurrentCallsPossible()Z
    .registers 5

    .line 2225
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 2226
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isConcurrentCallsPossible()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 2227
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 2228
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isConcurrentCallsPossible exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2229
    return v0
.end method

.method public blacklist isCotaOpconfigUsed()Z
    .registers 4

    .line 2163
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 2164
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_b

    .line 2165
    invoke-interface {v0}, Lmiui/telephony/IMiuiTelephony;->isCotaOpconfigUsed()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 2169
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_b
    goto :goto_14

    .line 2167
    :catch_c
    move-exception v0

    .line 2168
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "isCotaOpconfigUsed exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2170
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDsdaEnabled()Z
    .registers 5

    .line 2204
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 2205
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isDsdaEnabled()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 2206
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 2207
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isDsdaEnabled exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2208
    return v0
.end method

.method public blacklist isDsdaSupported()Z
    .registers 4

    .line 1610
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->isCnCustimizationTestBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1613
    :cond_8
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_29

    .line 1614
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11030049

    .line 1615
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1616
    .local v0, "DEVICE_ON_PLATFORM_8550":[Ljava/lang/String;
    sget-boolean v2, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_DSDA_SUPPORTED:Z

    if-eqz v2, :cond_27

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 1617
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    nop

    .line 1616
    :goto_28
    return v1

    .line 1619
    .end local v0    # "DEVICE_ON_PLATFORM_8550":[Ljava/lang/String;
    :cond_29
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_DSDA_SUPPORTED:Z

    return v0
.end method

.method public blacklist isDualDataSupported()Z
    .registers 2

    .line 1559
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_DUAL_DATA_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isDualNrEnabled()Z
    .registers 5

    .line 2030
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 2031
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isDualNrEnabled()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 2032
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 2033
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isDualNrEnabled exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2034
    return v0
.end method

.method public whitelist isDualNrSupported()Z
    .registers 2

    .line 1460
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_DUAL_NR_SUPPORTED:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->isCustSingleSimDevice()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isDualSaEnabled()Z
    .registers 5

    .line 1913
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1914
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isDualSaEnabled()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1915
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1916
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isDualSaEnabled exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1917
    return v0
.end method

.method public whitelist isDualSaSupported()Z
    .registers 2

    .line 1467
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_DUAL_SA_SUPPORTED:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->isCustSingleSimDevice()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist isDualVolteSupported()Z
    .registers 2

    .line 1453
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_DUAL_VOLTE_SUPPORTED:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->isCustSingleSimDevice()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isEnableDualSa()Z
    .registers 2

    .line 1594
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_ENABLE_DUAL_SA:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isEnhancedDsdaSupported()Z
    .registers 3

    .line 1641
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->isCnCustimizationTestBuild()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 1642
    :cond_8
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11030049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1643
    .local v0, "DEVICE_ON_PLATFORM_8550":[Ljava/lang/String;
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist isEsimActive()Z
    .registers 5

    .line 2091
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 2092
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isEsimActive()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 2093
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 2094
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isEsimActive exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2095
    return v0
.end method

.method public blacklist isFeatureDisabledByCloud(Ljava/lang/String;)Z
    .registers 5
    .param p1, "featureType"    # Ljava/lang/String;

    .line 2261
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 2262
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_b

    .line 2263
    invoke-interface {v0, p1}, Lmiui/telephony/IMiuiTelephony;->isFeatureDisabledByCloud(Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 2267
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_b
    goto :goto_14

    .line 2265
    :catch_c
    move-exception v0

    .line 2266
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "isFeatureDisabledByCloud exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2268
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFeatureEnabledByCloud(Ljava/lang/String;)Z
    .registers 5
    .param p1, "featureType"    # Ljava/lang/String;

    .line 2273
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 2274
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_b

    .line 2275
    invoke-interface {v0, p1}, Lmiui/telephony/IMiuiTelephony;->isFeatureEnabledByCloud(Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 2279
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_b
    goto :goto_14

    .line 2277
    :catch_c
    move-exception v0

    .line 2278
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "isFeatureEnabledByCloud exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2280
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isFiveGCapable()Z
    .registers 5

    .line 2010
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 2011
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isFiveGCapable()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 2012
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 2013
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isFiveGCapable exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2014
    return v0
.end method

.method public whitelist isGameFiveGOptimizeSupported()Z
    .registers 5

    .line 2020
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 2021
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isGameFiveGOptimizeSupported()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 2022
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 2023
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isGameFiveGOptimizeSupported exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2024
    return v0
.end method

.method public blacklist isGoogleDialerDeleted(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 2299
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "delete_system_dialer_package"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2301
    .local v0, "deleteSysDialPackage":Ljava/lang/String;
    const-string v1, "com.google.android.dialer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist isGwsdSupport()Z
    .registers 5

    .line 1806
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1807
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isGwsdSupport()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1808
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1809
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isGwsdSupport exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1810
    return v0
.end method

.method public blacklist isHideFiveGAndNetwork()Z
    .registers 3

    .line 1601
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_HIDE_FIVEG_AND_NETWORK:Z

    if-nez v0, :cond_18

    .line 1602
    const-string v0, "ro.product.marketname"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Redmi Note 12R Pro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1601
    :goto_1b
    return v0
.end method

.method public blacklist isHikingOptimizationSupported()Z
    .registers 2

    .line 1580
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_HIKING_OPTIMIZATION_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isImsRegistered(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .line 1409
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1410
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isImsRegistered(I)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1411
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1412
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isImsRegistered exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1413
    return v0
.end method

.method public blacklist isMESubwayDBUpdateSupported()Z
    .registers 2

    .line 1626
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_UPDATE_MESUBWAY_BY_CLOUD_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isMievnetSupported()Z
    .registers 2

    .line 1665
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_MIEVENT_SUPPORTED:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isMimoSupported()Z
    .registers 2

    .line 1545
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_MIMO_SUPPORTED:Z

    return v0
.end method

.method public blacklist isMiuiCustForKrOps()Z
    .registers 2

    .line 2192
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForKrOps()Z

    move-result v0

    return v0
.end method

.method public whitelist isMultiSimEnabled()Z
    .registers 3

    .line 149
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public blacklist isN1Supported()Z
    .registers 2

    .line 1489
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_N1_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isN28Supported()Z
    .registers 2

    .line 1510
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_N28_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isN5Supported()Z
    .registers 2

    .line 1496
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_N5_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isN8Supported()Z
    .registers 2

    .line 1503
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_N8_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isNetworkRoaming()Z
    .registers 2

    .line 610
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isNetworkRoamingForSubscription(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isNetworkRoamingForSlot(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 622
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isNetworkRoamingForSubscription(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isNetworkRoamingForSubscription(I)Z
    .registers 4
    .param p1, "subId"    # I

    .line 634
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isNrCAEnabled(I)Z
    .registers 6
    .param p1, "slotId"    # I

    .line 1934
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1935
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isNrCAEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1936
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1937
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isNrCAEnabled exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1938
    return v0
.end method

.method public blacklist isNrCaSupported()Z
    .registers 2

    .line 1482
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_NR_CA_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isQmsSupported()Z
    .registers 2

    .line 1587
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_QMS_SUPPORT:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isRadioOn()Z
    .registers 4

    .line 1205
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v0

    .line 1206
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_12

    .line 1207
    invoke-virtual {p0, v1}, Lmiui/telephony/TelephonyManagerEx;->isRadioOnForSlot(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1208
    const/4 v2, 0x1

    return v2

    .line 1206
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1211
    .end local v1    # "i":I
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isRadioOnForSlot(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 1215
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isRadioOnForSubscription(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isRadioOnForSubscription(I)Z
    .registers 5
    .param p1, "subId"    # I

    .line 1220
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 1221
    :catch_13
    move-exception v0

    .line 1222
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPukReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1224
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRegionForTaiWan()Z
    .registers 2

    .line 2199
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isBuildRegionForTaiWan()Z

    move-result v0

    return v0
.end method

.method public blacklist isRelayCallSupported()Z
    .registers 2

    .line 2125
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_RELAY_CALL_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isSaPowerOptimizationSupported()Z
    .registers 2

    .line 1531
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_SA_POWER_OPTIMIZATION_SUPPORTED:Z

    return v0
.end method

.method public whitelist isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "anotherNumeric"    # Ljava/lang/String;

    .line 1266
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1267
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1, p2}, Lmiui/telephony/IMiuiTelephony;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1268
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1269
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "isSameOperator error"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1271
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public blacklist isSatelliteUpdateSupported()Z
    .registers 2

    .line 1633
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_UPDATE_SATELLITE_BY_CLOUD_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isSmsCapable()Z
    .registers 2

    .line 1047
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method public blacklist isSubwayOptimizationSupported()Z
    .registers 2

    .line 1573
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_SUBWAY_OPTIMIZATION_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isSupport700M(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 2304
    if-nez p1, :cond_5

    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_700M_SUPPORTED_HW:Z

    goto :goto_7

    :cond_5
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_700M_SUPPORTED_SW:Z

    :goto_7
    return v0
.end method

.method public blacklist isSupportCarrierAggregation()Ljava/lang/String;
    .registers 2

    .line 2308
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_CARRIER_AGGREGATION_SUPPORTED:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isSupportEsimForCountry(Ljava/lang/String;)Z
    .registers 6
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 2101
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 2102
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isSupportEsimForCountry(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 2103
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 2104
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isSupportEsimForCountry exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2105
    return v0
.end method

.method public blacklist isSupportForeignRoaming()Z
    .registers 2

    .line 2312
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_FOREIGN_ROAMING_SUPPORTED:Z

    return v0
.end method

.method public blacklist isSupportGlobalCrbt()Z
    .registers 2

    .line 1650
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_GLOBAL_CRBT_SUPPORTED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isSupportR165G(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .line 2316
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_R16_5G_SUPPORTED:Z

    return v0
.end method

.method public blacklist isSupportSA(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 2320
    if-nez p1, :cond_5

    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_SA_SUPPORTED_HW:Z

    goto :goto_7

    :cond_5
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_SA_SUPPORTED_SW:Z

    :goto_7
    return v0
.end method

.method public blacklist isSupportVoNRPlus()Z
    .registers 2

    .line 2324
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_VONR_PLUS_SUPPORTED:Z

    return v0
.end method

.method public blacklist isUseSAoption3forMtk()Z
    .registers 2

    .line 1475
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_USE_SA_OPTION3_MTK:Z

    return v0
.end method

.method public whitelist isUserFiveGEnabled()Z
    .registers 3

    .line 1845
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    .line 1846
    .local v0, "dataSlotId":I
    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isUserFiveGEnabled(I)Z

    move-result v1

    return v1
.end method

.method public whitelist isUserFiveGEnabled(I)Z
    .registers 6
    .param p1, "slotId"    # I

    .line 1851
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1852
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isUserFiveGEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1853
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1854
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isUserFiveGEnabled exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1855
    return v0
.end method

.method public whitelist isUserFiveGSaEnabled()Z
    .registers 3

    .line 1860
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    .line 1861
    .local v0, "dataSlotId":I
    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isUserFiveGSaEnabled(I)Z

    move-result v1

    return v1
.end method

.method public whitelist isUserFiveGSaEnabled(I)Z
    .registers 6
    .param p1, "slotId"    # I

    .line 1866
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1867
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isUserFiveGSaEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1868
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1869
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isUserFiveGSaEnabled exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1870
    return v0
.end method

.method public whitelist isVideoTelephonyAvailable(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .line 1425
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1426
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isVideoTelephonyAvailable(I)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1427
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1428
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isVideoTelephonyAvailable exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1429
    return v0
.end method

.method public blacklist isVoNREnabled(I)Z
    .registers 6
    .param p1, "subId"    # I

    .line 1903
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1904
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isVoNREnabled(I)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1905
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1906
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isVoNREnabled exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1907
    return v0
.end method

.method public whitelist isVoNRSupported()Z
    .registers 2

    .line 1524
    sget-boolean v0, Lmiui/telephony/TelephonyManagerEx$Holder;->IS_VONR_SUPPORTED:Z

    return v0
.end method

.method public whitelist isVoiceCapable()Z
    .registers 2

    .line 1034
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public whitelist isVolteEnabledByPlatform()Z
    .registers 5

    .line 1379
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1380
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isVolteEnabledByPlatform()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1381
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1382
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isVolteEnabledByPlatform exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1383
    return v0
.end method

.method public whitelist isVolteEnabledByPlatform(I)Z
    .registers 6
    .param p1, "slotId"    # I

    .line 1393
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1394
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isVolteEnabledByPlatformForSlot(I)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1395
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1396
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isVolteEnabledByPlatform exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1397
    return v0
.end method

.method public whitelist isVolteEnabledByUser()Z
    .registers 5

    .line 1324
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1325
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isVolteEnabledByUser()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1326
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1327
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isVolteEnabledByUser exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1328
    return v0
.end method

.method public whitelist isVolteEnabledByUser(I)Z
    .registers 6
    .param p1, "slotId"    # I

    .line 1339
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1340
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isVolteEnabledByUserForSlot(I)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1341
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1342
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isVolteEnabledByUser exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1343
    return v0
.end method

.method public whitelist isVtEnabledByPlatform()Z
    .registers 5

    .line 1352
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1353
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isVtEnabledByPlatform()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1354
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1355
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isVtEnabledByPlatform exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1356
    return v0
.end method

.method public whitelist isVtEnabledByPlatform(I)Z
    .registers 6
    .param p1, "slotId"    # I

    .line 1366
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1367
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isVtEnabledByPlatformForSlot(I)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1368
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1369
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isVtEnabledByPlatform exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1370
    return v0
.end method

.method public whitelist isWifiCallingAvailable(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .line 1441
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1442
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isWifiCallingAvailable(I)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1443
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1444
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "isWifiCallingAvailable exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1445
    return v0
.end method

.method public whitelist listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 4
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .line 1007
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1008
    return-void
.end method

.method public whitelist listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I

    .line 1012
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    .line 1013
    .local v0, "subId":I
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v1, :cond_12

    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1014
    rsub-int/lit8 v0, p1, -0x2

    .line 1016
    :cond_12
    invoke-virtual {p0, v0, p2, p3}, Lmiui/telephony/TelephonyManagerEx;->listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V

    .line 1017
    return-void
.end method

.method public whitelist listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I

    .line 1021
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/telephony/PhoneStateListener;->updateSubscription(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 1022
    .local v0, "old":Ljava/lang/Integer;
    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1023
    invoke-virtual {p2, v0}, Landroid/telephony/PhoneStateListener;->updateSubscription(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1024
    return-void
.end method

.method public whitelist nvReadItem(I)Ljava/lang/String;
    .registers 3
    .param p1, "itemID"    # I

    .line 2234
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->nvReadItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 1293
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 1294
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v0, :cond_8

    move-object v1, p3

    goto :goto_c

    :cond_8
    invoke-interface {v0, p1, p2, p3}, Lmiui/telephony/IMiuiTelephony;->onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-object v1

    .line 1295
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v0

    .line 1296
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "onOperatorNumericOrNameSet error"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1298
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object p3
.end method

.method public blacklist putTelephonySetting(ILandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "slotId"    # I
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 1094
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v0

    .line 1096
    .local v0, "slot":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1097
    .local v1, "data":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1098
    .local v2, "valArray":[Ljava/lang/String;
    invoke-static {p2, p3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1100
    .local v3, "v":Ljava/lang/String;
    if-eqz v3, :cond_18

    .line 1101
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1105
    :cond_18
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    const/16 v5, 0x2c

    if-ge v4, v0, :cond_30

    .line 1106
    const-string v6, ""

    .line 1107
    .local v6, "str":Ljava/lang/String;
    if-eqz v2, :cond_26

    array-length v7, v2

    if-ge v4, v7, :cond_26

    .line 1108
    aget-object v6, v2, v4

    .line 1110
    :cond_26
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1105
    .end local v6    # "str":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1113
    .end local v4    # "i":I
    :cond_30
    if-nez p4, :cond_35

    const-string v4, ""

    goto :goto_36

    :cond_35
    move-object v4, p4

    :goto_36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    if-eqz v2, :cond_4c

    .line 1117
    add-int/lit8 v4, v0, 0x1

    .restart local v4    # "i":I
    :goto_3d
    array-length v6, v2

    if-ge v4, v6, :cond_4c

    .line 1118
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 1121
    .end local v4    # "i":I
    :cond_4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, p3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4
.end method

.method public blacklist recordTelephonyEvent(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2332
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 2333
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_9

    .line 2334
    invoke-interface {v0, p1}, Lmiui/telephony/IMiuiTelephony;->recordTelephonyEvent(Landroid/os/Bundle;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 2338
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_9
    goto :goto_12

    .line 2336
    :catch_a
    move-exception v0

    .line 2337
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "isWifiCallingAvailable exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2339
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public whitelist setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 13
    .param p1, "phoneId"    # I
    .param p2, "action"    # I
    .param p3, "reason"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ResultReceiver;

    .line 1779
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 1780
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_f

    .line 1781
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lmiui/telephony/IMiuiTelephony;->setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 1788
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_f
    goto :goto_1f

    .line 1783
    :catch_10
    move-exception v0

    .line 1784
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "setCallForwardingOption exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1785
    if-eqz p5, :cond_1f

    .line 1786
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p5, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1789
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f
    :goto_1f
    return-void
.end method

.method public blacklist setCotaOpconfigUsed(Z)Z
    .registers 5
    .param p1, "used"    # Z

    .line 2178
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 2179
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_b

    .line 2180
    invoke-interface {v0, p1}, Lmiui/telephony/IMiuiTelephony;->setCotaOpconfigUsed(Z)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 2184
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_b
    goto :goto_14

    .line 2182
    :catch_c
    move-exception v0

    .line 2183
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "setCotaOpconfigUsed exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2185
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCrbtDisable(Z)V
    .registers 5
    .param p1, "disable"    # Z

    .line 1955
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 1956
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_9

    .line 1957
    invoke-interface {v0, p1}, Lmiui/telephony/IMiuiTelephony;->setCrbtDisable(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 1961
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_9
    goto :goto_12

    .line 1959
    :catch_a
    move-exception v0

    .line 1960
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "setCrbtEnable exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1962
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public blacklist setDsdaEnabled(ZI)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "flag"    # I

    .line 2214
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 2215
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_9

    .line 2216
    invoke-interface {v0, p1, p2}, Lmiui/telephony/IMiuiTelephony;->setDsdaEnabled(ZI)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 2220
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_9
    goto :goto_12

    .line 2218
    :catch_a
    move-exception v0

    .line 2219
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "setDsdaEnabled exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2221
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public blacklist setDualSaEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 1892
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 1893
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_9

    .line 1894
    invoke-interface {v0, p1}, Lmiui/telephony/IMiuiTelephony;->setDualSaEnabled(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 1898
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_9
    goto :goto_12

    .line 1896
    :catch_a
    move-exception v0

    .line 1897
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "setDualSaEnabled exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1899
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public whitelist setEnhanced4gLteModeSetting(Landroid/content/Context;ZI)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .param p3, "subId"    # I

    .line 2238
    const-class v0, Landroid/telephony/ims/ImsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsManager;

    .line 2239
    .local v0, "imsManager":Landroid/telephony/ims/ImsManager;
    invoke-virtual {v0, p3}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/ims/ImsMmTelManager;->setAdvancedCallingSettingEnabled(Z)V

    .line 2240
    return-void
.end method

.method public whitelist setEsimState(I)I
    .registers 6
    .param p1, "state"    # I

    .line 2061
    const v0, 0xffff

    :try_start_3
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 2062
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_a

    goto :goto_e

    :cond_a
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->setEsimState(I)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    :goto_e
    return v0

    .line 2063
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_f
    move-exception v1

    .line 2064
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "setEsimState exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2065
    return v0
.end method

.method public whitelist setIccCardActivate(IZ)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "isActivate"    # Z

    .line 1794
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 1795
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_9

    .line 1796
    invoke-interface {v0, p1, p2}, Lmiui/telephony/IMiuiTelephony;->setIccCardActivate(IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1800
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_9
    goto :goto_12

    .line 1798
    :catch_a
    move-exception v0

    .line 1799
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "setIccCardActivate error"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1801
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public blacklist setMiuiTelephony(Lmiui/telephony/IMiuiTelephony;)V
    .registers 2
    .param p1, "miuiTelephony"    # Lmiui/telephony/IMiuiTelephony;

    .line 1316
    return-void
.end method

.method public whitelist setMobileNetworkCapability(Ljava/lang/String;)V
    .registers 5
    .param p1, "nwCapability"    # Ljava/lang/String;

    .line 2050
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 2051
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_9

    .line 2052
    invoke-interface {v0, p1}, Lmiui/telephony/IMiuiTelephony;->setMobileNetworkCapability(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 2056
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_9
    goto :goto_12

    .line 2054
    :catch_a
    move-exception v0

    .line 2055
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "setMobileNetworkCapability exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2057
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public whitelist setUserFiveGEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1829
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    .line 1830
    .local v0, "dataSlotId":I
    invoke-virtual {p0, p1, v0}, Lmiui/telephony/TelephonyManagerEx;->setUserFiveGEnabled(ZI)V

    .line 1831
    return-void
.end method

.method public whitelist setUserFiveGEnabled(ZI)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "slotId"    # I

    .line 1835
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 1836
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_9

    .line 1837
    invoke-interface {v0, p1, p2}, Lmiui/telephony/IMiuiTelephony;->setUserFiveGEnabled(ZI)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 1841
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_9
    goto :goto_12

    .line 1839
    :catch_a
    move-exception v0

    .line 1840
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "isUserFiveGEnabled exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1842
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public whitelist setUserFiveGSaEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1875
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    .line 1876
    .local v0, "dataSlotId":I
    invoke-virtual {p0, p1, v0}, Lmiui/telephony/TelephonyManagerEx;->setUserFiveGSaEnabled(ZI)V

    .line 1877
    return-void
.end method

.method public whitelist setUserFiveGSaEnabled(ZI)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "slotId"    # I

    .line 1881
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 1882
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_9

    .line 1883
    invoke-interface {v0, p1, p2}, Lmiui/telephony/IMiuiTelephony;->setUserFiveGSaEnabled(ZI)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 1887
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_9
    goto :goto_12

    .line 1885
    :catch_a
    move-exception v0

    .line 1886
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "setUserFiveGSaEnabled exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1888
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public blacklist setUserNrCAEnabled(II)V
    .registers 6
    .param p1, "mode"    # I
    .param p2, "slotId"    # I

    .line 1923
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 1924
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_9

    .line 1925
    invoke-interface {v0, p1, p2}, Lmiui/telephony/IMiuiTelephony;->setUserNrCAEnabled(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 1929
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_9
    goto :goto_12

    .line 1927
    :catch_a
    move-exception v0

    .line 1928
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "setUserNrCAEnabled exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1930
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public blacklist setUserVoNREnabled(IZ)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "enabled"    # Z

    .line 1944
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 1945
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_9

    .line 1946
    invoke-interface {v0, p1, p2}, Lmiui/telephony/IMiuiTelephony;->setUserVoNREnabled(IZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 1950
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_9
    goto :goto_12

    .line 1948
    :catch_a
    move-exception v0

    .line 1949
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "setUserVoNREnabled exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1951
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public blacklist shouldDisplayCrbtButton()Z
    .registers 5

    .line 1966
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1967
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->shouldDisplayCrbtButton()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    .line 1968
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_d
    move-exception v1

    .line 1969
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "shouldDisplayCrbtButton exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1970
    return v0
.end method

.method public blacklist shouldHideIntelligentDualSimButton()Z
    .registers 4

    .line 2285
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 2286
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_b

    .line 2287
    invoke-interface {v0}, Lmiui/telephony/IMiuiTelephony;->shouldHideIntelligentDualSimButton()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 2291
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_b
    goto :goto_14

    .line 2289
    :catch_c
    move-exception v0

    .line 2290
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyManager"

    const-string v2, "shouldHideIntelligentDualSimButton exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2292
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist showCallScreen()Z
    .registers 2

    .line 1228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->showCallScreenWithDialpad(Z)Z

    move-result v0

    return v0
.end method

.method public blacklist showCallScreenWithDialpad(Z)Z
    .registers 5
    .param p1, "showDialpad"    # Z

    .line 1233
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->showInCallScreen(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 1234
    const/4 v0, 0x1

    return v0

    .line 1235
    :catch_15
    move-exception v0

    .line 1236
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelecomService#showInCallScreen"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1238
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist silenceRinger()V
    .registers 4

    .line 1181
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1184
    goto :goto_16

    .line 1182
    :catch_e
    move-exception v0

    .line 1183
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error call ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1185
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist supplyPinReportResult(Ljava/lang/String;)[I
    .registers 3
    .param p1, "pin"    # Ljava/lang/String;

    .line 1138
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lmiui/telephony/TelephonyManagerEx;->supplyPinReportResultForSubscription(ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist supplyPinReportResultForSlot(ILjava/lang/String;)[I
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "pin"    # Ljava/lang/String;

    .line 1142
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lmiui/telephony/TelephonyManagerEx;->supplyPinReportResultForSubscription(ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist supplyPinReportResultForSubscription(ILjava/lang/String;)[I
    .registers 6
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;

    .line 1147
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 1148
    :catch_d
    move-exception v0

    .line 1149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPinReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1151
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public blacklist supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .line 1155
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lmiui/telephony/TelephonyManagerEx;->supplyPukReportResultForSubscription(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist supplyPukReportResultForSlot(ILjava/lang/String;Ljava/lang/String;)[I
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .line 1159
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lmiui/telephony/TelephonyManagerEx;->supplyPukReportResultForSubscription(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist supplyPukReportResultForSubscription(ILjava/lang/String;Ljava/lang/String;)[I
    .registers 7
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .line 1164
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 1165
    :catch_d
    move-exception v0

    .line 1166
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPukReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1168
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method
