.class public Landroid/content/pm/PackageInstaller$Session;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field protected final greylist-max-o mSession:Landroid/content/pm/IPackageInstallerSession;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/IPackageInstallerSession;)V
    .registers 2

    .line 1895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1896
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    .line 1897
    return-void
.end method

.method private static blacklist encodeCertificates(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 2231
    if-nez p0, :cond_4

    .line 2232
    const/4 p0, 0x0

    return-object p0

    .line 2234
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2235
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 2236
    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_29

    .line 2239
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2240
    goto :goto_11

    .line 2237
    :cond_29
    new-instance p0, Ljava/security/cert/CertificateEncodingException;

    const-string v0, "Only X509 certificates supported."

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2241
    :cond_31
    return-object v0
.end method

.method private blacklist openWriteAppMetadata()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2562
    :try_start_0
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_10

    .line 2563
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    .line 2564
    invoke-interface {v1}, Landroid/content/pm/IPackageInstallerSession;->openWriteAppMetadata()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2563
    return-object v0

    .line 2566
    :cond_10
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->openWriteAppMetadata()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 2567
    new-instance v1, Landroid/os/FileBridge$FileBridgeOutputStream;

    invoke-direct {v1, v0}, Landroid/os/FileBridge$FileBridgeOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1b} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v1

    .line 2572
    :catch_1c
    move-exception v0

    .line 2573
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2569
    :catch_22
    move-exception v0

    .line 2570
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 2571
    throw v0
.end method


