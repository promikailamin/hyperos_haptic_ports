.class Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;
.super Lmiui/telephony/SubscriptionInfo;
.source "SubscriptionManagerAndroidImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api22SubscriptionInfoImpl"
.end annotation


# static fields
.field private static blacklist sSubscriptionInfoCls:Ljava/lang/Class;


# instance fields
.field blacklist mSlotId:I

.field private final blacklist mSubInfo:Ljava/lang/Object;

.field private final blacklist mSubscriptionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 420
    :try_start_0
    const-string v0, "android.telephony.SubscriptionInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    .line 423
    goto :goto_d

    .line 421
    :catch_9
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 424
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_d
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 5
    .param p1, "si"    # Ljava/lang/Object;

    .line 430
    invoke-direct {p0}, Lmiui/telephony/SubscriptionInfo;-><init>()V

    .line 431
    iput-object p1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    .line 433
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->getSubscriptionIdInternal()I

    move-result v0

    .line 434
    .local v0, "subscriptionId":I
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->getSimSlotIndexInternal()I

    move-result v1

    .line 435
    .local v1, "simSlotIndex":I
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v0

    goto :goto_17

    :cond_15
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    :goto_17
    iput v2, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubscriptionId:I

    .line 436
    invoke-static {v1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v1

    goto :goto_23

    :cond_21
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    :goto_23
    iput v2, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSlotId:I

    .line 437
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Object;Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist getSimSlotIndexInternal()I
    .registers 5

    .line 451
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;

    const-string v1, "getSimSlotIndex"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 452
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 451
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return v0

    .line 453
    :catch_1a
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 456
    .end local v0    # "e":Ljava/lang/Exception;
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    return v0
.end method

.method private blacklist getSubscriptionIdInternal()I
    .registers 5

    .line 441
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;

    const-string v1, "getSubscriptionId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 442
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 441
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return v0

    .line 443
    :catch_1a
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 446
    .end local v0    # "e":Ljava/lang/Exception;
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    return v0
.end method


# virtual methods
.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .registers 5

    .line 488
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;

    const-string v1, "getDisplayName"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 489
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 488
    return-object v0

    .line 490
    :catch_16
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 493
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getDisplayNumber()Ljava/lang/String;
    .registers 5

    .line 499
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;

    const-string v1, "getNumber"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 500
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 499
    return-object v0

    .line 501
    :catch_16
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 504
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getIccId()Ljava/lang/String;
    .registers 5

    .line 467
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;

    const-string v1, "getIccId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 468
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 467
    return-object v0

    .line 469
    :catch_16
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getMcc()I
    .registers 5

    .line 516
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;

    const-string v1, "getMcc"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 517
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 516
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return v0

    .line 518
    :catch_1a
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0}, Lmiui/telephony/SubscriptionInfo;->getMcc()I

    move-result v0

    return v0
.end method

.method public whitelist getMnc()I
    .registers 5

    .line 527
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->sSubscriptionInfoCls:Ljava/lang/Class;

    const-string v1, "getMnc"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubInfo:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 528
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 527
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return v0

    .line 529
    :catch_1a
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0}, Lmiui/telephony/SubscriptionInfo;->getMnc()I

    move-result v0

    return v0
.end method

.method public whitelist getPhoneId()I
    .registers 2

    .line 482
    iget v0, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSlotId:I

    return v0
.end method

.method public whitelist getSlotId()I
    .registers 2

    .line 477
    iget v0, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSlotId:I

    return v0
.end method

.method public whitelist getSubscriptionId()I
    .registers 2

    .line 461
    iget v0, p0, Lcom/miui/internal/telephony/Api22SubscriptionManagerImpl$Api22SubscriptionInfoImpl;->mSubscriptionId:I

    return v0
.end method

.method public whitelist isActivated()Z
    .registers 2

    .line 510
    const/4 v0, 0x0

    return v0
.end method
