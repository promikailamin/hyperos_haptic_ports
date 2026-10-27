.class public Landroid/telephony/MiuiTelephonyManagerStub;
.super Ljava/lang/Object;
.source "MiuiTelephonyManagerStub.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MiuiTelephonyManagerStub"

.field private static volatile blacklist sInstance:Landroid/telephony/IMiuiTelephonyManager;

.field private static blacklist sIsFiveGCapable:Z

.field private static blacklist scontext:Landroid/content/Context;

.field private static blacklist subscriptionManager:Landroid/telephony/SubscriptionManager;

.field private static blacklist telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 22
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->scontext:Landroid/content/Context;

    .line 23
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    sput-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 24
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->scontext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    sput-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 25
    const-string/jumbo v0, "ro.vendor.radio.5g"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_21

    move v0, v2

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    sput-boolean v0, Landroid/telephony/MiuiTelephonyManagerStub;->sIsFiveGCapable:Z

    .line 29
    :try_start_24
    const-string/jumbo v0, "miui.telephony.TelephonyManagerEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 30
    .local v0, "tmImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 31
    .local v3, "declaredMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/IMiuiTelephonyManager;

    sput-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3f} :catch_40

    .line 35
    .end local v0    # "tmImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "declaredMethod":Ljava/lang/reflect/Method;
    goto :goto_46

    .line 33
    :catch_40
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "failed to initialize miui instance ..."

    invoke-static {v1}, Landroid/telephony/MiuiTelephonyManagerStub;->logi(Ljava/lang/String;)V

    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static blacklist getAllEsimProfiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;"
        }
    .end annotation

    .line 1006
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_11

    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getAllEsimProfiles()Ljava/util/List;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public static blacklist getCallState()I
    .registers 1

    .line 572
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 573
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getCallState()I

    move-result v0

    return v0

    .line 576
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public static blacklist getCallStateForSlot(I)I
    .registers 3
    .param p0, "slotId"    # I

    .line 580
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 581
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getCallStateForSlot(I)I

    move-result v0

    return v0

    .line 584
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 585
    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 584
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getCallStateForSubscription(I)I
    .registers 2
    .param p0, "subId"    # I

    .line 589
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 590
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getCallStateForSubscription(I)I

    move-result v0

    return v0

    .line 593
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getCellLocationForSlot(I)Landroid/telephony/CellLocation;
    .registers 2
    .param p0, "slotId"    # I

    .line 202
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 203
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getCellLocationForSlot(I)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0

    .line 206
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getCtVolteSupportedMode()I
    .registers 1

    .line 788
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 789
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getCtVolteSupportedMode()I

    move-result v0

    return v0

    .line 792
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getDataActivity()I
    .registers 1

    .line 597
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 598
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getDataActivity()I

    move-result v0

    return v0

    .line 601
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public static blacklist getDataActivityForSlot(I)I
    .registers 2
    .param p0, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 606
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 607
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDataActivityForSlot(I)I

    move-result v0

    return v0

    .line 610
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getDataActivityForSubscription(I)I
    .registers 2
    .param p0, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 615
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 616
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDataActivityForSubscription(I)I

    move-result v0

    return v0

    .line 619
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getDataState()I
    .registers 1

    .line 623
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 624
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getDataState()I

    move-result v0

    return v0

    .line 627
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public static blacklist getDataStateForSlot(I)I
    .registers 2
    .param p0, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 632
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 633
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDataStateForSlot(I)I

    move-result v0

    return v0

    .line 636
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getDataStateForSubscription(I)I
    .registers 2
    .param p0, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 641
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 642
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDataStateForSubscription(I)I

    move-result v0

    return v0

    .line 645
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getDeviceId()Ljava/lang/String;
    .registers 1

    .line 130
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 131
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDeviceIdForSlot(I)Ljava/lang/String;
    .registers 2
    .param p0, "slotId"    # I

    .line 138
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 139
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDeviceIdForSubscription(I)Ljava/lang/String;
    .registers 2
    .param p0, "subId"    # I

    .line 146
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 147
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getDeviceIdList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 107
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceIdList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 110
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 1

    .line 66
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 67
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
    .registers 2
    .param p0, "slotId"    # I

    .line 74
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 75
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
    .registers 2
    .param p0, "subId"    # I

    .line 82
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 83
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getEsimGPIOState()I
    .registers 1

    .line 990
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-nez v0, :cond_8

    const v0, 0xffff

    goto :goto_e

    :cond_8
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getEsimGPIOState()I

    move-result v0

    :goto_e
    return v0
