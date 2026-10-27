.class Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
.super Lmiui/telephony/SubscriptionInfo;
.source "SubscriptionManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SubscriptionManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubscriptionInfoImpl"
.end annotation


# instance fields
.field blacklist mSlotId:I

.field private final blacklist mSubInfo:Landroid/telephony/SubscriptionInfo;

.field private final blacklist mSubscriptionId:I


# direct methods
.method private constructor blacklist <init>(Landroid/telephony/SubscriptionInfo;)V
    .registers 4
    .param p1, "si"    # Landroid/telephony/SubscriptionInfo;

    .line 451
    invoke-direct {p0}, Lmiui/telephony/SubscriptionInfo;-><init>()V

    .line 452
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_14

    :cond_12
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    :goto_14
    iput v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubscriptionId:I

    .line 453
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    goto :goto_27

    :cond_25
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    :goto_27
    iput v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    .line 454
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-ne v0, v1, :cond_41

    .line 456
    :try_start_2d
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/telephony/IMiuiTelephony;->getUiccSlotForCardId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3f} :catch_40

    .line 459
    goto :goto_41

    .line 457
    :catch_40
    move-exception v0

    .line 462
    :cond_41
    :goto_41
    iput-object p1, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 463
    return-void
.end method

.method public static blacklist from(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 470
    .local p0, "sis":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez p0, :cond_8

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 474
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v0, "rets":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 476
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-static {v2}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 478
    .end local v1    # "i":I
    :cond_24
    return-object v0
.end method

.method public static blacklist from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;
    .registers 2
    .param p0, "sir"    # Landroid/telephony/SubscriptionInfo;

    .line 466
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;

    invoke-direct {v0, p0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;-><init>(Landroid/telephony/SubscriptionInfo;)V

    :goto_9
    return-object v0
.end method

.method private blacklist getDefaultDisplayName()Ljava/lang/String;
    .registers 8

    .line 518
    const-string v0, ""

    .line 519
    .local v0, "displayName":Ljava/lang/String;
    iget v1, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v1, v2, :cond_61

    .line 522
    const/4 v1, 0x1

    :try_start_9
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v2

    .line 523
    invoke-virtual {v2}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v2

    .line 524
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    invoke-virtual {v3, v4}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    .line 525
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    iget v6, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    invoke-virtual {v5, v6}, Lmiui/telephony/TelephonyManager;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v5

    .line 524
    invoke-interface {v2, v3, v4, v5, v1}, Lmiui/telephony/IMiuiTelephony;->getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2b} :catch_2d

    move-object v0, v2

    .line 529
    goto :goto_2e

    .line 527
    :catch_2d
    move-exception v2

    .line 531
    :goto_2e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 532
    iget-object v2, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 533
    iget-object v2, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    :cond_46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 538
    sget-object v2, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    const v3, 0x110f03a1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    add-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 541
    :cond_61
    return-object v0
.end method


# virtual methods
.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .registers 3

    .line 503
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 504
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_14

    :cond_10
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 503
    :goto_14
    return-object v0
.end method

.method public whitelist getDisplayNumber()Ljava/lang/String;
    .registers 2

    .line 509
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIccId()Ljava/lang/String;
    .registers 2

    .line 488
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMcc()I
    .registers 2

    .line 546
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v0

    return v0
.end method

.method public whitelist getMnc()I
    .registers 2

    .line 551
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v0

    return v0
.end method

.method public whitelist getPhoneId()I
    .registers 2

    .line 498
    iget v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    return v0
.end method

.method public whitelist getSlotId()I
    .registers 2

    .line 493
    iget v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    return v0
.end method

.method public whitelist getSubscriptionId()I
    .registers 2

    .line 483
    iget v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubscriptionId:I

    return v0
.end method

.method public whitelist isActivated()Z
    .registers 2

    .line 514
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v0

    return v0
.end method
