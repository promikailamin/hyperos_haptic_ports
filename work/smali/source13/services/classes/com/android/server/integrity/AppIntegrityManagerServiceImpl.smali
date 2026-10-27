.class public Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
.super Landroid/content/integrity/IAppIntegrityManager$Stub;
.source "AppIntegrityManagerServiceImpl.java"


# static fields
.field public static final ADB_INSTALLER:Ljava/lang/String; = "adb"

.field private static final ALLOWED_INSTALLERS_METADATA_NAME:Ljava/lang/String; = "allowed-installers"

.field private static final ALLOWED_INSTALLER_DELIMITER:Ljava/lang/String; = ","

.field private static final BASE_APK_FILE:Ljava/lang/String; = "base.apk"

.field public static final DEBUG_INTEGRITY_COMPONENT:Z = false

.field private static final INSTALLER_PACKAGE_CERT_DELIMITER:Ljava/lang/String; = "\\|"

.field private static final PACKAGE_INSTALLER:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final TAG:Ljava/lang/String; = "AppIntegrityManagerServiceImpl"

.field private static final UNKNOWN_INSTALLER:Ljava/lang/String; = ""


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mParserSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleIntegrityVerification(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->handleIntegrityVerification(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 125
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.google.android.packageinstaller"

    const-string v2, "com.android.packageinstaller"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->PACKAGE_INSTALLER:Ljava/util/Set;

    .line 125
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/integrity/engine/RuleEvaluationEngine;Lcom/android/server/integrity/IntegrityFileManager;Landroid/os/Handler;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p4, "evaluationEngine"    # Lcom/android/server/integrity/engine/RuleEvaluationEngine;
    .param p5, "integrityFileManager"    # Lcom/android/server/integrity/IntegrityFileManager;
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManagerInternal;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;",
            "Lcom/android/server/integrity/engine/RuleEvaluationEngine;",
            "Lcom/android/server/integrity/IntegrityFileManager;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 159
    .local p3, "parserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    invoke-direct {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 162
    iput-object p3, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mParserSupplier:Ljava/util/function/Supplier;

    .line 163
    iput-object p4, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    .line 164
    iput-object p5, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    .line 165
    iput-object p6, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, "integrityVerificationFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    :try_start_19
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_19 .. :try_end_1e} :catch_29

    .line 173
    nop

    .line 175
    new-instance v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;-><init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, p6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 189
    return-void

    .line 171
    :catch_29
    move-exception v1

    .line 172
    .local v1, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Mime type malformed: should never happen."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 140
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppIntegrityManagerServiceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 143
    new-instance v8, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 145
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    new-instance v4, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 147
    invoke-static {}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->getRuleEvaluationEngine()Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    move-result-object v5

    .line 148
    invoke-static {}, Lcom/android/server/integrity/IntegrityFileManager;->getInstance()Lcom/android/server/integrity/IntegrityFileManager;

    move-result-object v6

    .line 149
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v7

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/integrity/engine/RuleEvaluationEngine;Lcom/android/server/integrity/IntegrityFileManager;Landroid/os/Handler;)V

    .line 143
    return-object v8
.end method