.end method

.method public static blacklist getFeatureInfoIntentByCloud(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2
    .param p0, "featureType"    # Ljava/lang/String;

    .line 1054
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 1055
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getFeatureInfoIntentByCloud(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1058
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getIccCardCount()I
    .registers 1

    .line 58
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 59
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getIccCardCount()I

    move-result v0

    return v0

    .line 62
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static blacklist getImei()Ljava/lang/String;
    .registers 1

    .line 154
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 155
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getImeiForSlot(I)Ljava/lang/String;
    .registers 2
    .param p0, "slotId"    # I

    .line 162
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 163
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getImeiForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p0, "subId"    # I

    .line 170
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 171
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getImeiForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getImeiList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 115
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getImeiList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 118
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getLine1Number()Ljava/lang/String;
    .registers 1

    .line 497
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 498
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 501
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getLine1NumberForSlot(I)Ljava/lang/String;
    .registers 3
    .param p0, "slotId"    # I

    .line 505
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 506
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getLine1NumberForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 509
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 510
    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 509
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getLine1NumberForSubscription(I)Ljava/lang/String;
    .registers 2
    .param p0, "subId"    # I

    .line 514
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 515
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 518
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMeid()Ljava/lang/String;
    .registers 1

    .line 178
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 179
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMeidForSlot(I)Ljava/lang/String;
    .registers 2
    .param p0, "slotId"    # I

    .line 186
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 187
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMeidForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p0, "subId"    # I

    .line 194
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 195
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getMeidForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMeidList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 123
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getMeidList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 126
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getMiuiDeviceId()Ljava/lang/String;
    .registers 1

    .line 90
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 91
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getMiuiDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMiuiLevel(Landroid/telephony/SignalStrength;)I
    .registers 2
    .param p0, "ss"    # Landroid/telephony/SignalStrength;

    .line 864
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 865
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getMiuiLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    return v0

    .line 868
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getMobileNetworkCapability(I)Ljava/lang/String;
    .registers 2
    .param p0, "slotId"    # I

    .line 972
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 973
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getMobileNetworkCapability(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 976
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getNetworkCountryIso()Ljava/lang/String;
    .registers 1

    .line 283
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 284
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 287
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNetworkCountryIsoForSlot(I)Ljava/lang/String;
    .registers 2
    .param p0, "slotId"    # I

    .line 291
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 292
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkCountryIsoForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 295
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p0, "subId"    # I

    .line 299
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 300
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 303
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNetworkOperator()Ljava/lang/String;
    .registers 1

    .line 234
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 235
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNetworkOperatorForSlot(I)Ljava/lang/String;
    .registers 3
    .param p0, "slotId"    # I

    .line 242
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 243
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 247
    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 246
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .registers 2
    .param p0, "subId"    # I

    .line 251
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 252
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNetworkOperatorName()Ljava/lang/String;
    .registers 1

    .line 259
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 260
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 263
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNetworkOperatorNameForSlot(I)Ljava/lang/String;
    .registers 2
    .param p0, "slotId"    # I

    .line 267
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 268
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 271
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 2
    .param p0, "subId"    # I

    .line 275
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 276
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNetworkType()I
    .registers 1

    .line 307
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 308
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkType()I

    move-result v0

    return v0

    .line 311
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public static blacklist getNetworkTypeForSlot(I)I
    .registers 3
    .param p0, "slotId"    # I

    .line 315
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 316
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkTypeForSlot(I)I

    move-result v0

    return v0

    .line 319
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 320
    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 319
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getNetworkTypeForSubscription(I)I
    .registers 2
    .param p0, "subId"    # I

    .line 324
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 325
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0

    .line 328
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getNrConfigType()I
    .registers 1

    .line 872
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 873
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getNrConfigType()I

    move-result v0

    return v0

    .line 876
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getNrConfigType(I)I
    .registers 2
    .param p0, "slotId"    # I

    .line 880
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 881
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getNrConfigType(I)I

    move-result v0

    return v0

    .line 884
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getPhoneCount()I
    .registers 1

    .line 50
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 51
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getPhoneCount()I

    move-result v0

    return v0

    .line 54
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static blacklist getPhoneType()I
    .registers 1

    .line 210
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 211
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getPhoneType()I

    move-result v0

    return v0

    .line 214
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public static blacklist getPhoneTypeForSlot(I)I
    .registers 2
    .param p0, "slotId"    # I

    .line 218
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 219
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getPhoneTypeForSlot(I)I

    move-result v0

    return v0

    .line 222
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getPhoneTypeForSubscription(I)I
    .registers 2
    .param p0, "subId"    # I

    .line 226
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 227
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0

    .line 230
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getProductEid()Ljava/lang/String;
    .registers 1

    .line 994
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getProductEid()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static blacklist getSimCountryIso()Ljava/lang/String;
    .registers 1

    .line 422
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 423
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 426
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSimCountryIsoForSlot(I)Ljava/lang/String;
    .registers 2
    .param p0, "slotId"    # I

    .line 430
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 431
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimCountryIsoForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 434
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 435
    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 434
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSimCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 2
    .param p0, "subId"    # I

    .line 439
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 440
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 443
    :cond_b
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSimOperator()Ljava/lang/String;
    .registers 1

    .line 372
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 373
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 376
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSimOperatorForSlot(I)Ljava/lang/String;
    .registers 3
    .param p0, "slotId"    # I

    .line 380
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 381
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 384
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 385
    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 384
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSimOperatorForSubscription(I)Ljava/lang/String;
    .registers 2
    .param p0, "subId"    # I

    .line 389
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 390
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 393
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSimOperatorName()Ljava/lang/String;
    .registers 1

    .line 397
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 398
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 401
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSimOperatorNameForSlot(I)Ljava/lang/String;
    .registers 3
    .param p0, "slotId"    # I

    .line 405
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 406
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 409
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 410
    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 409
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 2
    .param p0, "subId"    # I

    .line 414
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 415
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 418
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSimSerialNumber()Ljava/lang/String;
    .registers 1

    .line 447
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 448
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 451
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSimSerialNumberForSlot(I)Ljava/lang/String;
    .registers 3
    .param p0, "slotId"    # I

    .line 455
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 456
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimSerialNumberForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 459
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 460
    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 459
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSimSerialNumberForSubscription(I)Ljava/lang/String;
    .registers 2
    .param p0, "subId"    # I

    .line 464
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 465
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 468
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSimState()I
    .registers 1

    .line 348
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 349
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSimState()I

    move-result v0

    return v0

    .line 352
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public static blacklist getSimStateForSlot(I)I
    .registers 2
    .param p0, "slotId"    # I

    .line 356
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 357
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimStateForSlot(I)I

    move-result v0

    return v0

    .line 360
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getSimStateForSubscription(I)I
    .registers 3
    .param p0, "subId"    # I

    .line 364
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 365
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSimStateForSubscription(I)I

    move-result v0

    return v0

    .line 368
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getSmallDeviceId()Ljava/lang/String;
    .registers 1

    .line 98
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 99
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSmallDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "longName"    # Z

    .line 812
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 813
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/telephony/IMiuiTelephonyManager;->getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 816
    :cond_b
    return-object p2
.end method

.method public static blacklist getSubscriberId()Ljava/lang/String;
    .registers 1

    .line 472
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 473
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 476
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubscriberIdForSlot(I)Ljava/lang/String;
    .registers 3
    .param p0, "slotId"    # I

    .line 480
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 481
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSubscriberIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 484
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 485
    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 484
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubscriberIdForSubscription(I)Ljava/lang/String;
    .registers 2
    .param p0, "subId"    # I

    .line 489
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 490
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 493
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 1

    .line 547
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 548
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 551
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
    .registers 3
    .param p0, "slotId"    # I

    .line 555
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 556
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 559
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 560
    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 559
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
    .registers 2
    .param p0, "subId"    # I

    .line 564
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 565
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 568
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getVoiceMailNumber()Ljava/lang/String;
    .registers 1

    .line 522
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 523
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 526
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getVoiceMailNumberForSlot(I)Ljava/lang/String;
    .registers 3
    .param p0, "slotId"    # I

    .line 530
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 531
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getVoiceMailNumberForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 534
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 535
    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 534
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getVoiceMailNumberForSubscription(I)Ljava/lang/String;
    .registers 2
    .param p0, "subId"    # I

    .line 539
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 540
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 543
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getXMNetworkType()I
    .registers 1

    .line 888
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 889
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->getXMNetworkType()I

    move-result v0

    return v0

    .line 892
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getXMNetworkType(I)I
    .registers 2
    .param p0, "slotId"    # I

    .line 896
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 897
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->getXMNetworkType(I)I

    move-result v0

    return v0

    .line 900
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist hasIccCard()Z
    .registers 1

    .line 332
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 333
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->hasIccCard()Z

    move-result v0

    return v0

    .line 336
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public static blacklist hasIccCard(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .line 340
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 341
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0

    .line 344
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isBuildRegionForTaiWan()Z
    .registers 1

    .line 1032
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 1033
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isRegionForTaiWan()Z

    move-result v0

    return v0

    .line 1036
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isChinaTelecomTest(Ljava/lang/String;)Z
    .registers 2
    .param p0, "numeric"    # Ljava/lang/String;

    .line 848
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 849
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isChinaTelecomTest(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 852
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isCmccCooperationDevice()Z
    .registers 1

    .line 796
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 797
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isCmccCooperationDevice()Z

    move-result v0

    return v0

    .line 800
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isCustForKrOps()Z
    .registers 1

    .line 1024
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 1025
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isMiuiCustForKrOps()Z

    move-result v0

    return v0

    .line 1028
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isDisableLte(Z)Z
    .registers 2
    .param p0, "checkSim"    # Z

    .line 828
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 829
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isDisableLte(Z)Z

    move-result v0

    return v0

    .line 832
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isDualNrEnabled()Z
    .registers 1

    .line 780
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 781
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isDualNrEnabled()Z

    move-result v0

    return v0

    .line 784
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isDualNrSupported()Z
    .registers 1

    .line 748
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 749
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isDualNrSupported()Z

    move-result v0

    return v0

    .line 752
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isDualSaEnabled()Z
    .registers 1

    .line 1016
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 1017
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isDualSaEnabled()Z

    move-result v0

    return v0

    .line 1020
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isDualSaSupported()Z
    .registers 1

    .line 756
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 757
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isDualSaSupported()Z

    move-result v0

    return v0

    .line 760
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isDualVolteSupported()Z
    .registers 1

    .line 740
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 741
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isDualVolteSupported()Z

    move-result v0

    return v0

    .line 744
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isEsimActive()Z
    .registers 1

    .line 998
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isEsimActive()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static blacklist isFeatureDisabledByCloud(Ljava/lang/String;)Z
    .registers 2
    .param p0, "featureType"    # Ljava/lang/String;

    .line 1062
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 1063
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isFeatureDisabledByCloud(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1066
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isFeatureEnabledByCloud(Ljava/lang/String;)Z
    .registers 2
    .param p0, "featureType"    # Ljava/lang/String;

    .line 1070
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 1071
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isFeatureEnabledByCloud(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1074
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isFiveGCapable()Z
    .registers 1

    .line 960
    sget-boolean v0, Landroid/telephony/MiuiTelephonyManagerStub;->sIsFiveGCapable:Z

    return v0
.end method

.method public static blacklist isGameFiveGOptimizeSupported()Z
    .registers 1

    .line 964
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 965
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isGameFiveGOptimizeSupported()Z

    move-result v0

    return v0

    .line 968
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isGwsdSupport()Z
    .registers 1

    .line 856
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 857
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isGwsdSupport()Z

    move-result v0

    return v0

    .line 860
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isImsRegistered(I)Z
    .registers 2
    .param p0, "phoneId"    # I

    .line 668
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 669
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isImsRegistered(I)Z

    move-result v0

    return v0

    .line 672
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isImsRegistered()Z

    move-result v0

    return v0
.end method

.method public static blacklist isMultiSimEnabled()Z
    .registers 1

    .line 42
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 43
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0

    .line 46
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist isNrCAEnabled(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .line 1040
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 1041
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isNrCAEnabled(I)Z

    move-result v0

    return v0

    .line 1044
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isNrCaSupported()Z
    .registers 1

    .line 764
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 765
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isNrCaSupported()Z

    move-result v0

    return v0

    .line 768
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "anotherNumeric"    # Ljava/lang/String;

    .line 804
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 805
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiTelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 808
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isSupportEsimForCountry(Ljava/lang/String;)Z
    .registers 2
    .param p0, "countryIso"    # Ljava/lang/String;

    .line 1002
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isSupportEsimForCountry(Ljava/lang/String;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static blacklist isUserFiveGEnabled()Z
    .registers 1

    .line 904
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 905
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isUserFiveGEnabled()Z

    move-result v0

    return v0

    .line 908
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isUserFiveGEnabled(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .line 912
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 913
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isUserFiveGEnabled(I)Z

    move-result v0

    return v0

    .line 916
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isUserFiveGSaEnabled()Z
    .registers 1

    .line 932
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 933
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isUserFiveGSaEnabled()Z

    move-result v0

    return v0

    .line 936
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isUserFiveGSaEnabled(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .line 940
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 941
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isUserFiveGSaEnabled(I)Z

    move-result v0

    return v0

    .line 944
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVideoTelephonyAvailable(I)Z
    .registers 2
    .param p0, "phoneId"    # I

    .line 724
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 725
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isVideoTelephonyAvailable(I)Z

    move-result v0

    return v0

    .line 728
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVoNRSupported()Z
    .registers 1

    .line 772
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 773
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isVoNRSupported()Z

    move-result v0

    return v0

    .line 776
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVoiceCapable()Z
    .registers 1

    .line 820
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 821
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0

    .line 824
    :cond_b
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public static blacklist isVolteEnabledByPlatform()Z
    .registers 1

    .line 708
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 709
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isVolteEnabledByPlatform()Z

    move-result v0

    return v0

    .line 712
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVolteEnabledByPlatform(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .line 716
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 717
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isVolteEnabledByPlatform()Z

    move-result v0

    return v0

    .line 720
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVolteEnabledByUser()Z
    .registers 1

    .line 676
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 677
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isVolteEnabledByUser()Z

    move-result v0

    return v0

    .line 680
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVolteEnabledByUser(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .line 684
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 685
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isVolteEnabledByUser(I)Z

    move-result v0

    return v0

    .line 688
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVtEnabledByPlatform()Z
    .registers 1

    .line 692
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 693
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiTelephonyManager;->isVtEnabledByPlatform()Z

    move-result v0

    return v0

    .line 696
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVtEnabledByPlatform(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .line 700
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 701
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isVtEnabledByPlatform(I)Z

    move-result v0

    return v0

    .line 704
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isWifiCallingAvailable(I)Z
    .registers 2
    .param p0, "phoneId"    # I

    .line 732
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_b

    .line 733
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->isWifiCallingAvailable(I)Z

    move-result v0

    return v0

    .line 736
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 3
    .param p0, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p1, "events"    # I

    .line 649
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    .line 650
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 652
    :cond_9
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 653
    return-void
.end method

.method public static blacklist listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
    .registers 4
    .param p0, "slotId"    # I
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .line 656
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    .line 657
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/telephony/IMiuiTelephonyManager;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 659
    :cond_9
    return-void
.end method

.method public static blacklist listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
    .registers 4
    .param p0, "subId"    # I
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .line 662
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    .line 663
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/telephony/IMiuiTelephonyManager;->listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V

    .line 665
    :cond_9
    return-void
.end method

.method private static blacklist logi(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 1090
    const-string v0, "MiuiTelephonyManagerStub"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    return-void
.end method

.method public static blacklist setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 12
    .param p0, "phoneId"    # I
    .param p1, "action"    # I
    .param p2, "reason"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/ResultReceiver;

    .line 836
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_e

    .line 837
    sget-object v1, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    move v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/telephony/IMiuiTelephonyManager;->setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V

    .line 839
    :cond_e
    return-void
.end method

.method public static blacklist setEsimState(I)I
    .registers 2
    .param p0, "state"    # I

    .line 986
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-nez v0, :cond_8

    const v0, 0xffff

    goto :goto_e

    :cond_8
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->setEsimState(I)I

    move-result v0

    :goto_e
    return v0
.end method

.method public static blacklist setIccCardActivate(IZ)V
    .registers 3
    .param p0, "slotId"    # I
    .param p1, "isActivate"    # Z

    .line 842
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    .line 843
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiTelephonyManager;->setIccCardActivate(IZ)V

    .line 845
    :cond_9
    return-void
.end method

.method public static blacklist setMobileNetworkCapability(Ljava/lang/String;)V
    .registers 2
    .param p0, "nwCapability"    # Ljava/lang/String;

    .line 980
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    .line 981
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->setMobileNetworkCapability(Ljava/lang/String;)V

    .line 983
    :cond_9
    return-void
.end method

.method public static blacklist setUserFiveGEnabled(Z)V
    .registers 2
    .param p0, "enabled"    # Z

    .line 920
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    .line 921
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->setUserFiveGEnabled(Z)V

    .line 923
    :cond_9
    return-void
.end method

.method public static blacklist setUserFiveGEnabled(ZI)V
    .registers 3
    .param p0, "enabled"    # Z
    .param p1, "slotId"    # I

    .line 926
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    .line 927
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiTelephonyManager;->setUserFiveGEnabled(ZI)V

    .line 929
    :cond_9
    return-void
.end method

.method public static blacklist setUserFiveGSaEnabled(Z)V
    .registers 2
    .param p0, "enabled"    # Z

    .line 948
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    .line 949
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiTelephonyManager;->setUserFiveGSaEnabled(Z)V

    .line 951
    :cond_9
    return-void
.end method

.method public static blacklist setUserFiveGSaEnabled(ZI)V
    .registers 3
    .param p0, "enabled"    # Z
    .param p1, "slotId"    # I

    .line 954
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    .line 955
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiTelephonyManager;->setUserFiveGSaEnabled(ZI)V

    .line 957
    :cond_9
    return-void
.end method

.method public static blacklist setUserNrCAEnabled(II)V
    .registers 3
    .param p0, "mode"    # I
    .param p1, "slotId"    # I

    .line 1048
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    .line 1049
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiTelephonyManager;->setUserNrCAEnabled(II)V

    .line 1051
    :cond_9
    return-void
.end method


# virtual methods
.method public blacklist recordTelephonyEvent(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1084
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    .line 1085
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p1}, Landroid/telephony/IMiuiTelephonyManager;->recordTelephonyEvent(Landroid/os/Bundle;)V

    .line 1087
    :cond_9
    return-void
.end method

.method public blacklist setCrbtDisable(Z)V
    .registers 3
    .param p1, "disable"    # Z

    .line 1078
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    .line 1079
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p1}, Landroid/telephony/IMiuiTelephonyManager;->setCrbtDisable(Z)V

    .line 1081
    :cond_9
    return-void
.end method

.method public blacklist setDualSaEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1010
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    if-eqz v0, :cond_9

    .line 1011
    sget-object v0, Landroid/telephony/MiuiTelephonyManagerStub;->sInstance:Landroid/telephony/IMiuiTelephonyManager;

    invoke-interface {v0, p1}, Landroid/telephony/IMiuiTelephonyManager;->setDualSaEnabled(Z)V

    .line 1013
    :cond_9
    return-void
.end method
