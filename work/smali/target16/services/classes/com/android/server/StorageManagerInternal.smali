.class public abstract Lcom/android/server/StorageManagerInternal;
.super Ljava/lang/Object;
.source "StorageManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;
.end method

.method public abstract createUserStorageKeys(IZ)V
.end method

.method public abstract destroyUserStorage(Ljava/lang/String;II)V
.end method

.method public abstract destroyUserStorageKeys(I)V
.end method

.method public abstract enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract freeCache(Ljava/lang/String;J)V
.end method

.method public abstract getExternalStorageMountMode(ILjava/lang/String;)I
.end method

.method public abstract getPrimaryVolumeIds()Ljava/util/List;
.end method

.method public abstract hasExternalStorageAccess(ILjava/lang/String;)Z
.end method

.method public abstract hasLegacyExternalStorage(I)Z
.end method

.method public abstract isCeStoragePrepared(I)Z
.end method

.method public abstract isExternalStorageService(I)Z
.end method

.method public abstract isFuseMounted(I)Z
.end method

.method public abstract markCeStoragePrepared(I)V
.end method

.method public abstract onAppOpsChanged(IILjava/lang/String;II)V
.end method

.method public abstract prepareAppDataAfterInstall(Ljava/lang/String;I)V
.end method

.method public abstract prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z
.end method

.method public abstract prepareUserStorage(Ljava/lang/String;II)V
.end method

.method public abstract prepareUserStorageForMove(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end method

.method public abstract registerCloudProviderChangeListener(Lcom/android/server/StorageManagerInternal$CloudProviderChangeListener;)V
.end method

.method public abstract resetUser(I)V
.end method

.method public abstract setCeStorageProtection(I[B)V
.end method

.method public abstract unlockCeStorage(I[B)V
.end method
