.class public Landroid/security/LegacyVpnProfileStore;
.super Ljava/lang/Object;
.source "LegacyVpnProfileStore.java"


# static fields
.field private static final blacklist LEGACY_KEYSTORE_SERVICE_NAME:Ljava/lang/String; = "android.security.legacykeystore"

.field public static final blacklist PROFILE_NOT_FOUND:I = 0x7

.field public static final blacklist SYSTEM_ERROR:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "LegacyVpnProfileStore"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get(Ljava/lang/String;)[B
    .registers 6
    .param p0, "alias"    # Ljava/lang/String;

    .line 75
    const-string v0, "Failed to get vpn profile."

    const-string v1, "LegacyVpnProfileStore"

    :try_start_4
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v2

    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->getUID(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroid/security/legacykeystore/ILegacyKeystore;->get(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    return-object v0

    .line 80
    :catch_11
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 76
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v2

    .line 77
    .local v2, "e":Landroid/os/ServiceSpecificException;
    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1f

    .line 78
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    :cond_1f
    nop

    .line 83
    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getService()Landroid/security/legacykeystore/ILegacyKeystore;
    .registers 1

    .line 42
    nop

    .line 43
    const-string v0, "android.security.legacykeystore"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getUID(Ljava/lang/String;)I
    .registers 2
    .param p0, "alias"    # Ljava/lang/String;

    .line 126
    const-string v0, "WAPI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x3f2

    return v0

    .line 127
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist list(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;

    .line 114
    :try_start_0
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->getUID(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/security/legacykeystore/ILegacyKeystore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "aliases":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_1f

    .line 116
    aget-object v2, v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_20

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 118
    .end local v1    # "i":I
    :cond_1f
    return-object v0

    .line 119
    .end local v0    # "aliases":[Ljava/lang/String;
    :catch_20
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LegacyVpnProfileStore"

    const-string v2, "Failed to list vpn profiles."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist put(Ljava/lang/String;[B)Z
    .registers 5
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "profile"    # [B

    .line 56
    :try_start_0
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->getUID(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/security/legacykeystore/ILegacyKeystore;->put(Ljava/lang/String;I[B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    .line 57
    const/4 v0, 0x1

    return v0

    .line 58
    :catch_d
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LegacyVpnProfileStore"

    const-string v2, "Failed to put vpn profile."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist remove(Ljava/lang/String;)Z
    .registers 6
    .param p0, "alias"    # Ljava/lang/String;

    .line 94
    const-string v0, "Failed to remove vpn profile."

    const-string v1, "LegacyVpnProfileStore"

    :try_start_4
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v2

    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->getUID(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroid/security/legacykeystore/ILegacyKeystore;->remove(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_f} :catch_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_11

    .line 95
    const/4 v0, 0x1

    return v0

    .line 100
    :catch_11
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 96
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v2

    .line 97
    .local v2, "e":Landroid/os/ServiceSpecificException;
    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1f

    .line 98
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    :cond_1f
    nop

    .line 103
    :goto_20
    const/4 v0, 0x0

    return v0
.end method
