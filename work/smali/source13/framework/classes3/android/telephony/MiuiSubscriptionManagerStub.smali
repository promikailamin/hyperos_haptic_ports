.class public Landroid/telephony/MiuiSubscriptionManagerStub;
.super Ljava/lang/Object;
.source "MiuiSubscriptionManagerStub.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MiuiTelephonyManagerStub"

.field private static volatile blacklist sInstance:Landroid/telephony/IMiuiSubscriptionManager;

.field private static blacklist subscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 13
    new-instance v0, Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 17
    :try_start_b
    const-string/jumbo v0, "miui.telephony.SubscriptionManagerEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 18
    .local v0, "smImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getDefault"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 19
    .local v1, "declaredMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 20
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/IMiuiSubscriptionManager;

    sput-object v2, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_28} :catch_29

    .line 23
    .end local v0    # "smImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "declaredMethod":Ljava/lang/reflect/Method;
    goto :goto_2f

    .line 21
    :catch_29
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "failed to initialize miui instance ..."

    invoke-static {v1}, Landroid/telephony/MiuiSubscriptionManagerStub;->logi(Ljava/lang/String;)V

    .line 24
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist disableSubscriptionsCache()V
    .registers 1

    .line 136
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_9

    .line 137
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->disableSubscriptionsCache()V

    .line 139
    :cond_9
    return-void
.end method

.method public static blacklist enableSubscriptionsCache()V
    .registers 1

    .line 130
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_9

    .line 131
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->enableSubscriptionsCache()V

    .line 133
    :cond_9
    return-void
.end method

.method public static blacklist getAllSubscriptionInfoCount()I
    .registers 1

    .line 142
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 143
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getAllSubscriptionInfoCount()I

    move-result v0

    return v0

    .line 146
    :cond_b
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public static blacklist getDefaultDataSlotId()I
    .registers 1

    .line 106
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 107
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    return v0

    .line 110
    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getDefaultDataSubscriptionId()I
    .registers 1

    .line 98
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 99
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    return v0

    .line 102
    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static blacklist getDefaultSlotId()I
    .registers 1

    .line 199
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 200
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultSlotId()I

    move-result v0

    return v0

    .line 203
    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getDefaultSmsSlotId()I
    .registers 1

    .line 223
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 224
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultSmsSlotId()I

    move-result v0

    return v0

    .line 227
    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getDefaultSmsSubscriptionId()I
    .registers 1

    .line 114
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 115
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    return v0

    .line 118
    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static blacklist getDefaultSubscriptionId()I
    .registers 1

    .line 191
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 192
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    return v0

    .line 195
    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static blacklist getDefaultVoiceSlotId()I
    .registers 2

    .line 79
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 80
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultVoiceSlotId()I

    move-result v0

    return v0

    .line 83
    :cond_b
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 84
    .local v0, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_18

    .line 85
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, -0x1

    .line 84
    :goto_19
    return v1
.end method

.method public static blacklist getDefaultVoiceSubscriptionId()I
    .registers 1

    .line 71
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 72
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0

    .line 75
    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static blacklist getPhoneIdForSlot(I)I
    .registers 2
    .param p0, "slotId"    # I

    .line 174
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 175
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->getPhoneIdForSlot(I)I

    move-result v0

    return v0

    .line 178
    :cond_b
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 179
    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 178
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getPhoneIdForSubscription(I)I
    .registers 2
    .param p0, "subId"    # I

    .line 166
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 167
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->getPhoneIdForSubscription(I)I

    move-result v0

    return v0

    .line 170
    :cond_b
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getSlotIdForPhone(I)I
    .registers 2
    .param p0, "phoneId"    # I

    .line 183
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 184
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->getSlotIdForPhone(I)I

    move-result v0

    return v0

    .line 187
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getSlotIdForSubscription(I)I
    .registers 2
    .param p0, "subId"    # I

    .line 158
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 159
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    return v0

    .line 162
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getSubscriptionIdForSlot(I)I
    .registers 2
    .param p0, "slotId"    # I

    .line 62
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 63
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    return v0

    .line 66
    :cond_b
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 67
    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 66
    return v0
.end method

.method public static blacklist getSubscriptionInfoCount()I
    .registers 1

    .line 150
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 151
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0}, Landroid/telephony/IMiuiSubscriptionManager;->getSubscriptionInfoCount()I

    move-result v0

    return v0

    .line 154
    :cond_b
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method private static blacklist logi(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 237
    const-string v0, "MiuiTelephonyManagerStub"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public static blacklist setDefaultDataSubscriptionId(I)V
    .registers 2
    .param p0, "subId"    # I

    .line 215
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_9

    .line 216
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->setDefaultDataSubscriptionId(I)V

    .line 219
    :cond_9
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 220
    return-void
.end method

.method public static blacklist setDefaultSmsSlotId(I)V
    .registers 2
    .param p0, "slotId"    # I

    .line 231
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_9

    .line 232
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->setDefaultSmsSlotId(I)V

    .line 234
    :cond_9
    return-void
.end method

.method public static blacklist setDefaultSmsSubscriptionId(I)V
    .registers 2
    .param p0, "subId"    # I

    .line 122
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_9

    .line 123
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->setDefaultSmsSubscriptionId(I)V

    .line 126
    :cond_9
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 127
    return-void
.end method

.method public static blacklist setDefaultVoiceSlotId(I)V
    .registers 3
    .param p0, "slotId"    # I

    .line 90
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_9

    .line 91
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->setDefaultVoiceSlotId(I)V

    .line 93
    :cond_9
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 94
    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubscriptionId(I)V

    .line 95
    return-void
.end method

.method public static blacklist setDefaultVoiceSubscriptionId(I)V
    .registers 2
    .param p0, "subId"    # I

    .line 207
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_9

    .line 208
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0}, Landroid/telephony/IMiuiSubscriptionManager;->setDefaultVoiceSubscriptionId(I)V

    .line 211
    :cond_9
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubscriptionId(I)V

    .line 212
    return-void
.end method

.method public static blacklist setDisplayNameForSlot(Ljava/lang/String;I)I
    .registers 3
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .line 37
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 38
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiSubscriptionManager;->setDisplayNameForSlot(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 41
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist setDisplayNameForSubscription(Ljava/lang/String;I)I
    .registers 3
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "subId"    # I

    .line 29
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 30
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiSubscriptionManager;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 33
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist setDisplayNumberForSlot(Ljava/lang/String;I)I
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .line 53
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 54
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiSubscriptionManager;->setDisplayNumberForSlot(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 57
    :cond_b
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 58
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 57
    invoke-virtual {v0, p0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist setDisplayNumberForSubscription(Ljava/lang/String;I)I
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "subId"    # I

    .line 45
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    if-eqz v0, :cond_b

    .line 46
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->sInstance:Landroid/telephony/IMiuiSubscriptionManager;

    invoke-interface {v0, p0, p1}, Landroid/telephony/IMiuiSubscriptionManager;->setDisplayNumberForSubscription(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 49
    :cond_b
    sget-object v0, Landroid/telephony/MiuiSubscriptionManagerStub;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p0, p1}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
