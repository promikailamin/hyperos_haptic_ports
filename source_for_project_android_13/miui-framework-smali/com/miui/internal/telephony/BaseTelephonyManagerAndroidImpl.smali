.class Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;
.super Lmiui/telephony/TelephonyManager;
.source "TelephonyManagerAndroidImpl.java"


# instance fields
.field protected blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Lmiui/telephony/TelephonyManager;-><init>()V

    .line 50
    nop

    .line 51
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 52
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 50
    return-void
.end method

.method private static blacklist getSlotIdForSubscription(I)I
    .registers 2
    .param p0, "subId"    # I

    .line 468
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    return v0
.end method

.method private static blacklist getSubscriptionIdForSlot(I)I
    .registers 2
    .param p0, "slotId"    # I

    .line 472
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    return v0
.end method

.method protected static blacklist logException(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;

    .line 47
    const-string v0, "TelephonyAndroidImpl"

    const-string v1, "method reflection failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist getCallState()I
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public whitelist getCallStateForSlot(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 402
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getCallStateForSubscription(I)I

    move-result v0

    return v0
.end method

.method public whitelist getCallStateForSubscription(I)I
    .registers 3
    .param p1, "subId"    # I

    .line 407
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getCallState()I

    move-result v0

    return v0
.end method

.method public whitelist getCellLocationForSlot(I)Landroid/telephony/CellLocation;
    .registers 3
    .param p1, "slotId"    # I

    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDataActivity()I
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public whitelist getDataActivityForSlot(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 417
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public whitelist getDataActivityForSubscription(I)I
    .registers 3
    .param p1, "subId"    # I

    .line 422
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDataActivityForSlot(I)I

    move-result v0

    return v0
.end method

.method public whitelist getDataState()I
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public whitelist getDataStateForSlot(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 432
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDataState()I

    move-result v0

    return v0
.end method

.method public whitelist getDataStateForSubscription(I)I
    .registers 3
    .param p1, "subId"    # I

    .line 437
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDataStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public whitelist getDeviceId()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceIdForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 137
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceIdForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 142
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceIdList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 94
    invoke-virtual {p0, v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "deviceId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 96
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1f
    invoke-virtual {p0, v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "meid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 100
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v3    # "meid":Ljava/lang/String;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 103
    .end local v1    # "i":I
    :cond_35
    return-object v0
.end method

.method public whitelist getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 72
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 77
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImei()Ljava/lang/String;
    .registers 2

    .line 147
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImeiForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 152
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImeiForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 157
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getImeiForSlot(I)Ljava/lang/String;

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

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "imeiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 110
    invoke-virtual {p0, v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "imei":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 112
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v2    # "imei":Ljava/lang/String;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 115
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public whitelist getLine1Number()Ljava/lang/String;
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLine1NumberForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 357
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLine1NumberForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 362
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMeid()Ljava/lang/String;
    .registers 2

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMeidForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 167
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMeidForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 172
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMeidList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "meidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 122
    invoke-virtual {p0, v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "meid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 124
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v2    # "meid":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 127
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method public whitelist getMiuiDeviceId()Ljava/lang/String;
    .registers 2

    .line 82
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMiuiLevel(Landroid/telephony/SignalStrength;)I
    .registers 6
    .param p1, "ss"    # Landroid/telephony/SignalStrength;

    .line 478
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/telephony/SignalStrength;

    const-string v2, "getLevel"

    new-array v3, v0, [Ljava/lang/Class;

    .line 479
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 480
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 478
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    return v0

    .line 481
    :catch_18
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->logException(Ljava/lang/Exception;)V

    .line 484
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public whitelist getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkCountryIsoForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 227
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 232
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperator()Ljava/lang/String;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperatorForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 197
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 202
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperatorNameForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 212
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 217
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkType()I
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public whitelist getNetworkTypeForSlot(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 242
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public whitelist getNetworkTypeForSubscription(I)I
    .registers 3
    .param p1, "subId"    # I

    .line 247
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public whitelist getPhoneCount()I
    .registers 2

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getPhoneType()I
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public whitelist getPhoneTypeForSlot(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 182
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public whitelist getPhoneTypeForSubscription(I)I
    .registers 3
    .param p1, "subId"    # I

    .line 187
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public whitelist getSimCountryIso()Ljava/lang/String;
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimCountryIsoForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 312
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 317
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperator()Ljava/lang/String;
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 282
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 287
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorName()Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorNameForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 297
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 302
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimSerialNumber()Ljava/lang/String;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimSerialNumberForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 327
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimSerialNumberForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 332
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimState()I
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public whitelist getSimStateForSlot(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 267
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimState()I

    move-result v0

    return v0
.end method

.method public whitelist getSimStateForSubscription(I)I
    .registers 3
    .param p1, "subId"    # I

    .line 272
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public whitelist getSmallDeviceId()Ljava/lang/String;
    .registers 2

    .line 87
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubscriberId()Ljava/lang/String;
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubscriberIdForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 342
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubscriberIdForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 347
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    .line 382
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 387
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 392
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVoiceMailNumberForSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 372
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVoiceMailNumberForSubscription(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .line 377
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasIccCard()Z
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public whitelist hasIccCard(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 257
    invoke-virtual {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public whitelist isMultiSimEnabled()Z
    .registers 2

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVoiceCapable()Z
    .registers 5

    .line 458
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "isVoiceCapable"

    new-array v3, v0, [Ljava/lang/Class;

    .line 459
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v3, v0, [Ljava/lang/Object;

    .line 460
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 458
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    return v0

    .line 461
    :catch_1a
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->logException(Ljava/lang/Exception;)V

    .line 464
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public whitelist listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 4
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .line 442
    iget-object v0, p0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 443
    return-void
.end method

.method public whitelist listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I

    .line 447
    invoke-static {p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V

    .line 448
    return-void
.end method

.method public whitelist listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I

    .line 452
    invoke-virtual {p0, p2, p3}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 453
    return-void
.end method
