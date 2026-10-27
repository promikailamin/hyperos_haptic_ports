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
    .param p1, "session"    # Landroid/content/pm/IPackageInstallerSession;

    .line 1246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1247
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    .line 1248
    return-void
.end method

.method private static blacklist encodeCertificates(Ljava/util/List;)Ljava/util/List;
    .registers 5
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

    .line 1631
    .local p0, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez p0, :cond_4

    .line 1632
    const/4 v0, 0x0

    return-object v0

    .line 1634
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1635
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 1636
    .local v2, "cert":Ljava/security/cert/Certificate;
    instance-of v3, v2, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_29

    .line 1639
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1640
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    goto :goto_11

    .line 1637
    .restart local v2    # "cert":Ljava/security/cert/Certificate;
    :cond_29
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    const-string v3, "Only X509 certificates supported."

    invoke-direct {v1, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1641
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    :cond_31
    return-object v0
.end method


# virtual methods
.method public whitelist abandon()V
    .registers 3

    .line 1831
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->abandon()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1834
    nop

    .line 1835
    return-void

    .line 1832
    :catch_7
    move-exception v0

    .line 1833
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addChildSessionId(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 1909
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->addChildSessionId(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1912
    goto :goto_a

    .line 1910
    :catch_6
    move-exception v0

    .line 1911
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1913
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist addFile(ILjava/lang/String;J[B[B)V
    .registers 14
    .param p1, "location"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lengthBytes"    # J
    .param p5, "metadata"    # [B
    .param p6, "signature"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1557
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageInstallerSession;->addFile(ILjava/lang/String;J[B[B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 1560
    nop

    .line 1561
    return-void

    .line 1558
    :catch_c
    move-exception v0

    .line 1559
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist addProgress(F)V
    .registers 4
    .param p1, "progress"    # F

    .line 1277
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->addClientProgress(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1280
    nop

    .line 1281
    return-void

    .line 1278
    :catch_7
    move-exception v0

    .line 1279
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 1815
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1818
    nop

    .line 1819
    return-void

    .line 1816
    :catch_7
    move-exception v0

    .line 1817
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist commit(Landroid/content/IntentSender;)V
    .registers 4
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;

    .line 1739
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 1742
    nop

    .line 1743
    return-void

    .line 1740
    :catch_8
    move-exception v0

    .line 1741
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist commitTransferred(Landroid/content/IntentSender;)V
    .registers 4
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1768
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 1771
    nop

    .line 1772
    return-void

    .line 1769
    :catch_8
    move-exception v0

    .line 1770
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist fsync(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1376
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    const-string v1, "Unrecognized stream"

    if-eqz v0, :cond_21

    .line 1377
    instance-of v0, p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    if-eqz v0, :cond_1b

    .line 1379
    :try_start_a
    move-object v0, p1

    check-cast v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_14} :catch_15

    .line 1382
    goto :goto_2b

    .line 1380
    :catch_15
    move-exception v0

    .line 1381
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1384
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1387
    :cond_21
    instance-of v0, p1, Landroid/os/FileBridge$FileBridgeOutputStream;

    if-eqz v0, :cond_2c

    .line 1388
    move-object v0, p1

    check-cast v0, Landroid/os/FileBridge$FileBridgeOutputStream;

    invoke-virtual {v0}, Landroid/os/FileBridge$FileBridgeOutputStream;->fsync()V

    .line 1393
    :goto_2b
    return-void

    .line 1390
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getChildSessionIds()[I
    .registers 3

    .line 1891
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1892
    :catch_7
    move-exception v0

    .line 1893
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDataLoaderParams()Landroid/content/pm/DataLoaderParams;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1515
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getDataLoaderParams()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v0

    .line 1516
    .local v0, "data":Landroid/content/pm/DataLoaderParamsParcel;
    if-nez v0, :cond_a

    .line 1517
    const/4 v1, 0x0

    return-object v1

    .line 1519
    :cond_a
    new-instance v1, Landroid/content/pm/DataLoaderParams;

    invoke-direct {v1, v0}, Landroid/content/pm/DataLoaderParams;-><init>(Landroid/content/pm/DataLoaderParamsParcel;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 1520
    .end local v0    # "data":Landroid/content/pm/DataLoaderParamsParcel;
    :catch_10
    move-exception v0

    .line 1521
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInstallFlags()I
    .registers 3

    .line 1866
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getInstallFlags()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1867
    :catch_7
    move-exception v0

    .line 1868
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNames()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1454
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getNames()[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1458
    :catch_7
    move-exception v0

    .line 1459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1455
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 1456
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1457
    throw v0
.end method

.method public whitelist getParentSessionId()I
    .registers 3

    .line 1878
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getParentSessionId()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1879
    :catch_7
    move-exception v0

    .line 1880
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isMultiPackage()Z
    .registers 3

    .line 1843
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->isMultiPackage()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1844
    :catch_7
    move-exception v0

    .line 1845
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isStaged()Z
    .registers 3

    .line 1854
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->isStaged()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1855
    :catch_7
    move-exception v0

    .line 1856
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist openRead(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1476
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1477
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 1481
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_c
    move-exception v0

    .line 1482
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1478
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 1479
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1480
    throw v0
.end method

.method public whitelist openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1316
    :try_start_0
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_13

    .line 1317
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    .line 1318
    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageInstallerSession;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1317
    return-object v0

    .line 1320
    :cond_13
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageInstallerSession;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1322
    .local v0, "clientSocket":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Landroid/os/FileBridge$FileBridgeOutputStream;

    invoke-direct {v1, v0}, Landroid/os/FileBridge$FileBridgeOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_21} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    return-object v1

    .line 1327
    .end local v0    # "clientSocket":Landroid/os/ParcelFileDescriptor;
    :catch_22
    move-exception v0

    .line 1328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1324
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_28
    move-exception v0

    .line 1325
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1326
    throw v0
.end method

.method public whitelist removeChildSessionId(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 1923
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->removeChildSessionId(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1926
    goto :goto_a

    .line 1924
    :catch_6
    move-exception v0

    .line 1925
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1927
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist removeFile(ILjava/lang/String;)V
    .registers 5
    .param p1, "location"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1580
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstallerSession;->removeFile(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1583
    nop

    .line 1584
    return-void

    .line 1581
    :catch_7
    move-exception v0

    .line 1582
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeSplit(Ljava/lang/String;)V
    .registers 4
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1498
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->removeSplit(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1504
    nop

    .line 1505
    return-void

    .line 1502
    :catch_7
    move-exception v0

    .line 1503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1499
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 1500
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1501
    throw v0
.end method

.method public whitelist requestChecksums(Ljava/lang/String;ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "onChecksumsReadyListener"    # Landroid/content/pm/PackageManager$OnChecksumsReadyListener;
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

    .line 1683
    .local p3, "trustedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    sget-object v0, Landroid/content/pm/PackageManager;->TRUST_ALL:Ljava/util/List;

    if-ne p3, v0, :cond_12

    .line 1688
    const/4 p3, 0x0

    goto :goto_21

    .line 1689
    :cond_12
    sget-object v0, Landroid/content/pm/PackageManager;->TRUST_NONE:Ljava/util/List;

    if-ne p3, v0, :cond_1b

    .line 1690
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    goto :goto_21

    .line 1691
    :cond_1b
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 1697
    :goto_21
    :try_start_21
    new-instance v5, Landroid/content/pm/PackageInstaller$Session$1;

    invoke-direct {v5, p0, p4, p5}, Landroid/content/pm/PackageInstaller$Session$1;-><init>(Landroid/content/pm/PackageInstaller$Session;Ljava/util/concurrent/Executor;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V

    .line 1706
    .local v5, "onChecksumsReadyListenerDelegate":Landroid/content/pm/IOnChecksumsReadyListener;
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    const/16 v2, 0x7f

    .line 1707
    invoke-static {p3}, Landroid/content/pm/PackageInstaller$Session;->encodeCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1706
    move-object v1, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession;->requestChecksums(Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    :try_end_33
    .catch Landroid/os/ParcelableException; {:try_start_21 .. :try_end_33} :catch_3b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_33} :catch_35

    .line 1713
    .end local v5    # "onChecksumsReadyListenerDelegate":Landroid/content/pm/IOnChecksumsReadyListener;
    nop

    .line 1714
    return-void

    .line 1711
    :catch_35
    move-exception v0

    .line 1712
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1708
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3b
    move-exception v0

    .line 1709
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 1710
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1692
    .end local v0    # "e":Landroid/os/ParcelableException;
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "trustedInstallers has to be one of TRUST_ALL/TRUST_NONE or a non-empty list of certificates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setChecksums(Ljava/lang/String;Ljava/util/List;[B)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "signature"    # [B
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

    .line 1615
    .local p2, "checksums":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Checksum;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    :try_start_6
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/Checksum;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Checksum;

    invoke-interface {v0, p1, v1, p3}, Landroid/content/pm/IPackageInstallerSession;->setChecksums(Ljava/lang/String;[Landroid/content/pm/Checksum;[B)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_17} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_19

    .line 1626
    nop

    .line 1627
    return-void

    .line 1624
    :catch_19
    move-exception v0

    .line 1625
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1621
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1f
    move-exception v0

    .line 1622
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1623
    throw v0
.end method

.method public greylist-max-o setProgress(F)V
    .registers 2
    .param p1, "progress"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1253
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$Session;->setStagingProgress(F)V

    .line 1254
    return-void
.end method

.method public whitelist setStagingProgress(F)V
    .registers 4
    .param p1, "progress"    # F

    .line 1267
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->setClientProgress(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1270
    nop

    .line 1271
    return-void

    .line 1268
    :catch_7
    move-exception v0

    .line 1269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist stageViaHardLink(Ljava/lang/String;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1361
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->stageViaHardLink(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1367
    nop

    .line 1368
    return-void

    .line 1365
    :catch_7
    move-exception v0

    .line 1366
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1362
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 1363
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1364
    throw v0
.end method

.method public blacklist submitSpeedInstallFile(Ljava/lang/String;)Z
    .registers 7
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1420
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 1421
    .local v0, "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/PackageInstaller;->getSpeedInstallDirForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1422
    .local v1, "speedInstallFilePath":Ljava/io/File;
    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 1423
    return v2

    .line 1425
    :cond_10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1426
    invoke-static {v0}, Landroid/content/pm/PackageInstaller;->-$$Nest$smgetSpeedInstallExternaDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 1427
    .local v3, "externalFile":Ljava/io/File;
    if-eqz v3, :cond_2a

    .line 1428
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 1429
    :cond_2a
    return v2

    .line 1434
    .end local v3    # "externalFile":Ljava/io/File;
    :cond_2b
    :try_start_2b
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageInstallerSession;->submitSpeedInstallFile(Ljava/lang/String;)Z

    move-result v2
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_31} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    return v2

    .line 1438
    :catch_32
    move-exception v2

    .line 1439
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1435
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_38
    move-exception v2

    .line 1436
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-static {v2}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1437
    throw v2
.end method

.method public whitelist transfer(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1796
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1799
    :try_start_9
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->transfer(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/ParcelableException; {:try_start_9 .. :try_end_e} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1805
    nop

    .line 1806
    return-void

    .line 1803
    :catch_10
    move-exception v0

    .line 1804
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1800
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_16
    move-exception v0

    .line 1801
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 1802
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .param p6, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1336
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageInstallerSession;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 1342
    nop

    .line 1343
    return-void

    .line 1340
    :catch_b
    move-exception v0

    .line 1341
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1337
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_11
    move-exception v0

    .line 1338
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1339
    throw v0
.end method
