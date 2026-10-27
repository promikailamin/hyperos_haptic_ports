.class public Lcom/android/server/recoverysystem/RecoverySystemService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"

# interfaces
.implements Lcom/android/server/locksettings/RebootEscrowListener;


# static fields
.field static final AB_UPDATE:Ljava/lang/String; = "ro.build.ab_update"

.field public static final FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;

.field static final INIT_SERVICE_CLEAR_BCB:Ljava/lang/String; = "init.svc.clear-bcb"

.field static final INIT_SERVICE_SETUP_BCB:Ljava/lang/String; = "init.svc.setup-bcb"

.field static final INIT_SERVICE_UNCRYPT:Ljava/lang/String; = "init.svc.uncrypt"

.field public static final sRequestLock:Ljava/lang/Object;


# instance fields
.field public final mCallerPendingRequest:Landroid/util/ArrayMap;

.field public final mCallerPreparedForReboot:Landroid/util/ArraySet;

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;


# direct methods
.method public static synthetic $r8$lambda$7tKeJyLjs6InXh4MDrJ9aFW6-1Y(Landroid/ota/nano/OtaPackageMetadata$ApexInfo;)Z
    .registers 1

    .line 1009
    iget-boolean p0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->isCompressed:Z

    return p0
.end method

.method public static synthetic $r8$lambda$9YaBRC9xFwBx5Uacz0_s2CFo5Ws(Landroid/ota/nano/OtaPackageMetadata$ApexInfo;)Landroid/apex/CompressedApexInfo;
    .registers 4

    .line 1010
    new-instance v0, Landroid/apex/CompressedApexInfo;

    invoke-direct {v0}, Landroid/apex/CompressedApexInfo;-><init>()V

    .line 1011
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/apex/CompressedApexInfo;->moduleName:Ljava/lang/String;

    .line 1012
    iget-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->decompressedSize:J

    iput-wide v1, v0, Landroid/apex/CompressedApexInfo;->decompressedSize:J

    .line 1013
    iget-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->version:J

    iput-wide v1, v0, Landroid/apex/CompressedApexInfo;->versionCode:J

    return-object v0
.end method

