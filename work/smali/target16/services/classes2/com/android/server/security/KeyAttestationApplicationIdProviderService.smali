.class public Lcom/android/server/security/KeyAttestationApplicationIdProviderService;
.super Landroid/security/keystore/IKeyAttestationApplicationIdProvider$Stub;
.source "KeyAttestationApplicationIdProviderService.java"


# instance fields
.field public mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/security/keystore/IKeyAttestationApplicationIdProvider$Stub;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getKeyAttestationApplicationId(I)Landroid/security/keystore/KeyAttestationApplicationId;
    .registers 13

    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f9

    if-eq v0, v1, :cond_15

    const/16 v1, 0x434

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 53
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This service can only be used by Keystore or Credstore"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_15
    :goto_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 58
    :try_start_19
    iget-object v2, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 65
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 66
    array-length v3, v2

    new-array v3, v3, [Landroid/security/keystore/KeyAttestationPackageInfo;

    const/4 v4, 0x0

    move v5, v4

    .line 68
    :goto_2a
    array-length v6, v2

    if-ge v5, v6, :cond_77

    .line 69
    iget-object v6, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v7, v2, v5

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 71
    new-instance v7, Landroid/security/keystore/KeyAttestationPackageInfo;

    invoke-direct {v7}, Landroid/security/keystore/KeyAttestationPackageInfo;-><init>()V

    .line 72
    new-instance v8, Ljava/lang/String;

    aget-object v9, v2, v5

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Landroid/security/keystore/KeyAttestationPackageInfo;->packageName:Ljava/lang/String;

    .line 73
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/security/keystore/KeyAttestationPackageInfo;->versionCode:J

    .line 74
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    new-array v8, v8, [Landroid/security/keystore/Signature;

    iput-object v8, v7, Landroid/security/keystore/KeyAttestationPackageInfo;->signatures:[Landroid/security/keystore/Signature;

    move v8, v4

    .line 75
    :goto_53
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v9, v9

    if-ge v8, v9, :cond_72

    .line 76
    new-instance v9, Landroid/security/keystore/Signature;

    invoke-direct {v9}, Landroid/security/keystore/Signature;-><init>()V

    .line 77
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    iput-object v10, v9, Landroid/security/keystore/Signature;->data:[B

    .line 78
    iget-object v10, v7, Landroid/security/keystore/KeyAttestationPackageInfo;->signatures:[Landroid/security/keystore/Signature;

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_53

    :catchall_6e
    move-exception p0

    goto :goto_a4

    :catch_70
    move-exception p0

    goto :goto_9a

    .line 81
    :cond_72
    aput-object v7, v3, v5
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_74} :catch_70
    .catchall {:try_start_19 .. :try_end_74} :catchall_6e

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 86
    :cond_77
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    new-instance p0, Landroid/security/keystore/KeyAttestationApplicationId;

    invoke-direct {p0}, Landroid/security/keystore/KeyAttestationApplicationId;-><init>()V

    .line 89
    iput-object v3, p0, Landroid/security/keystore/KeyAttestationApplicationId;->packageInfos:[Landroid/security/keystore/KeyAttestationPackageInfo;

    return-object p0

    .line 60
    :cond_82
    :try_start_82
    new-instance p0, Landroid/os/ServiceSpecificException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package for uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_82 .. :try_end_9a} :catch_70
    .catchall {:try_start_82 .. :try_end_9a} :catchall_6e

    .line 84
    :goto_9a
    :try_start_9a
    new-instance p1, Landroid/os/RemoteException;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_6e

    .line 86
    :goto_a4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    throw p0
.end method
