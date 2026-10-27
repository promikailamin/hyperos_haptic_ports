.class Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;
.super Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;
.source "TelephonyManagerAndroidImpl.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 847
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getLine1NumberForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 852
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getLine1Number"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 853
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 854
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 852
    return-object v0

    .line 855
    :catch_21
    move-exception v0

    .line 856
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 858
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 888
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkCountryIso"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 889
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 890
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 888
    return-object v0

    .line 891
    :catch_23
    move-exception v0

    .line 892
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 894
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 876
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkOperator"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 877
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 878
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 876
    return-object v0

    .line 879
    :catch_23
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 882
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .line 864
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSimOperatorName"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 865
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->getClassForSubId()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 866
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 864
    return-object v0

    .line 867
    :catch_23
    move-exception v0

    .line 868
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 870
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