.method public static synthetic $r8$lambda$aCcdPPfc6F5DG_3isM92-9pxwAA(I)[Landroid/apex/CompressedApexInfo;
    .registers 1

    .line 1015
    new-array p0, p0, [Landroid/apex/CompressedApexInfo;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    .line 188
    new-instance v0, Landroid/util/FastImmutableArraySet;

    const/4 v1, 0x2

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    .line 193
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    .line 194
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 411
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;-><init>(Lcom/android/server/recoverysystem/RecoverySystemService$Injector;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/recoverysystem/RecoverySystemService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/recoverysystem/RecoverySystemService$Injector;)V
    .registers 3

    .line 415
    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    .line 134
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 136
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 416
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 417
    invoke-virtual {p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static deleteSecrets()V
    .registers 3

    .line 555
    const-string v0, "deleteSecrets"

    const-string v1, "RecoverySystemService"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :try_start_7
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->deleteAllKeys()V
    :try_end_a
    .catch Landroid/security/KeyStoreException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception v0

    .line 559
    const-string v2, "Failed to delete all keys from keystore."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    :goto_11
    :try_start_11
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService;->getSecretKeeper()Landroid/hardware/security/secretkeeper/ISecretkeeper;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 565
    const-string v2, "ISecretkeeper.deleteAll();"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-interface {v0}, Landroid/hardware/security/secretkeeper/ISecretkeeper;->deleteAll()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1f} :catch_20

    goto :goto_26

    :catch_20
    move-exception v0

    .line 569
    const-string v2, "Failed to delete all secrets from secretkeeper."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_26
    :goto_26
    return-void
.end method

.method public static getCompressedApexInfoList(Ljava/lang/String;)Landroid/apex/CompressedApexInfoList;
    .registers 9

    .line 979
    const-string v0, "RecoverySystemService"

    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 980
    :try_start_7
    const-string p0, "apex_info.pb"

    invoke-virtual {v1, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_37

    if-nez p0, :cond_14

    .line 1017
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    const/4 p0, 0x0

    return-object p0

    .line 984
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/32 v4, 0x258000

    cmp-long v2, v2, v4

    if-gez v2, :cond_cb

    .line 989
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    .line 990
    new-instance p0, Landroid/apex/CompressedApexInfoList;

    invoke-direct {p0}, Landroid/apex/CompressedApexInfoList;-><init>()V

    const/4 v0, 0x0

    .line 991
    new-array v0, v0, [Landroid/apex/CompressedApexInfo;

    iput-object v0, p0, Landroid/apex/CompressedApexInfoList;->apexInfos:[Landroid/apex/CompressedApexInfo;
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_37

    .line 1017
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-object p0

    :catchall_37
    move-exception p0

    goto/16 :goto_ee

    .line 994
    :cond_3a
    :try_start_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes of memory to store OTA Metadata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v3, v2, [B

    .line 998
    invoke-virtual {v1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_62
    .catchall {:try_start_3a .. :try_end_62} :catchall_37

    .line 999
    :try_start_62
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 1000
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " when expecting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1001
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_62 .. :try_end_82} :catchall_bf

    if-ne v4, v2, :cond_b9

    .line 1005
    :try_start_84
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1006
    invoke-static {v3}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    move-result-object p0

    .line 1007
    new-instance v0, Landroid/apex/CompressedApexInfoList;

    invoke-direct {v0}, Landroid/apex/CompressedApexInfoList;-><init>()V

    .line 1008
    iget-object p0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 1009
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda2;-><init>()V

    .line 1015
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/apex/CompressedApexInfo;

    iput-object p0, v0, Landroid/apex/CompressedApexInfoList;->apexInfos:[Landroid/apex/CompressedApexInfo;
    :try_end_b5
    .catchall {:try_start_84 .. :try_end_b5} :catchall_37

    .line 1017
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-object v0

    .line 1003
    :cond_b9
    :try_start_b9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_bf
    .catchall {:try_start_b9 .. :try_end_bf} :catchall_bf

    :catchall_bf
    move-exception v0

    if-eqz p0, :cond_ca

    .line 998
    :try_start_c2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_c6

    goto :goto_ca

    :catchall_c6
    move-exception p0

    :try_start_c7
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ca
    :goto_ca
    throw v0

    .line 985
    :cond_cb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apex_info.pb has size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " which is larger than the permitted limit"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ee
    .catchall {:try_start_c7 .. :try_end_ee} :catchall_37

    .line 979
    :goto_ee
    :try_start_ee
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_f2

    goto :goto_f6

    :catchall_f2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f6
    throw p0
.end method

.method public static getSecretKeeper()Landroid/hardware/security/secretkeeper/ISecretkeeper;
    .registers 2

    .line 576
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/security/secretkeeper/ISecretkeeper;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 576
    invoke-static {v0}, Landroid/hardware/security/secretkeeper/ISecretkeeper$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/security/secretkeeper/ISecretkeeper;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v0

    .line 579
    :catch_1c
    const-string v0, "RecoverySystemService"

    const-string v1, "Does not have permissions to get AIDL secretkeeper service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public allocateSpaceForUpdate(Ljava/lang/String;)Z
    .registers 6

    .line 1023
    const-string v0, "RecoverySystemService"

    invoke-virtual {p0}, Landroid/os/IRecoverySystem$Stub;->allocateSpaceForUpdate_enforcePermission()V

    .line 1024
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1026
    :try_start_9
    invoke-static {p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->getCompressedApexInfoList(Ljava/lang/String;)Landroid/apex/CompressedApexInfoList;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_1f

    .line 1028
    const-string p0, "apex_info.pb not present in OTA package. Assuming device doesn\'t support compressedAPEX, continueing without allocating space."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_1d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_1b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_15} :catch_1b
    .catchall {:try_start_9 .. :try_end_15} :catchall_19

    .line 1041
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_19
    move-exception p0

    goto :goto_39

    :catch_1b
    move-exception p0

    goto :goto_2a

    :catch_1d
    move-exception p0

    goto :goto_33

    .line 1033
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v3

    .line 1034
    invoke-virtual {v3, p0}, Lcom/android/server/pm/ApexManager;->reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_1b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1f .. :try_end_26} :catch_1b
    .catchall {:try_start_1f .. :try_end_26} :catchall_19

    .line 1041
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 1039
    :goto_2a
    :try_start_2a
    const-string p1, "Failed to reserve space for compressed apex: "

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_19

    .line 1041
    :goto_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    .line 1037
    :goto_33
    :try_start_33
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_19

    goto :goto_2f

    :goto_37
    const/4 p0, 0x0

    return p0

    .line 1041
    :goto_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1042
    throw p0
.end method

.method public final armRebootEscrow(Ljava/lang/String;Z)Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;
    .registers 6

    .line 843
    const-string v0, "RecoverySystemService"

    const/4 v1, 0x0

    if-nez p1, :cond_12

    .line 844
    const-string p0, "Missing packageName when rebooting with lskf."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/16 p1, 0x7d0

    invoke-direct {p0, p1, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object p0

    .line 848
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->isLskfCaptured(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 849
    new-instance p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/16 p1, 0xbb8

    invoke-direct {p0, p1, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object p0

    .line 853
    :cond_20
    invoke-virtual {p0, p2}, Lcom/android/server/recoverysystem/RecoverySystemService;->verifySlotForNextBoot(Z)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 854
    new-instance p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/16 p1, 0xfa0

    invoke-direct {p0, p1, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object p0

    .line 858
    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 861
    :try_start_32
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/server/locksettings/LockSettingsInternal;

    move-result-object p0

    const/16 v2, 0x1388

    if-nez p0, :cond_4d

    .line 863
    const-string p0, "Failed to get lock settings service, skipping armRebootEscrow"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    new-instance p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/4 v0, 0x3

    invoke-direct {p0, v2, v0}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_4b

    .line 871
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_4b
    move-exception p0

    goto :goto_76

    .line 869
    :cond_4d
    :try_start_4d
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsInternal;->armRebootEscrow()I

    move-result p0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_4b

    .line 871
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_70

    .line 875
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failure to escrow key for reboot, providerErrorCode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance p1, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    invoke-direct {p1, v2, p0}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object p1

    .line 881
    :cond_70
    new-instance p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    invoke-direct {p0, v1, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object p0

    .line 871
    :goto_76
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 872
    throw p0
.end method

.method public final checkAndWaitForUncryptService()Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_49

    .line 1070
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v3, "init.svc.uncrypt"

    invoke-virtual {v2, v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1071
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v4, "init.svc.setup-bcb"

    invoke-virtual {v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1072
    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v5, "init.svc.clear-bcb"

    invoke-virtual {v4, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1073
    const-string/jumbo v5, "running"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 1074
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_36

    :cond_34
    const/4 p0, 0x1

    return p0

    .line 1087
    :cond_36
    :goto_36
    :try_start_36
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->threadSleep(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v2

    .line 1089
    const-string v3, "RecoverySystemService"

    const-string v4, "Interrupted:"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_49
    return v0
.end method

.method public clearBcb()Z
    .registers 4

    .line 518
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 519
    :try_start_5
    invoke-virtual {p0, v1, v2}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 520
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public clearLskf(Ljava/lang/String;)Z
    .registers 6

    .line 743
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    const/4 v0, 0x0

    .line 744
    const-string v1, "RecoverySystemService"

    if-nez p1, :cond_e

    .line 745
    const-string p0, "Missing packageName when clearing lskf."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 750
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->updateRoRPreparationStateOnClear(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_55

    if-eq v2, v3, :cond_32

    const/4 p0, 0x2

    if-ne v2, p0, :cond_1b

    return v3

    .line 772
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported action type on clear "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 758
    :cond_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 760
    :try_start_36
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/server/locksettings/LockSettingsInternal;

    move-result-object p0

    if-nez p0, :cond_49

    .line 762
    const-string p0, "Failed to get lock settings service, skipping clearRebootEscrow"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_47

    .line 769
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_47
    move-exception p0

    goto :goto_51

    .line 767
    :cond_49
    :try_start_49
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsInternal;->clearRebootEscrow()Z

    move-result p0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_47

    .line 769
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 770
    throw p0

    .line 753
    :cond_55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RoR clear called before preparation for caller "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final declared-synchronized clearRoRPreparationState()V
    .registers 2

    monitor-enter p0

    .line 925
    :try_start_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 926
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 927
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public final clearRoRPreparationStateOnRebootFailure(Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;)V
    .registers 4

    .line 930
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;

    iget v1, p1, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/FastImmutableArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 934
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing resume on reboot states for all clients on arm escrow error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecoverySystemService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->clearRoRPreparationState()V

    return-void
.end method

.method public final enforcePermissionForResumeOnReboot()V
    .registers 3

    .line 586
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.REBOOT"

    .line 588
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    goto :goto_1d

    .line 590
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must have android.permission.RECOVERY or android.permission.REBOOT for resume on reboot."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final enforceShell()V
    .registers 2

    .line 1250
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->isCallerShell()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1251
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must be shell"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isAbDevice()Z
    .registers 2

    .line 792
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string/jumbo v0, "ro.build.ab_update"

    invoke-virtual {p0, v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isCallerShell()Z
    .registers 2

    .line 1245
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_d

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public isLskfCaptured(Ljava/lang/String;)Z
    .registers 4

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    .line 1050
    monitor-enter p0

    .line 1051
    :try_start_4
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1052
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_27

    if-nez v0, :cond_25

    .line 1055
    const-string p0, "RecoverySystemService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reboot requested before prepare completed for caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_25
    const/4 p0, 0x1

    return p0

    :catchall_27
    move-exception p1

    .line 1052
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public onPreparedForReboot(Z)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 710
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->updateRoRPreparationStateOnPreparedForReboot()V

    .line 711
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->reportMetricsOnPreparedForReboot()V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18

    .line 1258
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforceShell()V

    .line 1259
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1261
    :try_start_7
    new-instance v3, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;

    invoke-direct {v3, p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;-><init>(Lcom/android/server/recoverysystem/RecoverySystemService;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1c

    .line 1264
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1265
    throw p0
.end method

.method public onSystemServicesReady()V
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/server/locksettings/LockSettingsInternal;

    move-result-object v0

    if-nez v0, :cond_10

    .line 424
    const-string p0, "RecoverySystemService"

    const-string v0, "Failed to get lock settings service, skipping set RebootEscrowListener"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 428
    :cond_10
    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/LockSettingsInternal;->setRebootEscrowListener(Lcom/android/server/locksettings/RebootEscrowListener;)V

    return-void
.end method

.method public rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 535
    const-string v1, "--wipe_data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v0

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 536
    :goto_e
    sget-object v2, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v2

    .line 537
    :try_start_11
    invoke-virtual {p0, v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 538
    const-string p0, "RecoverySystemService"

    const-string/jumbo p1, "rebootRecoveryWithCommand failed to setup BCB"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    monitor-exit v2

    return-void

    :catchall_21
    move-exception p0

    goto :goto_36

    :cond_23
    if-eqz v1, :cond_28

    .line 543
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService;->deleteSecrets()V

    .line 549
    :cond_28
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object p0

    .line 550
    const-string/jumbo p1, "recovery"

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 551
    monitor-exit v2

    return-void

    :goto_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_21

    throw p0
.end method

.method public rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 4

    .line 970
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    .line 971
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/recoverysystem/RecoverySystemService;->rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 963
    invoke-virtual {p0}, Landroid/os/IRecoverySystem$Stub;->rebootWithLskfAssumeSlotSwitch_enforcePermission()V

    const/4 v0, 0x1

    .line 964
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;->rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    .line 941
    invoke-virtual {p0, p1, p3}, Lcom/android/server/recoverysystem/RecoverySystemService;->armRebootEscrow(Ljava/lang/String;Z)Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    move-result-object v0

    .line 942
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;->reportMetricsOnRebootWithLskf(Ljava/lang/String;ZLcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;)V

    .line 943
    invoke-virtual {p0, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;->clearRoRPreparationStateOnRebootFailure(Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;)V

    .line 945
    iget p1, v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mRebootErrorCode:I

    if-eqz p1, :cond_f

    return p1

    .line 951
    :cond_f
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->deletePrefsFile()V

    .line 952
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    const/16 p3, 0x4e20

    const-string/jumbo v0, "reboot can be slow"

    invoke-virtual {p1, p3, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThreadFor(ILjava/lang/String;)V

    .line 954
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object p0

    .line 955
    invoke-virtual {p0, p2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    const/16 p0, 0x3e8

    return p0
.end method

.method public final reportMetricsOnPreparedForReboot()V
    .registers 14

    .line 677
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 680
    monitor-enter p0

    .line 681
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 682
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_78

    .line 685
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    move-result-object v3

    .line 686
    const-string v4, "lskf_captured_timestamp"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->putLong(Ljava/lang/String;J)V

    .line 687
    const-string v4, "lskf_captured_count"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->incrementIntKey(Ljava/lang/String;I)V

    .line 689
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_24
    if-ge v5, v4, :cond_77

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    .line 690
    iget-object v7, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v7, v6}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v7

    .line 693
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_request_lskf_timestamp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, -0x1

    invoke-virtual {v3, v8, v9, v10}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_59

    cmp-long v8, v0, v11

    if-lez v8, :cond_59

    sub-long v8, v0, v11

    long-to-int v8, v8

    .line 696
    div-int/lit16 v8, v8, 0x3e8

    goto :goto_5a

    :cond_59
    const/4 v8, -0x1

    .line 698
    :goto_5a
    const-string v9, "RecoverySystemService"

    const-string v10, "Reporting lskf captured, lskf capture takes %d seconds for package %s"

    .line 699
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 698
    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v6, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v6, v7, v9, v8}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->reportRebootEscrowLskfCapturedMetrics(III)V

    goto :goto_24

    :cond_77
    return-void

    :catchall_78
    move-exception v0

    .line 682
    :try_start_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0
.end method

.method public final reportMetricsOnRebootWithLskf(Ljava/lang/String;ZLcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;)V
    .registers 16

    .line 897
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v3

    .line 898
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->useServerBasedRoR()Z

    move-result v7

    .line 900
    monitor-enter p0

    .line 901
    :try_start_b
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 902
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_7b

    .line 904
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 906
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    move-result-object v2

    .line 907
    const-string v5, "lskf_captured_timestamp"

    const-wide/16 v8, -0x1

    invoke-virtual {v2, v5, v8, v9}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v8, v5, v8

    const/4 v9, -0x1

    if-eqz v8, :cond_35

    cmp-long v8, v0, v5

    if-lez v8, :cond_35

    sub-long/2addr v0, v5

    long-to-int v0, v0

    .line 909
    div-int/lit16 v0, v0, 0x3e8

    move v8, v0

    goto :goto_36

    :cond_35
    move v8, v9

    .line 912
    :goto_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_request_lskf_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v9}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 913
    const-string v0, "lskf_captured_count"

    invoke-virtual {v2, v0, v9}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 915
    const-string v0, "RecoverySystemService"

    const-string v1, "Reporting reboot with lskf, package name %s, client count %d, request count %d, lskf captured count %d, duration since lskf captured %d seconds."

    .line 917
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 918
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {p1, v2, v6, v10, v11}, [Ljava/lang/Object;

    move-result-object p1

    .line 915
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p3}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->getErrorCodeForMetrics()I

    move-result v2

    move v6, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->reportRebootEscrowRebootMetrics(IIIIZZII)V

    return-void

    :catchall_7b
    move-exception v0

    move-object p1, v0

    .line 902
    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7b

    throw p1
.end method

.method public final reportMetricsOnRequestLskf(Ljava/lang/String;I)V
    .registers 9

    .line 596
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 598
    monitor-enter p0

    .line 599
    :try_start_7
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 600
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_49

    .line 603
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    move-result-object v2

    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_request_lskf_timestamp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 605
    invoke-virtual {v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 604
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->putLong(Ljava/lang/String;J)V

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_request_lskf_count"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->incrementIntKey(Ljava/lang/String;I)V

    .line 608
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->reportRebootEscrowPreparationMetrics(III)V

    return-void

    :catchall_49
    move-exception p1

    .line 600
    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z
    .registers 7

    .line 613
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    .line 615
    const-string v0, "RecoverySystemService"

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 616
    const-string p0, "Missing packageName when requesting lskf."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 620
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/recoverysystem/RecoverySystemService;->updateRoRPreparationStateOnNewRequest(Ljava/lang/String;Landroid/content/IntentSender;)I

    move-result v2

    .line 622
    invoke-virtual {p0, p1, v2}, Lcom/android/server/recoverysystem/RecoverySystemService;->reportMetricsOnRequestLskf(Ljava/lang/String;I)V

    const/4 p1, 0x1

    if-eqz v2, :cond_39

    if-eq v2, p1, :cond_35

    const/4 p0, 0x2

    if-ne v2, p0, :cond_1e

    return p1

    .line 650
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported action type on new request "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 627
    :cond_35
    invoke-virtual {p0, p2}, Lcom/android/server/recoverysystem/RecoverySystemService;->sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V

    return p1

    .line 632
    :cond_39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 634
    :try_start_3d
    iget-object p2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/server/locksettings/LockSettingsInternal;

    move-result-object p2

    if-nez p2, :cond_50

    .line 636
    const-string p0, "Failed to get lock settings service, skipping prepareRebootEscrow"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_4e

    .line 647
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_4e
    move-exception p0

    goto :goto_61

    .line 641
    :cond_50
    :try_start_50
    invoke-virtual {p2}, Lcom/android/server/locksettings/LockSettingsInternal;->prepareRebootEscrow()Z

    move-result p2

    if-nez p2, :cond_5d

    .line 642
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->clearRoRPreparationState()V
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_4e

    .line 647
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_5d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_61
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 648
    throw p0
.end method

.method public final sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V
    .registers 8

    if-eqz p1, :cond_28

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    .line 734
    :try_start_8
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    move-object p0, v0

    .line 736
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not send intent for prepared reboot: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecoverySystemService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .registers 4

    .line 526
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 527
    :try_start_4
    invoke-virtual {p0, v1, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    .line 528
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final setupOrClearBcb(ZLjava/lang/String;)Z
    .registers 8

    .line 1097
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->checkAndWaitForUncryptService()Z

    move-result v0

    const/4 v1, 0x0

    .line 1100
    const-string v2, "RecoverySystemService"

    if-nez v0, :cond_18

    .line 1101
    const-string/jumbo p0, "uncrypt service is unavailable."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1105
    :cond_18
    const-string v0, "ctl.start"

    if-eqz p1, :cond_25

    .line 1106
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string/jumbo v4, "setup-bcb"

    invoke-virtual {v3, v0, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 1108
    :cond_25
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v4, "clear-bcb"

    invoke-virtual {v3, v0, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :goto_2c
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    move-result-object p0

    if-nez p0, :cond_3a

    .line 1114
    const-string p0, "Failed to connect to uncrypt socket"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3a
    if-eqz p1, :cond_44

    .line 1121
    :try_start_3c
    invoke-virtual {p0, p2}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendCommand(Ljava/lang/String;)V

    goto :goto_44

    :catchall_40
    move-exception p1

    goto :goto_98

    :catch_42
    move-exception p1

    goto :goto_8f

    .line 1125
    :cond_44
    :goto_44
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->getPercentageUncrypted()I

    move-result p2

    .line 1129
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_76

    .line 1132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "uncrypt "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_60

    const-string/jumbo p1, "setup"

    goto :goto_62

    :cond_60
    const-string p1, "clear"

    :goto_62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " bcb successfully finished."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_71} :catch_42
    .catchall {:try_start_3c .. :try_end_71} :catchall_40

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    const/4 p0, 0x1

    return p0

    .line 1136
    :cond_76
    :try_start_76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "uncrypt failed with status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_8b} :catch_42
    .catchall {:try_start_76 .. :try_end_8b} :catchall_40

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    return v1

    .line 1140
    :goto_8f
    :try_start_8f
    const-string p2, "IOException when communicating with uncrypt:"

    invoke-static {v2, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_40

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    return v1

    :goto_98
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 1144
    throw p1
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 10

    .line 435
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_3
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECOVERY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->checkAndWaitForUncryptService()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 439
    const-string p0, "RecoverySystemService"

    const-string/jumbo p1, "uncrypt service is unavailable."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    monitor-exit v0

    return v2

    :catchall_1c
    move-exception p0

    goto/16 :goto_10b

    .line 445
    :cond_1f
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->uncryptPackageFileDelete()Z
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1c

    .line 447
    :try_start_24
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUncryptPackageFileWriter()Ljava/io/FileWriter;

    move-result-object v1
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2a} :catch_da
    .catchall {:try_start_24 .. :try_end_2a} :catchall_1c

    .line 448
    :try_start_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_2a .. :try_end_3e} :catchall_dc

    .line 449
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_da
    .catchall {:try_start_3e .. :try_end_41} :catchall_1c

    .line 456
    :try_start_41
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v1, "ctl.start"

    const-string/jumbo v3, "uncrypt"

    invoke-virtual {p1, v1, v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    move-result-object p0

    if-nez p0, :cond_5c

    .line 461
    const-string p0, "RecoverySystemService"

    const-string p1, "Failed to connect to uncrypt socket"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_41 .. :try_end_5b} :catchall_1c

    return v2

    :cond_5c
    const/high16 p1, -0x80000000

    move v1, p1

    .line 469
    :goto_5f
    :try_start_5f
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->getPercentageUncrypted()I

    move-result v3

    if-ne v3, v1, :cond_68

    if-eq v1, p1, :cond_68

    goto :goto_5f

    :cond_68
    if-ltz v3, :cond_ab

    const/16 v1, 0x64

    if-gt v3, v1, :cond_ab

    .line 478
    const-string v4, "RecoverySystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uncrypt read status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_85} :catch_8d
    .catchall {:try_start_5f .. :try_end_85} :catchall_8b

    if-eqz p2, :cond_96

    .line 481
    :try_start_87
    invoke-interface {p2, v3}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8a} :catch_8f
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8d
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_96

    :catchall_8b
    move-exception p1

    goto :goto_d6

    :catch_8d
    move-exception p1

    goto :goto_ca

    .line 483
    :catch_8f
    :try_start_8f
    const-string v4, "RecoverySystemService"

    const-string v5, "RemoteException when posting progress"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    :goto_96
    if-ne v3, v1, :cond_a9

    .line 487
    const-string p1, "RecoverySystemService"

    const-string/jumbo p2, "uncrypt successfully finished."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_a3} :catch_8d
    .catchall {:try_start_8f .. :try_end_a3} :catchall_8b

    .line 508
    :try_start_a3
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 511
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_1c

    const/4 p0, 0x1

    return p0

    :cond_a9
    move v1, v3

    goto :goto_5f

    .line 496
    :cond_ab
    :try_start_ab
    const-string p1, "RecoverySystemService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uncrypt failed with status: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_c5} :catch_8d
    .catchall {:try_start_ab .. :try_end_c5} :catchall_8b

    .line 508
    :try_start_c5
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_1c

    return v2

    .line 505
    :goto_ca
    :try_start_ca
    const-string p2, "RecoverySystemService"

    const-string v1, "IOException when reading status: "

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d1
    .catchall {:try_start_ca .. :try_end_d1} :catchall_8b

    .line 508
    :try_start_d1
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    monitor-exit v0

    return v2

    :goto_d6
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 509
    throw p1
    :try_end_da
    .catchall {:try_start_d1 .. :try_end_da} :catchall_1c

    :catch_da
    move-exception p1

    goto :goto_e8

    :catchall_dc
    move-exception p1

    if-eqz v1, :cond_e7

    .line 447
    :try_start_df
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_e3

    goto :goto_e7

    :catchall_e3
    move-exception p2

    :try_start_e4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e7
    :goto_e7
    throw p1
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e8} :catch_da
    .catchall {:try_start_e4 .. :try_end_e8} :catchall_1c

    .line 450
    :goto_e8
    :try_start_e8
    const-string p2, "RecoverySystemService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException when writing \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 451
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUncryptPackageFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 450
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    monitor-exit v0

    return v2

    .line 512
    :goto_10b
    monitor-exit v0
    :try_end_10c
    .catchall {:try_start_e8 .. :try_end_10c} :catchall_1c

    throw p0
.end method

.method public final declared-synchronized updateRoRPreparationStateOnClear(Ljava/lang/String;)I
    .registers 4

    monitor-enter p0

    .line 778
    :try_start_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 780
    const-string v0, "RecoverySystemService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hasn\'t prepared for resume on reboot"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2a

    .line 781
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_2a
    move-exception p1

    goto :goto_4b

    .line 783
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 787
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_2a

    if-eqz p1, :cond_48

    const/4 p1, 0x1

    goto :goto_49

    :cond_48
    const/4 p1, 0x2

    .line 788
    :goto_49
    monitor-exit p0

    return p1

    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_2a

    throw p1
.end method

.method public final declared-synchronized updateRoRPreparationStateOnNewRequest(Ljava/lang/String;Landroid/content/IntentSender;)I
    .registers 7

    monitor-enter p0

    .line 657
    :try_start_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 658
    iget-object p2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 659
    const-string p2, "RecoverySystemService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoR already has prepared for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :catchall_28
    move-exception p1

    goto :goto_62

    .line 663
    :cond_2a
    :goto_2a
    iget-object p2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_28

    .line 664
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 667
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    .line 668
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 669
    const-string v1, "RecoverySystemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate RoR preparation request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_56
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_32 .. :try_end_5b} :catchall_28

    if-eqz v0, :cond_5f

    const/4 p1, 0x0

    goto :goto_60

    :cond_5f
    const/4 p1, 0x2

    .line 673
    :goto_60
    monitor-exit p0

    return p1

    :goto_62
    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_28

    throw p1
.end method

.method public final declared-synchronized updateRoRPreparationStateOnPreparedForReboot()V
    .registers 4

    monitor-enter p0

    .line 715
    :try_start_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 716
    const-string v0, "RecoverySystemService"

    const-string/jumbo v1, "onPreparedForReboot called when some clients have prepared."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :catchall_12
    move-exception v0

    goto :goto_4f

    .line 719
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 720
    const-string v0, "RecoverySystemService"

    const-string/jumbo v1, "onPreparedForReboot called but no client has requested."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 v0, 0x0

    .line 724
    :goto_25
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_48

    .line 725
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    invoke-virtual {p0, v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V

    .line 726
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 728
    :cond_48
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_12

    .line 729
    monitor-exit p0

    return-void

    :goto_4f
    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_12

    throw v0
.end method

.method public final useServerBasedRoR()Z
    .registers 5

    .line 886
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 888
    :try_start_4
    const-string/jumbo p0, "ota"

    const-string/jumbo v2, "server_based_ror_enabled"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 891
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 892
    throw p0
.end method

.method public final verifySlotForNextBoot(Z)Z
    .registers 6

    .line 796
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->isAbDevice()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RecoverySystemService"

    if-nez v0, :cond_f

    .line 797
    const-string p0, "Device isn\'t a/b, skipping slot verification."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    const/4 v0, 0x0

    .line 803
    :try_start_10
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getBootControl()Landroid/hardware/boot/IBootControl;

    move-result-object p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_71

    if-nez p0, :cond_1e

    .line 811
    const-string p0, "Cannot get the boot control HAL, skipping slot verification."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 818
    :cond_1e
    :try_start_1e
    invoke-interface {p0}, Landroid/hardware/boot/IBootControl;->getCurrentSlot()I

    move-result v3

    if-eqz v3, :cond_40

    if-ne v3, v1, :cond_27

    goto :goto_40

    .line 820
    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current boot slot should be 0 or 1, got "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3e
    move-exception p0

    goto :goto_6b

    .line 823
    :cond_40
    :goto_40
    invoke-interface {p0}, Landroid/hardware/boot/IBootControl;->getActiveBootSlot()I

    move-result p0
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_44} :catch_3e

    if-eqz p1, :cond_4b

    if-nez v3, :cond_4a

    move v3, v1

    goto :goto_4b

    :cond_4a
    move v3, v0

    :cond_4b
    :goto_4b
    if-eq p0, v3, :cond_6a

    .line 834
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The next active boot slot doesn\'t match the expected value, expected "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", got "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6a
    return v1

    .line 825
    :goto_6b
    const-string p1, "Failed to query the active slots"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_71
    move-exception p0

    .line 805
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get the boot control HAL "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