.method private extractSourceStamp(Landroid/net/Uri;Landroid/content/integrity/AppInstallMetadata$Builder;)V
    .registers 9
    .param p1, "dataUri"    # Landroid/net/Uri;
    .param p2, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 503
    invoke-direct {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallationPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 504
    .local v0, "installationPath":Ljava/io/File;
    if-eqz v0, :cond_92

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 510
    :try_start_c
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_3d

    .line 511
    .local v1, "filesList":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :try_start_14
    new-instance v2, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda2;-><init>()V

    .line 513
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 514
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 515
    .local v2, "apkFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_31

    .line 516
    .end local v2    # "apkFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    if-eqz v1, :cond_30

    :try_start_2d
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_3d

    .line 518
    .end local v1    # "filesList":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :cond_30
    goto :goto_4f

    .line 510
    .end local v3    # "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    .restart local v1    # "filesList":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :catchall_31
    move-exception v2

    if-eqz v1, :cond_3c

    :try_start_34
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v3

    :try_start_39
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "installationPath":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
    .end local p1    # "dataUri":Landroid/net/Uri;
    .end local p2    # "appInstallMetadata":Landroid/content/integrity/AppInstallMetadata$Builder;
    :cond_3c
    :goto_3c
    throw v2
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_3d

    .line 516
    .end local v1    # "filesList":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .restart local v0    # "installationPath":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
    .restart local p1    # "dataUri":Landroid/net/Uri;
    .restart local p2    # "appInstallMetadata":Landroid/content/integrity/AppInstallMetadata$Builder;
    :catch_3d
    move-exception v1

    .line 517
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not read APK directory"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 520
    .end local v1    # "e":Ljava/io/IOException;
    :cond_46
    nop

    .line 521
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/lang/String;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v3

    .line 524
    .restart local v3    # "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    :goto_4f
    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->isPresent()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampPresent(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 525
    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampVerified(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 527
    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampTrusted(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 528
    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 529
    nop

    .line 530
    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 533
    .local v1, "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    :try_start_71
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 534
    .local v2, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 535
    .local v4, "certificateDigest":[B
    invoke-static {v4}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/integrity/AppInstallMetadata$Builder;->setStampCertificateHash(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;
    :try_end_86
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_71 .. :try_end_86} :catch_88
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_71 .. :try_end_86} :catch_88

    .line 539
    nop

    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "certificateDigest":[B
    goto :goto_91

    .line 536
    :catch_88
    move-exception v2

    .line 537
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Error computing source stamp certificate digest"

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 541
    .end local v1    # "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :cond_91
    :goto_91
    return-void

    .line 505
    .end local v3    # "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    :cond_92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Installation path is null, package not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAllowedInstallers(Landroid/content/pm/PackageInfo;)Ljava/util/Map;
    .registers 14
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 475
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 476
    .local v0, "packageCertMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_53

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_53

    .line 477
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 478
    .local v1, "metaData":Landroid/os/Bundle;
    const-string v2, "allowed-installers"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "allowedInstallers":Ljava/lang/String;
    if-eqz v2, :cond_53

    .line 481
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "installerCertPairs":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_24
    if-ge v6, v4, :cond_53

    aget-object v7, v3, v6

    .line 483
    .local v7, "packageCertPair":Ljava/lang/String;
    nop

    .line 484
    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 485
    .local v8, "packageAndCert":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v9, v10, :cond_40

    .line 486
    aget-object v9, v8, v5

    invoke-direct {p0, v9}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 487
    .local v9, "packageName":Ljava/lang/String;
    aget-object v10, v8, v11

    .line 488
    .local v10, "cert":Ljava/lang/String;
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "cert":Ljava/lang/String;
    goto :goto_4f

    .line 489
    :cond_40
    array-length v9, v8

    if-ne v9, v11, :cond_4f

    .line 490
    aget-object v9, v8, v5

    .line 491
    invoke-direct {p0, v9}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 490
    const-string v10, ""

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 489
    :cond_4f
    :goto_4f
    nop

    .line 482
    .end local v7    # "packageCertPair":Ljava/lang/String;
    .end local v8    # "packageAndCert":[Ljava/lang/String;
    :goto_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 498
    .end local v1    # "metaData":Landroid/os/Bundle;
    .end local v2    # "allowedInstallers":Ljava/lang/String;
    .end local v3    # "installerCertPairs":[Ljava/lang/String;
    :cond_53
    return-object v0
.end method

.method private getAllowedRuleProviderSystemApps()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 764
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 765
    const v1, 0x1070078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 768
    .local v0, "integrityRuleProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v1, "systemAppRuleProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 770
    .local v3, "ruleProvider":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->isSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 771
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    .end local v3    # "ruleProvider":Ljava/lang/String;
    :cond_2f
    goto :goto_1a

    .line 774
    :cond_30
    return-object v1
.end method

.method private getCallerPackageNameOrThrow(I)Ljava/lang/String;
    .registers 5
    .param p1, "callingUid"    # I

    .line 718
    invoke-direct {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallingRulePusherPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "callerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 724
    return-object v0

    .line 720
    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only system packages specified in config_integrityRuleProviderPackages are allowed to call this method."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getCallingRulePusherPackageName(I)Ljava/lang/String;
    .registers 8
    .param p1, "callingUid"    # I

    .line 729
    invoke-direct {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    move-result-object v0

    .line 738
    .local v0, "allowedRuleProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    move-result-object v1

    .line 742
    .local v1, "callingPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v2, "allowedCallingPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 744
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 745
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_26
    goto :goto_11

    .line 749
    :cond_27
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v3, 0x0

    goto :goto_36

    :cond_2f
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_36
    return-object v3
.end method

.method private getCertificateFingerprint(Landroid/content/pm/PackageInfo;)Ljava/util/List;
    .registers 8
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v0, "certificateFingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 460
    .local v4, "signature":Landroid/content/pm/Signature;
    invoke-static {v4}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    .end local v4    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 462
    :cond_19
    return-object v0
.end method

.method private getCertificateLineage(Landroid/content/pm/PackageInfo;)Ljava/util/List;
    .registers 8
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v0, "certificateLineage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getSignatureLineage(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 468
    .local v4, "signature":Landroid/content/pm/Signature;
    invoke-static {v4}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    .end local v4    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 470
    :cond_19
    return-object v0
.end method

.method private static getFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 7
    .param p0, "cert"    # Landroid/content/pm/Signature;

    .line 587
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 591
    .local v0, "input":Ljava/io/InputStream;
    :try_start_9
    const-string v1, "X509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_f} :catch_4b

    .line 594
    .local v1, "factory":Ljava/security/cert/CertificateFactory;
    nop

    .line 595
    const/4 v2, 0x0

    .line 597
    .local v2, "certificate":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_24

    .line 598
    :try_start_13
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_19
    .catch Ljava/security/cert/CertificateException; {:try_start_13 .. :try_end_19} :catch_1b

    move-object v2, v3

    goto :goto_24

    .line 600
    :catch_1b
    move-exception v3

    .line 601
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error getting X509Certificate"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 602
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :cond_24
    :goto_24
    nop

    .line 604
    if-eqz v2, :cond_43

    .line 609
    :try_start_27
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 610
    .local v3, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 611
    .local v4, "publicKey":[B
    invoke-static {v4}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object v5
    :try_end_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_27 .. :try_end_39} :catch_3a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_27 .. :try_end_39} :catch_3a

    return-object v5

    .line 612
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "publicKey":[B
    :catch_3a
    move-exception v3

    .line 613
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Error error computing fingerprint"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 605
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :cond_43
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "X509 Certificate not found"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 592
    .end local v1    # "factory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "certificate":Ljava/security/cert/X509Certificate;
    :catch_4b
    move-exception v1

    .line 593
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error getting CertificateFactory"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getInstallationPath(Landroid/net/Uri;)Ljava/io/File;
    .registers 7
    .param p1, "dataUri"    # Landroid/net/Uri;

    .line 698
    if-eqz p1, :cond_6f

    .line 702
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 707
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 708
    .local v1, "installationPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 711
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 714
    return-object v1

    .line 712
    :cond_24
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read file for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 709
    :cond_3d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find file for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 704
    .end local v1    # "installationPath":Ljava/io/File;
    :cond_56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 699
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null data uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getInstallerCertificateFingerprint(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "installer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 443
    const-string v0, "adb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_46

    .line 447
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 448
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x8000000

    .line 449
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 450
    .local v0, "installerInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCertificateFingerprint(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v1
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_21} :catch_22

    return-object v1

    .line 451
    .end local v0    # "installerInfo":Landroid/content/pm/PackageInfo;
    :catch_22
    move-exception v0

    .line 452
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installer package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppIntegrityManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 444
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_46
    :goto_46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getInstallerPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 382
    nop

    .line 383
    const-string v0, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "installer":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 385
    const-string v1, "adb"

    return-object v1

    .line 387
    :cond_c
    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 388
    .local v1, "installerUid":I
    const-string v3, "AppIntegrityManagerServiceImpl"

    const-string v4, ""

    if-gez v1, :cond_3a

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installer cannot be determined: installer: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " installer UID: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-object v4

    .line 400
    :cond_3a
    invoke-direct {p0, v1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 401
    return-object v4

    .line 409
    :cond_45
    sget-object v5, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->PACKAGE_INSTALLER:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 410
    const-string v5, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 411
    .local v2, "originatingUid":I
    if-gez v2, :cond_5b

    .line 412
    const-string v5, "Installer is package installer but originating UID not found."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-object v4

    .line 415
    :cond_5b
    invoke-direct {p0, v2}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    move-result-object v5

    .line 416
    .local v5, "installerPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 417
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No package found associated with originating UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-object v4

    .line 421
    :cond_7c
    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 424
    .end local v2    # "originatingUid":I
    .end local v5    # "installerPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_84
    return-object v0
.end method

.method private getMultiApkInfo(Ljava/io/File;)Landroid/content/pm/PackageInfo;
    .registers 13
    .param p1, "multiApkDirectory"    # Ljava/io/File;

    .line 654
    const-string v0, "AppIntegrityManagerServiceImpl"

    new-instance v1, Ljava/io/File;

    const-string v2, "base.apk"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 655
    .local v1, "baseFile":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 656
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 658
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 657
    const v4, 0x8000080

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 662
    .local v2, "basePackageInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_70

    .line 663
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_22
    if-ge v6, v5, :cond_70

    aget-object v7, v3, v6

    .line 664
    .local v7, "apkFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 665
    goto :goto_6d

    .line 671
    :cond_2d
    :try_start_2d
    iget-object v8, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 672
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 674
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 673
    invoke-virtual {v8, v9, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3b} :catch_3d

    move-object v2, v8

    .line 681
    goto :goto_54

    .line 677
    :catch_3d
    move-exception v8

    .line 680
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_54
    if-eqz v2, :cond_6d

    .line 683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found package info from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    goto :goto_70

    .line 663
    .end local v7    # "apkFile":Ljava/io/File;
    :cond_6d
    :goto_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 689
    :cond_70
    :goto_70
    if-eqz v2, :cond_73

    .line 694
    return-object v2

    .line 690
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Base package info cannot be found from installation directory"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPackageArchiveInfo(Landroid/net/Uri;)Landroid/content/pm/PackageInfo;
    .registers 25
    .param p1, "dataUri"    # Landroid/net/Uri;

    .line 618
    const-string v1, "AppIntegrityManagerServiceImpl"

    invoke-direct/range {p0 .. p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallationPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    .line 619
    .local v2, "installationPath":Ljava/io/File;
    if-eqz v2, :cond_98

    .line 623
    const/4 v3, 0x0

    move-object/from16 v4, p0

    :try_start_b
    iget-object v0, v4, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mParserSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/PackageParser2;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_7e

    move-object v5, v0

    .line 624
    .local v5, "parser":Lcom/android/server/pm/parsing/PackageParser2;
    const/4 v0, 0x0

    :try_start_15
    invoke-virtual {v5, v2, v0, v0}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 625
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    const v15, 0x8000080

    .line 628
    .local v15, "flags":I
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v6

    move-object v14, v6

    .line 629
    .local v14, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    const/4 v6, 0x1

    invoke-static {v14, v0, v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    move-object/from16 v18, v6

    .line 631
    .local v18, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface/range {v18 .. v18}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 632
    invoke-interface/range {v18 .. v18}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v18 .. v18}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-static {v1, v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_15 .. :try_end_39} :catchall_70

    .line 633
    nop

    .line 646
    if-eqz v5, :cond_3f

    :try_start_3c
    invoke-virtual {v5}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_7e

    .line 633
    :cond_3f
    return-object v3

    .line 635
    :cond_40
    :try_start_40
    invoke-interface/range {v18 .. v18}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/SigningDetails;

    invoke-interface {v0, v6}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 636
    const/4 v7, 0x0

    int-to-long v8, v15

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    sget-object v17, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 644
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v19

    const/16 v20, 0x0

    .line 636
    move-object v6, v0

    move-object/from16 v21, v14

    .end local v14    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .local v21, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    move-object/from16 v14, v16

    move/from16 v22, v15

    .end local v15    # "flags":I
    .local v22, "flags":I
    move-object/from16 v15, v17

    move/from16 v16, v19

    move-object/from16 v17, v20

    invoke-static/range {v6 .. v17}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_6a
    .catchall {:try_start_40 .. :try_end_6a} :catchall_70

    .line 646
    if-eqz v5, :cond_6f

    :try_start_6c
    invoke-virtual {v5}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_7e

    .line 636
    :cond_6f
    return-object v6

    .line 623
    .end local v0    # "pkg":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    .end local v21    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v22    # "flags":I
    :catchall_70
    move-exception v0

    move-object v6, v0

    if-eqz v5, :cond_7d

    :try_start_74
    invoke-virtual {v5}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7d

    :catchall_78
    move-exception v0

    move-object v7, v0

    :try_start_7a
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "installationPath":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
    .end local p1    # "dataUri":Landroid/net/Uri;
    :cond_7d
    :goto_7d
    throw v6
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7e} :catch_7e

    .line 646
    .end local v5    # "parser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local v2    # "installationPath":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
    .restart local p1    # "dataUri":Landroid/net/Uri;
    :catch_7e
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    return-object v3

    .line 620
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_98
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Installation path is null, package not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPackageListForUid(I)Ljava/util/List;
    .registers 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 799
    :catch_f
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "No packages were found for uid: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppIntegrityManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_9

    .line 430
    return-object p1

    .line 434
    :cond_9
    :try_start_9
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 435
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 436
    .local v1, "hashBytes":[B
    invoke-static {v1}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object v2
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_1d} :catch_1e

    return-object v2

    .line 437
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "hashBytes":[B
    :catch_1e
    move-exception v0

    .line 438
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SHA-256 algorithm not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getSignatureLineage(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .registers 8
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 556
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 557
    .local v0, "signingInfo":Landroid/content/pm/SigningInfo;
    if-eqz v0, :cond_37

    .line 563
    invoke-static {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 566
    .local v1, "signatureLineage":[Landroid/content/pm/Signature;
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->hasPastSigningCertificates()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 567
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 570
    .local v2, "pastSignatures":[Landroid/content/pm/Signature;
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [Landroid/content/pm/Signature;

    .line 573
    .local v3, "allSignatures":[Landroid/content/pm/Signature;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    array-length v5, v1

    if-ge v4, v5, :cond_28

    .line 574
    aget-object v5, v1, v4

    aput-object v5, v3, v4

    .line 573
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 576
    :cond_28
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_29
    array-length v6, v2

    if-ge v5, v6, :cond_35

    .line 577
    aget-object v6, v2, v5

    aput-object v6, v3, v4

    .line 578
    add-int/lit8 v4, v4, 0x1

    .line 576
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 580
    .end local v5    # "j":I
    :cond_35
    move-object v1, v3

    .line 583
    .end local v2    # "pastSignatures":[Landroid/content/pm/Signature;
    .end local v3    # "allSignatures":[Landroid/content/pm/Signature;
    .end local v4    # "i":I
    :cond_36
    return-object v1

    .line 558
    .end local v1    # "signatureLineage":[Landroid/content/pm/Signature;
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package signature not found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .registers 5
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 544
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 546
    .local v0, "signingInfo":Landroid/content/pm/SigningInfo;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_11

    .line 551
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1

    return-object v1

    .line 547
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package signature not found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleIntegrityVerification(Landroid/content/Intent;)V
    .registers 27
    .param p1, "intent"    # Landroid/content/Intent;

    .line 278
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "AppIntegrityManagerServiceImpl"

    const-string v0, "android.content.pm.extra.VERIFICATION_ID"

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 286
    .local v4, "verificationId":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallerPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "installerPackageName":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->integrityCheckIncludesRuleProvider()Z

    move-result v7

    if-nez v7, :cond_25

    invoke-direct {v1, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->isRuleProvider(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 293
    iget-object v7, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v7, v4, v6}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    .line 295
    return-void

    .line 298
    :cond_25
    const-string v7, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    .line 300
    .local v15, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageArchiveInfo(Landroid/net/Uri;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    move-object v14, v7

    .line 301
    .local v14, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v14, :cond_53

    .line 302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot parse package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v7, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v7, v4, v6}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    .line 306
    return-void

    .line 309
    :cond_53
    invoke-direct {v1, v14}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCertificateFingerprint(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v7

    move-object v13, v7

    .line 310
    .local v13, "appCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1, v14}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCertificateLineage(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v7

    move-object v12, v7

    .line 311
    .local v12, "appCertificateLineage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 312
    invoke-direct {v1, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallerCertificateFingerprint(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v10, v7

    .line 314
    .local v10, "installerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Landroid/content/integrity/AppInstallMetadata$Builder;

    invoke-direct {v7}, Landroid/content/integrity/AppInstallMetadata$Builder;-><init>()V

    move-object v11, v7

    .line 316
    .local v11, "builder":Landroid/content/integrity/AppInstallMetadata$Builder;
    invoke-direct {v1, v15}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 317
    invoke-virtual {v11, v13}, Landroid/content/integrity/AppInstallMetadata$Builder;->setAppCertificates(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 318
    invoke-virtual {v11, v12}, Landroid/content/integrity/AppInstallMetadata$Builder;->setAppCertificateLineage(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 319
    const-string v7, "android.intent.extra.LONG_VERSION_CODE"

    const-wide/16 v8, -0x1

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v11, v7, v8}, Landroid/content/integrity/AppInstallMetadata$Builder;->setVersionCode(J)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 320
    invoke-direct {v1, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setInstallerName(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 321
    invoke-virtual {v11, v10}, Landroid/content/integrity/AppInstallMetadata$Builder;->setInstallerCertificates(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 322
    invoke-direct {v1, v15}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->isSystemApp(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v11, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsPreInstalled(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 323
    invoke-direct {v1, v14}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedInstallers(Landroid/content/pm/PackageInfo;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setAllowedInstallersAndCert(Ljava/util/Map;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 324
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v7, v11}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->extractSourceStamp(Landroid/net/Uri;Landroid/content/integrity/AppInstallMetadata$Builder;)V

    .line 326
    invoke-virtual {v11}, Landroid/content/integrity/AppInstallMetadata$Builder;->build()Landroid/content/integrity/AppInstallMetadata;

    move-result-object v7

    move-object v9, v7

    .line 336
    .local v9, "appInstallMetadata":Landroid/content/integrity/AppInstallMetadata;
    iget-object v7, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    invoke-virtual {v7, v9}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->evaluate(Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object v7

    move-object/from16 v16, v7

    .line 337
    .local v16, "result":Lcom/android/server/integrity/model/IntegrityCheckResult;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getMatchedRules()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b8

    goto :goto_d4

    .line 338
    :cond_b8
    const-string v7, "Integrity check of %s result: %s due to %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v15, v8, v5

    .line 342
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    move-result-object v17

    aput-object v17, v8, v6

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getMatchedRules()Ljava/util/List;

    move-result-object v18

    aput-object v18, v8, v17

    .line 340
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 338
    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_d4
    const/16 v7, 0xf7

    .line 348
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 349
    invoke-virtual {v9}, Landroid/content/integrity/AppInstallMetadata;->getVersionCode()J

    move-result-wide v18

    .line 351
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getLoggingResponse()I

    move-result v20

    .line 352
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->isCausedByAppCertRule()Z

    move-result v21

    .line 353
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->isCausedByInstallerRule()Z

    move-result v22

    .line 345
    move-object v8, v15

    move-object/from16 v23, v9

    .end local v9    # "appInstallMetadata":Landroid/content/integrity/AppInstallMetadata;
    .local v23, "appInstallMetadata":Landroid/content/integrity/AppInstallMetadata;
    move-object/from16 v9, v17

    move-object/from16 v17, v10

    move-object/from16 v24, v11

    .end local v10    # "installerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "builder":Landroid/content/integrity/AppInstallMetadata$Builder;
    .local v17, "installerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v24, "builder":Landroid/content/integrity/AppInstallMetadata$Builder;
    move-wide/from16 v10, v18

    move-object/from16 v18, v12

    .end local v12    # "appCertificateLineage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "appCertificateLineage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v0

    move-object/from16 v19, v13

    .end local v13    # "appCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "appCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v13, v20

    move-object/from16 v20, v14

    .end local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v20, "packageInfo":Landroid/content/pm/PackageInfo;
    move/from16 v14, v21

    move-object/from16 v21, v15

    .end local v15    # "packageName":Ljava/lang/String;
    .local v21, "packageName":Ljava/lang/String;
    move/from16 v15, v22

    invoke-static/range {v7 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IZZ)V

    .line 354
    iget-object v7, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 356
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    move-result-object v8

    sget-object v9, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    if-ne v8, v9, :cond_113

    .line 357
    move v8, v6

    goto :goto_114

    .line 358
    :cond_113
    move v8, v5

    .line 354
    :goto_114
    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V
    :try_end_117
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_117} :catch_124
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_117} :catch_118

    .end local v0    # "installerPackageName":Ljava/lang/String;
    .end local v16    # "result":Lcom/android/server/integrity/model/IntegrityCheckResult;
    .end local v17    # "installerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "appCertificateLineage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "appCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v23    # "appInstallMetadata":Landroid/content/integrity/AppInstallMetadata;
    .end local v24    # "builder":Landroid/content/integrity/AppInstallMetadata$Builder;
    goto :goto_12f

    .line 365
    :catch_118
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Error handling integrity verification"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    iget-object v3, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    goto :goto_130

    .line 359
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_124
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "Invalid input to integrity verification"

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    iget-object v3, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    .line 371
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_12f
    nop

    .line 372
    :goto_130
    return-void
.end method

.method private integrityCheckIncludesRuleProvider()Z
    .registers 4

    .line 789
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 790
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 789
    const-string/jumbo v1, "verify_integrity_for_rule_provider"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    :cond_12
    return v2
.end method

.method private isRuleProvider(Ljava/lang/String;)Z
    .registers 5
    .param p1, "installerPackageName"    # Ljava/lang/String;

    .line 753
    invoke-direct {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 754
    .local v1, "ruleProvider":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 755
    const/4 v0, 0x1

    return v0

    .line 757
    .end local v1    # "ruleProvider":Ljava/lang/String;
    :cond_1c
    goto :goto_8

    .line 758
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 779
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 780
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 781
    .local v1, "existingPackageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_19

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 782
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_1b

    if-eqz v2, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    nop

    .line 781
    :goto_1a
    return v0

    .line 783
    .end local v1    # "existingPackageInfo":Landroid/content/pm/PackageInfo;
    :catch_1b
    move-exception v1

    .line 784
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method static synthetic lambda$extractSourceStamp$1(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 513
    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrentRuleSetProvider()Ljava/lang/String;
    .registers 3

    .line 253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {v0}, Lcom/android/server/integrity/IntegrityFileManager;->readMetadata()Lcom/android/server/integrity/model/RuleMetadata;

    move-result-object v0

    .line 256
    .local v0, "ruleMetadata":Lcom/android/server/integrity/model/RuleMetadata;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/integrity/model/RuleMetadata;->getRuleProvider()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 257
    invoke-virtual {v0}, Lcom/android/server/integrity/model/RuleMetadata;->getRuleProvider()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 258
    :cond_1a
    const-string v1, ""

    .line 256
    :goto_1c
    return-object v1
.end method

.method public getCurrentRuleSetVersion()Ljava/lang/String;
    .registers 3

    .line 242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {v0}, Lcom/android/server/integrity/IntegrityFileManager;->readMetadata()Lcom/android/server/integrity/model/RuleMetadata;

    move-result-object v0

    .line 245
    .local v0, "ruleMetadata":Lcom/android/server/integrity/model/RuleMetadata;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/integrity/model/RuleMetadata;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 246
    invoke-virtual {v0}, Lcom/android/server/integrity/model/RuleMetadata;->getVersion()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 247
    :cond_1a
    const-string v1, ""

    .line 245
    :goto_1c
    return-object v1
.end method

.method public getCurrentRules()Landroid/content/pm/ParceledListSlice;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 265
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    :try_start_4
    iget-object v1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/integrity/IntegrityFileManager;->readRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 268
    goto :goto_15

    .line 266
    :catch_d
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AppIntegrityManagerServiceImpl"

    const-string v3, "Error getting current rules"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_15
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getWhitelistedRuleProviders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-direct {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$updateRuleSet$0$com-android-server-integrity-AppIntegrityManagerServiceImpl(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    .registers 14
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "ruleProvider"    # Ljava/lang/String;
    .param p3, "rules"    # Landroid/content/pm/ParceledListSlice;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;

    .line 202
    const-string v0, "AppIntegrityManagerServiceImpl"

    const/4 v1, 0x1

    .line 204
    .local v1, "success":Z
    :try_start_3
    iget-object v2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/integrity/IntegrityFileManager;->writeRules(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_d

    .line 208
    goto :goto_14

    .line 205
    :catch_d
    move-exception v2

    .line 206
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error writing rules."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    const/4 v1, 0x0

    .line 218
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_14
    const/16 v2, 0xf8

    invoke-static {v2, v1, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v2, "intent":Landroid/content/Intent;
    xor-int/lit8 v3, v1, 0x1

    const-string v4, "android.content.integrity.extra.STATUS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    :try_start_25
    iget-object v4, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p4

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_30

    .line 235
    goto :goto_36

    .line 233
    :catch_30
    move-exception v3

    .line 234
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Error sending status feedback."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_36
    return-void
.end method

.method public updateRuleSet(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    .registers 13
    .param p1, "version"    # Ljava/lang/String;
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/integrity/Rule;",
            ">;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    .line 195
    .local p2, "rules":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/integrity/Rule;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "ruleProvider":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method
