.class Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;
.super Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;
.source "SubscriptionManagerAndroidImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;
    }
.end annotation


# static fields
.field protected static blacklist sSubscriptionManagerCls:Ljava/lang/Class;


# instance fields
.field private blacklist mSubscriptionManager:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 151
    :try_start_0
    const-string v0, "android.telephony.SubscriptionManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    .line 154
    goto :goto_d

    .line 152
    :catch_9
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 155
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_d
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 146
    invoke-direct {p0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->mSubscriptionManager:Ljava/lang/Object;

    return-void
.end method

.method private blacklist getAllSubInfoList(Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .param p1, "subscriptionManager"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 227
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "getAllSubInfoList"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 228
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 229
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 227
    return-object v0

    .line 230
    :catch_14
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static blacklist getSubId(I)Ljava/lang/Object;
    .registers 8
    .param p0, "slotId"    # I

    .line 266
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v2, "getSubId"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 267
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 268
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 266
    return-object v0

    .line 269
    :catch_1e
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 272
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private blacklist newSubscriptionManagerInstance()Ljava/lang/Object;
    .registers 4

    .line 218
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 219
    :catch_10
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected whitelist getAllSubscriptionInfoListInternal()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->mSubscriptionManager:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 205
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->newSubscriptionManagerInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->mSubscriptionManager:Ljava/lang/Object;

    .line 207
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "subInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    iget-object v1, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->mSubscriptionManager:Ljava/lang/Object;

    if-eqz v1, :cond_2e

    .line 209
    invoke-direct {p0, v1}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getAllSubInfoList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 210
    .local v2, "subInfoRecord":Ljava/lang/Object;
    new-instance v3, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;

    invoke-direct {v3, v2}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v2    # "subInfoRecord":Ljava/lang/Object;
    goto :goto_1b

    .line 213
    :cond_2e
    return-object v0
.end method

.method public whitelist getDefaultSlotId()I
    .registers 2

    .line 238
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getSlotIdForSubscription(I)I

    move-result v0

    return v0
.end method

.method protected blacklist getDefaultSubId()I
    .registers 5

    .line 243
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "getDefaultSubId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 244
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 245
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 243
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    .line 246
    .local v0, "defaultSubId":J
    long-to-int v2, v0

    return v2

    .line 247
    .end local v0    # "defaultSubId":J
    :catch_1a
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SUBSCRIPTION_ID:I

    return v0
.end method

.method protected whitelist getSlotId(I)I
    .registers 8
    .param p1, "subId"    # I

    .line 255
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "getSlotId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 256
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 255
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return v0

    .line 258
    :catch_24
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SLOT_ID:I

    return v0
.end method

.method public whitelist getSlotIdForSubscription(I)I
    .registers 4
    .param p1, "subId"    # I

    .line 161
    invoke-static {p1}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 162
    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SLOT_ID:I

    return v0

    .line 165
    :cond_9
    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v0, :cond_10

    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->DEFAULT_SLOT_ID:I

    goto :goto_14

    :cond_10
    invoke-virtual {p0, p1}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getSlotId(I)I

    move-result v0

    .line 166
    .local v0, "slotId":I
    :goto_14
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_1d

    sget v1, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SLOT_ID:I

    goto :goto_1e

    :cond_1d
    move v1, v0

    :goto_1e
    return v1
.end method

.method public whitelist getSubscriptionIdForSlot(I)I
    .registers 9
    .param p1, "slotId"    # I

    .line 171
    invoke-static {p1}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 172
    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SUBSCRIPTION_ID:I

    return v0

    .line 175
    :cond_9
    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->DEFAULT_SLOT_ID:I

    if-ne p1, v0, :cond_10

    .line 176
    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->DEFAULT_SUBSCRIPTION_ID:I

    return v0

    .line 179
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 181
    .local v0, "identity":J
    :try_start_14
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    .line 182
    .local v3, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    if-ne v4, p1, :cond_36

    .line 183
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_67

    .line 187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    return v2

    .line 185
    .end local v3    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_36
    goto :goto_1c

    .line 187
    :cond_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    nop

    .line 190
    sget v2, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SUBSCRIPTION_ID:I

    .line 191
    .local v2, "sub":I
    invoke-static {p1}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getSubId(I)Ljava/lang/Object;

    move-result-object v3

    .line 192
    .local v3, "subIds":Ljava/lang/Object;
    instance-of v4, v3, [I

    const/4 v5, 0x0

    if-eqz v4, :cond_53

    .line 193
    move-object v4, v3

    check-cast v4, [I

    .line 194
    .local v4, "ids":[I
    array-length v6, v4

    if-lez v6, :cond_4f

    aget v5, v4, v5

    goto :goto_51

    :cond_4f
    sget v5, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SUBSCRIPTION_ID:I

    :goto_51
    move v2, v5

    .end local v4    # "ids":[I
    goto :goto_65

    .line 195
    :cond_53
    instance-of v4, v3, [J

    if-eqz v4, :cond_65

    .line 196
    move-object v4, v3

    check-cast v4, [J

    .line 197
    .local v4, "ids":[J
    array-length v6, v4

    if-lez v6, :cond_61

    aget-wide v5, v4, v5

    long-to-int v5, v5

    goto :goto_63

    :cond_61
    sget v5, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SUBSCRIPTION_ID:I

    :goto_63
    move v2, v5

    goto :goto_66

    .line 195
    .end local v4    # "ids":[J
    :cond_65
    :goto_65
    nop

    .line 199
    :goto_66
    return v2

    .line 187
    .end local v2    # "sub":I
    .end local v3    # "subIds":Ljava/lang/Object;
    :catchall_67
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    throw v2
.end method