# virtual methods
.method public whitelist abandon()V
    .registers 2

    .line 2438
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->abandon()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2441
    nop

    .line 2442
    return-void

    .line 2439
    :catch_7
    move-exception v0

    .line 2440
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist addChildSessionId(I)V
    .registers 3

    .line 2516
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->addChildSessionId(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2519
    goto :goto_a

    .line 2517
    :catch_6
    move-exception p1

    .line 2518
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2520
    :goto_a
    return-void
.end method

.method public whitelist addFile(ILjava/lang/String;J[B[B)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2157
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    move-object p0, v0

    invoke-interface/range {p0 .. p6}, Landroid/content/pm/IPackageInstallerSession;->addFile(ILjava/lang/String;J[B[B)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 2160
    nop

    .line 2161
    return-void

    .line 2158
    :catch_8
    move-exception v0

    move-object p1, v0

    .line 2159
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist addProgress(F)V
    .registers 3

    .line 1926
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->addClientProgress(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1929
    nop

    .line 1930
    return-void

    .line 1927
    :catch_7
    move-exception p1

    .line 1928
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist test-api close()V
    .registers 2

    .line 2422
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2425
    nop

    .line 2426
    return-void

    .line 2423
    :catch_7
    move-exception v0

    .line 2424
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist commit(Landroid/content/IntentSender;)V
    .registers 4

    .line 2343
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 2346
    nop

    .line 2347
    return-void

    .line 2344
    :catch_8
    move-exception p1

    .line 2345
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist commitTransferred(Landroid/content/IntentSender;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2375
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 2378
    nop

    .line 2379
    return-void

    .line 2376
    :catch_8
    move-exception p1

    .line 2377
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist fsync(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2025
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    const-string v1, "Unrecognized stream"

    if-eqz v0, :cond_20

    .line 2026
    instance-of v0, p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    if-eqz v0, :cond_1a

    .line 2028
    :try_start_a
    check-cast p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_13} :catch_14

    .line 2031
    goto :goto_29

    .line 2029
    :catch_14
    move-exception p1

    .line 2030
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 2033
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2036
    :cond_20
    instance-of v0, p1, Landroid/os/FileBridge$FileBridgeOutputStream;

    if-eqz v0, :cond_2a

    .line 2037
    check-cast p1, Landroid/os/FileBridge$FileBridgeOutputStream;

    invoke-virtual {p1}, Landroid/os/FileBridge$FileBridgeOutputStream;->fsync()V

    .line 2042
    :goto_29
    return-void

    .line 2039
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAppMetadata()Landroid/os/PersistableBundle;
    .registers 4

    .line 2543
    nop

    .line 2545
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1}, Landroid/content/pm/IPackageInstallerSession;->getAppMetadataFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2546
    if-eqz v1, :cond_2c

    .line 2547
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_28
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_21

    .line 2549
    :try_start_f
    invoke-static {v2}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_17

    .line 2550
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_28
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_21

    goto :goto_2c

    .line 2547
    :catchall_17
    move-exception v1

    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v2

    :try_start_1d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_21} :catch_28
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_21

    .line 2554
    :catch_21
    move-exception v0

    .line 2555
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2552
    :catch_28
    move-exception v1

    .line 2553
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2556
    :cond_2c
    :goto_2c
    nop

    .line 2557
    if-eqz v0, :cond_30

    goto :goto_35

    :cond_30
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    :goto_35
    return-object v0
.end method

.method public whitelist getChildSessionIds()[I
    .registers 2

    .line 2498
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2499
    :catch_7
    move-exception v0

    .line 2500
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getDataLoaderParams()Landroid/content/pm/DataLoaderParams;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2115
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getDataLoaderParams()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v0

    .line 2116
    if-nez v0, :cond_a

    .line 2117
    const/4 v0, 0x0

    return-object v0

    .line 2119
    :cond_a
    new-instance v1, Landroid/content/pm/DataLoaderParams;

    invoke-direct {v1, v0}, Landroid/content/pm/DataLoaderParams;-><init>(Landroid/content/pm/DataLoaderParamsParcel;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 2120
    :catch_10
    move-exception v0

    .line 2121
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getInstallFlags()I
    .registers 2

    .line 2473
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getInstallFlags()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2474
    :catch_7
    move-exception v0

    .line 2475
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getNames()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2054
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getNames()[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2058
    :catch_7
    move-exception v0

    .line 2059
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2055
    :catch_d
    move-exception v0

    .line 2056
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 2057
    throw v0
.end method

.method public whitelist getParentSessionId()I
    .registers 2

    .line 2485
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getParentSessionId()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2486
    :catch_7
    move-exception v0

    .line 2487
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getPreVerifiedDomains()Ljava/util/Set;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2724
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getPreVerifiedDomains()Landroid/content/pm/verify/domain/DomainSet;

    move-result-object v0

    .line 2725
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-object v0

    .line 2726
    :catch_12
    move-exception v0

    .line 2727
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isApplicationEnabledSettingPersistent()Z
    .registers 2

    .line 2651
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->isApplicationEnabledSettingPersistent()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2652
    :catch_7
    move-exception v0

    .line 2653
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isMultiPackage()Z
    .registers 2

    .line 2450
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->isMultiPackage()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2451
    :catch_7
    move-exception v0

    .line 2452
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isRequestUpdateOwnership()Z
    .registers 2

    .line 2665
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->isRequestUpdateOwnership()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2666
    :catch_7
    move-exception v0

    .line 2667
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isStaged()Z
    .registers 2

    .line 2461
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->isStaged()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2462
    :catch_7
    move-exception v0

    .line 2463
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist openRead(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2076
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 2077
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 2081
    :catch_c
    move-exception p1

    .line 2082
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2078
    :catch_12
    move-exception p1

    .line 2079
    invoke-static {p1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 2080
    throw p1
.end method

.method public whitelist openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1965
    :try_start_0
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_11

    .line 1966
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    .line 1967
    move-object p0, v1

    invoke-interface/range {p0 .. p5}, Landroid/content/pm/IPackageInstallerSession;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1966
    return-object v0

    .line 1969
    :cond_11
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 1971
    new-instance p2, Landroid/os/FileBridge$FileBridgeOutputStream;

    invoke-direct {p2, p1}, Landroid/os/FileBridge$FileBridgeOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1f} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-object p2

    .line 1976
    :catch_20
    move-exception v0

    move-object p1, v0

    .line 1977
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1973
    :catch_27
    move-exception v0

    move-object p1, v0

    .line 1974
    invoke-static {p1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1975
    throw p1
.end method

.method public whitelist removeChildSessionId(I)V
    .registers 3

    .line 2530
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->removeChildSessionId(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2533
    goto :goto_a

    .line 2531
    :catch_6
    move-exception p1

    .line 2532
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2534
    :goto_a
    return-void
.end method

.method public whitelist removeFile(ILjava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2180
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstallerSession;->removeFile(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2183
    nop

    .line 2184
    return-void

    .line 2181
    :catch_7
    move-exception p1

    .line 2182
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeSplit(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2098
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->removeSplit(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2104
    nop

    .line 2105
    return-void

    .line 2102
    :catch_7
    move-exception p1

    .line 2103
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2099
    :catch_d
    move-exception p1

    .line 2100
    invoke-static {p1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 2101
    throw p1
.end method

.method public whitelist requestChecksums(Ljava/lang/String;ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/pm/PackageManager$OnChecksumsReadyListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2283
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2284
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2285
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2286
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2287
    sget-object v0, Landroid/content/pm/PackageManager;->TRUST_ALL:Ljava/util/List;

    if-ne p3, v0, :cond_12

    .line 2288
    const/4 p3, 0x0

    goto :goto_21

    .line 2289
    :cond_12
    sget-object v0, Landroid/content/pm/PackageManager;->TRUST_NONE:Ljava/util/List;

    if-ne p3, v0, :cond_1b

    .line 2290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    goto :goto_21

    .line 2291
    :cond_1b
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 2297
    :goto_21
    :try_start_21
    new-instance v5, Landroid/content/pm/PackageInstaller$Session$1;

    invoke-direct {v5, p0, p4, p5}, Landroid/content/pm/PackageInstaller$Session$1;-><init>(Landroid/content/pm/PackageInstaller$Session;Ljava/util/concurrent/Executor;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V

    .line 2306
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    .line 2307
    invoke-static {p3}, Landroid/content/pm/PackageInstaller$Session;->encodeCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 2306
    const/16 v2, 0x7f

    move-object v1, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession;->requestChecksums(Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    :try_end_33
    .catch Landroid/os/ParcelableException; {:try_start_21 .. :try_end_33} :catch_3c
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_33} :catch_35

    .line 2313
    nop

    .line 2314
    return-void

    .line 2311
    :catch_35
    move-exception v0

    move-object p1, v0

    .line 2312
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2308
    :catch_3c
    move-exception v0

    move-object p1, v0

    .line 2309
    const-class p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2310
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 2292
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "trustedInstallers has to be one of TRUST_ALL/TRUST_NONE or a non-empty list of certificates."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist requestUserPreapproval(Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/IntentSender;)V
    .registers 7

    .line 2636
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string/jumbo v3, "preapprovalDetails cannot be null."

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2637
    if-eqz p2, :cond_10

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    const-string/jumbo v1, "statusReceiver cannot be null."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2639
    :try_start_17
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstallerSession;->requestUserPreapproval(Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/IntentSender;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 2642
    goto :goto_21

    .line 2640
    :catch_1d
    move-exception p1

    .line 2641
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2643
    :goto_21
    return-void
.end method

.method public whitelist setAppMetadata(Landroid/os/PersistableBundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2587
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_25

    .line 2595
    :cond_9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2596
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$Session;->openWriteAppMetadata()Ljava/io/OutputStream;

    move-result-object v0

    .line 2597
    :try_start_10
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_19

    .line 2598
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 2599
    :cond_18
    return-void

    .line 2596
    :catchall_19
    move-exception p1

    if-eqz v0, :cond_24

    :try_start_1c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw p1

    .line 2589
    :cond_25
    :goto_25
    :try_start_25
    iget-object p1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {p1}, Landroid/content/pm/IPackageInstallerSession;->removeAppMetadata()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2c

    .line 2592
    nop

    .line 2593
    return-void

    .line 2590
    :catch_2c
    move-exception p1

    .line 2591
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setChecksums(Ljava/lang/String;Ljava/util/List;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/Checksum;",
            ">;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2215
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    :try_start_6
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/Checksum;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/Checksum;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageInstallerSession;->setChecksums(Ljava/lang/String;[Landroid/content/pm/Checksum;[B)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_17} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_19

    .line 2226
    nop

    .line 2227
    return-void

    .line 2224
    :catch_19
    move-exception p1

    .line 2225
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2221
    :catch_1f
    move-exception p1

    .line 2222
    invoke-static {p1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 2223
    throw p1
.end method

.method public whitelist setPreVerifiedDomains(Ljava/util/Set;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2700
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, "Provided pre-verified domains cannot be null or empty."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2703
    :try_start_10
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    new-instance v1, Landroid/content/pm/verify/domain/DomainSet;

    invoke-direct {v1, p1}, Landroid/content/pm/verify/domain/DomainSet;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageInstallerSession;->setPreVerifiedDomains(Landroid/content/pm/verify/domain/DomainSet;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1c

    .line 2706
    nop

    .line 2707
    return-void

    .line 2704
    :catch_1c
    move-exception p1

    .line 2705
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setProgress(F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1902
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$Session;->setStagingProgress(F)V

    .line 1903
    return-void
.end method

.method public whitelist setStagingProgress(F)V
    .registers 3

    .line 1916
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->setClientProgress(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1919
    nop

    .line 1920
    return-void

    .line 1917
    :catch_7
    move-exception p1

    .line 1918
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist stageViaHardLink(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2010
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->stageViaHardLink(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2016
    nop

    .line 2017
    return-void

    .line 2014
    :catch_7
    move-exception p1

    .line 2015
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2011
    :catch_d
    move-exception p1

    .line 2012
    invoke-static {p1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 2013
    throw p1
.end method

.method public whitelist transfer(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2406
    :try_start_9
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->transfer(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/ParcelableException; {:try_start_9 .. :try_end_e} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    .line 2412
    nop

    .line 2413
    return-void

    .line 2410
    :catch_10
    move-exception p1

    .line 2411
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2407
    :catch_16
    move-exception p1

    .line 2408
    const-class v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1, v0}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2409
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public greylist-max-o write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1985
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    move-object p0, v0

    invoke-interface/range {p0 .. p6}, Landroid/content/pm/IPackageInstallerSession;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 1991
    nop

    .line 1992
    return-void

    .line 1989
    :catch_8
    move-exception v0

    move-object p1, v0

    .line 1990
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1986
    :catch_f
    move-exception v0

    move-object p1, v0

    .line 1987
    invoke-static {p1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1988
    throw p1
.end method
