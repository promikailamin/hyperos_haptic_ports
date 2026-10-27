.class Lcom/miui/internal/telephony/Api26TelephonyManagerImpl;
.super Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;
.source "TelephonyManagerAndroidImpl.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 898
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getMeid()Ljava/lang/String;
    .registers 5

    .line 903
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getMeid"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 904
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api26TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 905
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 903
    return-object v0

    .line 906
    :catch_16
    move-exception v0

    .line 907
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api26TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 909
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMeidForSlot(I)Ljava/lang/String;
    .registers 8
    .param p1, "slotId"    # I

    .line 915
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getMeid"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 916
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api26TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 917
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 915
    return-object v0

    .line 918
    :catch_21
    move-exception v0

    .line 919
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api26TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 921
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
