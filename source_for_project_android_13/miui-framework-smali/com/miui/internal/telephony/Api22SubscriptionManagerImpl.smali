.class Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;
.super Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;
.source "SubscriptionManagerAndroidImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;
    }
.end annotation


# instance fields
.field protected blacklist mSubscriptionManager:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .registers 7

    .line 362
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;-><init>()V

    .line 364
    :try_start_3
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "from"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 365
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->mSubscriptionManager:Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_23

    .line 368
    goto :goto_27

    .line 366
    :catch_23
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27
    return-void
.end method

.method private blacklist getAllAndroidSubscriptionInfoList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 382
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "getAllSubscriptionInfoList"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 383
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->mSubscriptionManager:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 384
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 382
    return-object v0

    .line 385
    :catch_16
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 389
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected whitelist getAllSubscriptionInfoListInternal()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v0, "subInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->getAllAndroidSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 375
    .local v2, "subscriptionInfo":Ljava/lang/Object;
    new-instance v3, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;-><init>(Ljava/lang/Object;Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl-IA;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v2    # "subscriptionInfo":Ljava/lang/Object;
    goto :goto_d

    .line 377
    :cond_21
    return-object v0
.end method

.method protected blacklist getDefaultSubId()I
    .registers 5

    .line 395
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "getDefaultSubId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 396
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 397
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 395
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return v0

    .line 398
    :catch_19
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method protected whitelist getSlotId(I)I
    .registers 8
    .param p1, "subId"    # I

    .line 407
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "getSlotId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 408
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 407
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return v0

    .line 410
    :catch_24
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 413
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getSlotId(I)I

    move-result v0

    return v0
.end method
