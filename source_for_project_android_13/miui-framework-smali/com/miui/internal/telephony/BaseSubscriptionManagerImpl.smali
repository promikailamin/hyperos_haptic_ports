.class Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;
.super Lmiui/telephony/SubscriptionManager;
.source "SubscriptionManagerAndroidImpl.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManager;-><init>()V

    return-void
.end method

.method protected static blacklist logException(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;

    .line 39
    const-string v0, "SubscriptionAndroidImpl"

    const-string v1, "method reflection failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    return-void
.end method


# virtual methods
.method protected whitelist addOnSubscriptionsChangedListenerInternal()V
    .registers 1

    .line 54
    return-void
.end method

.method public whitelist getActiveSubscriptionInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist getAllSubscriptionInfoListInternal()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDefaultDataSlotId()I
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDefaultDataSubscriptionId()I
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDefaultDataSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .registers 2

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDefaultSlotId()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist getDefaultSlotIdInternal()I
    .registers 2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDefaultSmsSubscriptionId()I
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDefaultSmsSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .registers 2

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDefaultVoiceSlotId()I
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDefaultVoiceSubscriptionId()I
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDefaultVoiceSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .registers 2

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSlotIdForSubscription(I)I
    .registers 3
    .param p1, "subId"    # I

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSubscriptionIdForSlot(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 67
    sget v0, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->INVALID_SUBSCRIPTION_ID:I

    return v0
.end method

.method public whitelist getSubscriptionInfoCount()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist getSubscriptionInfoListInternal()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist removeOnSubscriptionsChangedListenerInternal()V
    .registers 1

    .line 58
    return-void
.end method

.method public whitelist setDefaultDataSlotId(I)V
    .registers 2
    .param p1, "slotId"    # I

    .line 113
    return-void
.end method

.method public whitelist setDefaultSmsSubscriptionId(I)V
    .registers 2
    .param p1, "subId"    # I

    .line 128
    return-void
.end method

.method public whitelist setDefaultVoiceSlotId(I)V
    .registers 2
    .param p1, "slotId"    # I

    .line 93
    return-void
.end method
