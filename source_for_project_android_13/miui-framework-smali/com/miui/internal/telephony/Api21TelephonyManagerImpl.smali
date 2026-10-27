.class Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;
.super Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;
.source "TelephonyManagerAndroidImpl.java"


# instance fields
.field private blacklist mMiuiDeviceId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 494
    invoke-direct {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getCallStateForSubscription(I)I
    .registers 8
    .param p1, "subId"    # I

    .line 753
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getCallState"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 754
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 755
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 753
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    return v0

    .line 756
    :catch_27
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 759
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getCallStateForSubscription(I)I

    move-result v0

    return v0
.end method

.method protected blacklist getClassForSubId()Ljava/lang/Class;
    .registers 2

    .line 499
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist getDeviceIdForSlot(I)Ljava/lang/String;
    .registers 8
    .param p1, "slotId"    # I

    .line 517
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getDeviceId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 518
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 519
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 517
    return-object v0

    .line 520
    :catch_21
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 523
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImei()Ljava/lang/String;
    .registers 5

    .line 549
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getImei"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 550
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 551
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 549
    return-object v0

    .line 552
    :catch_16
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImeiForSlot(I)Ljava/lang/String;
    .registers 8
    .param p1, "slotId"    # I

    .line 561
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getImei"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 562
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 563
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 561
    return-object v0

    .line 564
    :catch_21
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 567
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLine1NumberForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 585
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getLine1NumberForSubscriber"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 586
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 587
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 585
    return-object v0

    .line 588
    :catch_23
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 591
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMiuiDeviceId()Ljava/lang/String;
    .registers 6

    .line 528
    iget-object v0, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mMiuiDeviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 529
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_16

    .line 530
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mMiuiDeviceId:Ljava/lang/String;

    goto :goto_35

    .line 532
    :cond_16
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getPhoneCount()I

    move-result v0

    .line 533
    .local v0, "phoneCount":I
    const-string v1, ""

    .line 534
    .local v1, "deviceIdMax":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v0, :cond_33

    .line 535
    invoke-virtual {p0, v2}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, "deviceId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_30

    .line 537
    move-object v1, v3

    .line 534
    .end local v3    # "deviceId":Ljava/lang/String;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 540
    .end local v2    # "i":I
    :cond_33
    iput-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mMiuiDeviceId:Ljava/lang/String;

    .line 543
    .end local v0    # "phoneCount":I
    .end local v1    # "deviceIdMax":Ljava/lang/String;
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mMiuiDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 693
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkCountryIso"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 694
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 695
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 693
    return-object v0

    .line 696
    :catch_23
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 699
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 597
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkOperator"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 598
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 599
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 597
    return-object v0

    .line 600
    :catch_23
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 603
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 681
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkOperatorName"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 682
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 683
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 681
    return-object v0

    .line 684
    :catch_23
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 687
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkTypeForSubscription(I)I
    .registers 8
    .param p1, "subId"    # I

    .line 705
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkType"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 706
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 707
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 705
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    return v0

    .line 708
    :catch_27
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 711
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public whitelist getPhoneCount()I
    .registers 5

    .line 505
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getPhoneCount"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 506
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 507
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 505
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return v0

    .line 508
    :catch_1a
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 511
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getPhoneTypeForSubscription(I)I
    .registers 8
    .param p1, "subId"    # I

    .line 573
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getCurrentPhoneType"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 574
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 575
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 573
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    return v0

    .line 576
    :catch_27
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 579
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public whitelist getSimCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 717
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSimCountryIso"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 718
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 719
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 717
    return-object v0

    .line 720
    :catch_23
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 723
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 621
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSimOperator"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 622
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 623
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 621
    return-object v0

    .line 624
    :catch_23
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 627
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 633
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSimOperatorName"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 634
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 635
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 633
    return-object v0

    .line 636
    :catch_23
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 639
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimSerialNumberForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 657
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSimSerialNumber"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 658
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 659
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 657
    return-object v0

    .line 660
    :catch_23
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 663
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimStateForSlot(I)I
    .registers 8
    .param p1, "slotId"    # I

    .line 645
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSimState"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 646
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 647
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 645
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    return v0

    .line 648
    :catch_25
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 651
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSimStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public whitelist getSubscriberIdForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 669
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSubscriberId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 670
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 671
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 669
    return-object v0

    .line 672
    :catch_23
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 675
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 741
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getVoiceMailNumber"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 742
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 743
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 741
    return-object v0

    .line 744
    :catch_23
    move-exception v0

    .line 745
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 747
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVoiceMailNumberForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 729
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getVoiceMailNumber"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 730
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 731
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 729
    return-object v0

    .line 732
    :catch_23
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 735
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasIccCard(I)Z
    .registers 8
    .param p1, "slotId"    # I

    .line 609
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "hasIccCard"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 610
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 611
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 609
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    return v0

    .line 612
    :catch_25
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 615
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public whitelist listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
    .registers 9
    .param p1, "subId"    # I
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I

    .line 765
    :try_start_0
    const-class v0, Landroid/telephony/PhoneStateListener;

    const-string v1, "mSubId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 766
    .local v0, "subIdField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v1

    .line 767
    .local v1, "old":J
    int-to-long v3, p1

    invoke-virtual {v0, p2, v3, v4}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 768
    invoke-virtual {p0, p2, p3}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 769
    invoke-virtual {v0, p2, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 772
    .end local v0    # "subIdField":Ljava/lang/reflect/Field;
    .end local v1    # "old":J
    goto :goto_1b

    .line 770
    :catch_17
    move-exception v0

    .line 771
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 773
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method
