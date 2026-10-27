.class Lcom/android/server/pm/PackageManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;,
        Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;,
        Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;,
        Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;,
        Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;
    }
.end annotation


# static fields
.field private static final ART_PROFILE_SNAPSHOT_DEBUG_LOCATION:Ljava/lang/String; = "/data/misc/profman/"

.field private static final DEFAULT_STAGED_READY_TIMEOUT_MS:I = 0xea60

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final STDIN_PATH:Ljava/lang/String; = "-"

.field private static final SUPPORTED_PERMISSION_FLAGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PackageManagerShellCommand"

.field private static final UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSUPPORTED_SESSION_CREATE_OPTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBrief:Z

.field mComponents:Z

.field final mContext:Landroid/content/Context;

.field final mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

.field final mInterface:Landroid/content/pm/IPackageManager;

.field final mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

.field final mPermissionManager:Landroid/permission/PermissionManager;

.field mQueryFlags:I

.field private final mResourceCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field mTargetUser:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 155
    const-string v0, "--multi-package"

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_SESSION_CREATE_OPTS:Ljava/util/Set;

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS:Ljava/util/Map;

    .line 162
    const-string/jumbo v1, "review-required"

    const-string/jumbo v2, "revoked-compat"

    const-string/jumbo v3, "revoke-when-requested"

    const-string/jumbo v4, "user-fixed"

    const-string/jumbo v5, "user-set"

    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;

    .line 164
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    nop

    .line 169
    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 168
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method constructor <init>(Landroid/content/pm/IPackageManager;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationShell;)V
    .registers 5
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "domainVerificationShell"    # Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    .line 187
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 177
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    .line 188
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 189
    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 190
    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 191
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    .line 192
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    .line 193
    return-void
.end method

.method private cancelBgDexOptJob()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1993
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->getService()Lcom/android/server/pm/BackgroundDexOptService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService;->cancelBackgroundDexoptJob()V

    .line 1994
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1995
    const/4 v0, 0x0

    return v0
.end method

.method private static checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "abi"    # Ljava/lang/String;

    .line 3436
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 3440
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3441
    return-object p0

    .line 3444
    :cond_f
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 3445
    .local v0, "supportedAbis":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 3446
    .local v3, "supportedAbi":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 3447
    return-object p0

    .line 3445
    .end local v3    # "supportedAbi":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3451
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ABI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported on this device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3437
    .end local v0    # "supportedAbis":[Ljava/lang/String;
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing ABI argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private displayPackageFilePath(Ljava/lang/String;I)I
    .registers 11
    .param p1, "pckg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const-wide/32 v1, 0x40000000

    invoke-interface {v0, p1, v1, v2, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 667
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_3f

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3f

    .line 668
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 669
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3e

    .line 672
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v5, v3

    move v6, v4

    :goto_31
    if-ge v6, v5, :cond_3e

    aget-object v7, v3, v6

    .line 673
    .local v7, "splitSourceDir":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    .end local v7    # "splitSourceDir":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 677
    :cond_3e
    return v4

    .line 679
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_3f
    const/4 v1, 0x1

    return v1
.end method

.method private doAbandonSession(IZ)I
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3772
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3773
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 3775
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3776
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 3777
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 3778
    if-eqz p2, :cond_1f

    .line 3779
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    .line 3781
    :cond_1f
    const/4 v2, 0x0

    .line 3783
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3781
    return v2

    .line 3783
    :catchall_24
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3784
    throw v2
.end method

.method private doAddFiles(ILjava/util/ArrayList;JZ)I
    .registers 20
    .param p1, "sessionId"    # I
    .param p3, "sessionSizeBytes"    # J
    .param p5, "isApex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;JZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3476
    .local p2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, p0

    const/4 v2, 0x0

    .line 3478
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v3, 0x1

    :try_start_3
    new-instance v0, Landroid/content/pm/PackageInstaller$Session;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3479
    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_b} :catch_a3
    .catchall {:try_start_3 .. :try_end_b} :catchall_9e

    move v5, p1

    :try_start_c
    invoke-interface {v4, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v2, v0

    .line 3482
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_57

    const-string v0, "-"
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_1d} :catch_9c
    .catchall {:try_start_c .. :try_end_1d} :catchall_9a

    move-object/from16 v13, p2

    :try_start_1f
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_59

    .line 3490
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3491
    .local v6, "arg":Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 3493
    .local v7, "delimLocation":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_4e

    .line 3495
    invoke-direct {p0, v6, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->processArgForStdin(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)I

    move-result v8
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_47} :catch_98
    .catchall {:try_start_1f .. :try_end_47} :catchall_cf

    if-eqz v8, :cond_51

    .line 3496
    nop

    .line 3509
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3496
    return v3

    .line 3500
    :cond_4e
    :try_start_4e
    invoke-direct {p0, v6, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->processArgForLocalFile(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)V
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_51} :catch_98
    .catchall {:try_start_4e .. :try_end_51} :catchall_cf

    .line 3502
    .end local v6    # "arg":Ljava/lang/String;
    .end local v7    # "delimLocation":I
    :cond_51
    goto :goto_2e

    .line 3503
    :cond_52
    nop

    .line 3509
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3503
    return v4

    .line 3482
    :cond_57
    move-object/from16 v13, p2

    .line 3483
    :goto_59
    :try_start_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "base"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcom/android/server/pm/PackageManagerShellCommand;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p5, :cond_79

    const-string v6, "apex"

    goto :goto_7b

    :cond_79
    const-string v6, "apk"

    :goto_7b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3484
    .local v8, "name":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forStdIn(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v0

    .line 3485
    .local v0, "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    const/4 v7, 0x0

    .line 3486
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v11

    const/4 v12, 0x0

    .line 3485
    move-object v6, v2

    move-wide/from16 v9, p3

    invoke-virtual/range {v6 .. v12}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V
    :try_end_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_93} :catch_98
    .catchall {:try_start_59 .. :try_end_93} :catchall_cf

    .line 3487
    nop

    .line 3509
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3487
    return v4

    .line 3504
    .end local v0    # "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .end local v8    # "name":Ljava/lang/String;
    :catch_98
    move-exception v0

    goto :goto_a7

    .line 3509
    :catchall_9a
    move-exception v0

    goto :goto_a0

    .line 3504
    :catch_9c
    move-exception v0

    goto :goto_a5

    .line 3509
    :catchall_9e
    move-exception v0

    move v5, p1

    :goto_a0
    move-object/from16 v13, p2

    goto :goto_d0

    .line 3504
    :catch_a3
    move-exception v0

    move v5, p1

    :goto_a5
    move-object/from16 v13, p2

    .line 3505
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_a7
    :try_start_a7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to add file(s), reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3506
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "Failure [failed to add file(s)]"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_a7 .. :try_end_ca} :catchall_cf

    .line 3507
    nop

    .line 3509
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3507
    return v3

    .line 3509
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_cf
    move-exception v0

    :goto_d0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3510
    throw v0
.end method

.method private doCommitSession(IZ)I
    .registers 11
    .param p1, "sessionId"    # I
    .param p2, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3728
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3729
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 3731
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3732
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 3733
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result v2
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_a1

    const-string v3, "]"

    if-nez v2, :cond_4a

    :try_start_1d
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->isStaged()Z

    move-result v2
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_a1

    if-nez v2, :cond_4a

    .line 3737
    :try_start_23
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->getNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexPaths([Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_2a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2a} :catch_2b
    .catchall {:try_start_23 .. :try_end_2a} :catchall_a1

    .line 3741
    goto :goto_4a

    .line 3738
    :catch_2b
    move-exception v2

    .line 3739
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning [Could not validate the dex paths: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3740
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3739
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3743
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4a
    :goto_4a
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver-IA;)V

    .line 3744
    .local v2, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 3745
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->isStaged()Z

    move-result v4
    :try_end_5b
    .catchall {:try_start_2c .. :try_end_5b} :catchall_a1

    const-string v5, "Success"

    if-nez v4, :cond_97

    .line 3746
    :try_start_5f
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    .line 3747
    .local v4, "result":Landroid/content/Intent;
    const-string v6, "android.content.pm.extra.STATUS"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 3749
    .local v6, "status":I
    if-nez v6, :cond_72

    .line 3750
    if-eqz p2, :cond_92

    .line 3751
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_92

    .line 3754
    :cond_72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "android.content.pm.extra.STATUS_MESSAGE"

    .line 3755
    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3754
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_5f .. :try_end_92} :catchall_a1

    .line 3757
    :cond_92
    :goto_92
    nop

    .line 3767
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3757
    return v6

    .line 3761
    .end local v4    # "result":Landroid/content/Intent;
    .end local v6    # "status":I
    :cond_97
    if-eqz p2, :cond_9c

    .line 3762
    :try_start_99
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_a1

    .line 3764
    :cond_9c
    const/4 v3, 0x0

    .line 3767
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3764
    return v3

    .line 3767
    .end local v2    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    :catchall_a1
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3768
    throw v2
.end method

.method private doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .registers 7
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3463
    const/4 v0, -0x1

    if-ne p3, v0, :cond_9

    .line 3464
    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3466
    :cond_9
    const/4 v0, 0x0

    .line 3467
    const-string v1, "doCreateSession"

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    .line 3468
    .local v0, "translatedUserId":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    const/4 v2, 0x0

    .line 3469
    invoke-interface {v1, p1, p2, v2, v0}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 3471
    .local v1, "sessionId":I
    return v1
.end method

.method private doInstallAddSession(I[IZ)I
    .registers 8
    .param p1, "parentId"    # I
    .param p2, "sessionIds"    # [I
    .param p3, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3680
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3681
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 3683
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3684
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 3685
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 3686
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: parent session ID is not a multi-package session"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_42

    .line 3688
    nop

    .line 3698
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3688
    const/4 v2, 0x1

    return v2

    .line 3690
    :cond_2a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    :try_start_2b
    array-length v3, p2

    if-ge v2, v3, :cond_36

    .line 3691
    aget v3, p2, v2

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    .line 3690
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 3693
    .end local v2    # "i":I
    :cond_36
    if-eqz p3, :cond_3d

    .line 3694
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_42

    .line 3696
    :cond_3d
    const/4 v2, 0x0

    .line 3698
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3696
    return v2

    .line 3698
    :catchall_42
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3699
    throw v2
.end method

.method private doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .registers 28
    .param p2, "groups"    # Z
    .param p3, "labels"    # Z
    .param p4, "summary"    # Z
    .param p5, "startProtectionLevel"    # I
    .param p6, "endProtectionLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZZII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3790
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 3791
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3792
    .local v3, "groupCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    if-ge v4, v3, :cond_260

    .line 3793
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3794
    .local v5, "groupName":Ljava/lang/String;
    const-string v6, ""

    .line 3795
    .local v6, "prefix":Ljava/lang/String;
    const-string v7, "  description:"

    const-string v8, "  label:"

    const-string v9, "  package:"

    const-string v10, "+ "

    const/4 v11, 0x0

    const-string v12, ""

    if-eqz p2, :cond_119

    .line 3796
    if-lez v4, :cond_29

    .line 3797
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3799
    :cond_29
    if-eqz v5, :cond_f4

    .line 3800
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3801
    invoke-interface {v13, v5, v11}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v13

    .line 3802
    .local v13, "pgi":Landroid/content/pm/PermissionGroupInfo;
    if-eqz p4, :cond_78

    .line 3803
    invoke-direct {v0, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v14

    .line 3804
    .local v14, "res":Landroid/content/res/Resources;
    const-string v15, ": "

    if-eqz v14, :cond_5c

    .line 3805
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v3

    .end local v3    # "groupCount":I
    .local v17, "groupCount":I
    iget v3, v13, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    move-object/from16 v18, v6

    .end local v6    # "prefix":Ljava/lang/String;
    .local v18, "prefix":Ljava/lang/String;
    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v13, v3, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_76

    .line 3807
    .end local v17    # "groupCount":I
    .end local v18    # "prefix":Ljava/lang/String;
    .restart local v3    # "groupCount":I
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_5c
    move/from16 v17, v3

    move-object/from16 v18, v6

    .end local v3    # "groupCount":I
    .end local v6    # "prefix":Ljava/lang/String;
    .restart local v17    # "groupCount":I
    .restart local v18    # "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3810
    .end local v14    # "res":Landroid/content/res/Resources;
    :goto_76
    goto/16 :goto_f3

    .line 3811
    .end local v17    # "groupCount":I
    .end local v18    # "prefix":Ljava/lang/String;
    .restart local v3    # "groupCount":I
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_78
    move/from16 v17, v3

    move-object/from16 v18, v6

    .end local v3    # "groupCount":I
    .end local v6    # "prefix":Ljava/lang/String;
    .restart local v17    # "groupCount":I
    .restart local v18    # "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_85

    move-object v6, v10

    goto :goto_86

    :cond_85
    move-object v6, v12

    :goto_86
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "group:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3812
    if-eqz p3, :cond_f3

    .line 3813
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3814
    invoke-direct {v0, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 3815
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz v3, :cond_f3

    .line 3816
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v11, v13, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v14, v13, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3817
    invoke-direct {v0, v13, v11, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3816
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3818
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v11, v13, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iget-object v14, v13, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 3819
    invoke-direct {v0, v13, v11, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3818
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3824
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v13    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :cond_f3
    :goto_f3
    goto :goto_116

    .line 3825
    .end local v17    # "groupCount":I
    .end local v18    # "prefix":Ljava/lang/String;
    .local v3, "groupCount":I
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_f4
    move/from16 v17, v3

    move-object/from16 v18, v6

    .end local v3    # "groupCount":I
    .end local v6    # "prefix":Ljava/lang/String;
    .restart local v17    # "groupCount":I
    .restart local v18    # "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_103

    if-nez p4, :cond_103

    move-object v6, v10

    goto :goto_104

    :cond_103
    move-object v6, v12

    :goto_104
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "ungrouped:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3827
    :goto_116
    const-string v6, "  "

    .end local v18    # "prefix":Ljava/lang/String;
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_11d

    .line 3795
    .end local v17    # "groupCount":I
    .restart local v3    # "groupCount":I
    :cond_119
    move/from16 v17, v3

    move-object/from16 v18, v6

    .line 3829
    .end local v3    # "groupCount":I
    .restart local v17    # "groupCount":I
    :goto_11d
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 3830
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v3, v11, v13}, Landroid/permission/PermissionManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 3831
    .local v3, "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-nez v3, :cond_12e

    move v11, v13

    goto :goto_132

    :cond_12e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    .line 3832
    .local v11, "count":I
    :goto_132
    const/4 v13, 0x1

    .line 3833
    .local v13, "first":Z
    const/4 v14, 0x0

    .local v14, "p":I
    :goto_134
    if-ge v14, v11, :cond_24f

    .line 3834
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PermissionInfo;

    .line 3835
    .local v15, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz p2, :cond_14a

    if-nez v5, :cond_14a

    iget-object v1, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v1, :cond_14a

    .line 3836
    move-object/from16 v16, v3

    move-object/from16 v20, v5

    goto/16 :goto_245

    .line 3838
    :cond_14a
    iget v1, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    .line 3839
    .local v1, "base":I
    move-object/from16 v16, v3

    move/from16 v3, p5

    .end local v3    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .local v16, "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-lt v1, v3, :cond_241

    move/from16 v3, p6

    if-le v1, v3, :cond_15c

    .line 3841
    move-object/from16 v20, v5

    goto/16 :goto_245

    .line 3843
    :cond_15c
    if-eqz p4, :cond_18a

    .line 3844
    if-eqz v13, :cond_164

    .line 3845
    const/4 v13, 0x0

    move/from16 v18, v1

    goto :goto_16b

    .line 3847
    :cond_164
    move/from16 v18, v1

    .end local v1    # "base":I
    .local v18, "base":I
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3849
    :goto_16b
    invoke-direct {v0, v15}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 3850
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_17f

    .line 3851
    move-object/from16 v19, v1

    .end local v1    # "res":Landroid/content/res/Resources;
    .local v19, "res":Landroid/content/res/Resources;
    iget v1, v15, Landroid/content/pm/PermissionInfo;->labelRes:I

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v15, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_186

    .line 3854
    .end local v19    # "res":Landroid/content/res/Resources;
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_17f
    move-object/from16 v19, v1

    .end local v1    # "res":Landroid/content/res/Resources;
    .restart local v19    # "res":Landroid/content/res/Resources;
    iget-object v1, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3856
    .end local v19    # "res":Landroid/content/res/Resources;
    :goto_186
    move-object/from16 v20, v5

    goto/16 :goto_245

    .line 3857
    .end local v18    # "base":I
    .local v1, "base":I
    :cond_18a
    move/from16 v18, v1

    .end local v1    # "base":I
    .restart local v18    # "base":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_199

    move-object v3, v10

    goto :goto_19a

    :cond_199
    move-object v3, v12

    :goto_19a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "permission:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3859
    if-eqz p3, :cond_23e

    .line 3860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3861
    invoke-direct {v0, v15}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 3862
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_219

    .line 3863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v19, v1

    .end local v1    # "res":Landroid/content/res/Resources;
    .restart local v19    # "res":Landroid/content/res/Resources;
    iget v1, v15, Landroid/content/pm/PermissionInfo;->labelRes:I

    move-object/from16 v20, v5

    .end local v5    # "groupName":Ljava/lang/String;
    .local v20, "groupName":Ljava/lang/String;
    iget-object v5, v15, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3864
    invoke-direct {v0, v15, v1, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3863
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v15, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v5, v15, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 3867
    invoke-direct {v0, v15, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3866
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_21d

    .line 3862
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "groupName":Ljava/lang/String;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v5    # "groupName":Ljava/lang/String;
    :cond_219
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    .line 3870
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v5    # "groupName":Ljava/lang/String;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "groupName":Ljava/lang/String;
    :goto_21d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  protectionLevel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3871
    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3870
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_245

    .line 3859
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "groupName":Ljava/lang/String;
    .restart local v5    # "groupName":Ljava/lang/String;
    :cond_23e
    move-object/from16 v20, v5

    .end local v5    # "groupName":Ljava/lang/String;
    .restart local v20    # "groupName":Ljava/lang/String;
    goto :goto_245

    .line 3839
    .end local v18    # "base":I
    .end local v20    # "groupName":Ljava/lang/String;
    .local v1, "base":I
    .restart local v5    # "groupName":Ljava/lang/String;
    :cond_241
    move/from16 v18, v1

    move-object/from16 v20, v5

    .line 3833
    .end local v1    # "base":I
    .end local v5    # "groupName":Ljava/lang/String;
    .end local v15    # "pi":Landroid/content/pm/PermissionInfo;
    .restart local v20    # "groupName":Ljava/lang/String;
    :goto_245
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v5, v20

    goto/16 :goto_134

    .end local v16    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v20    # "groupName":Ljava/lang/String;
    .restart local v3    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .restart local v5    # "groupName":Ljava/lang/String;
    :cond_24f
    move-object/from16 v16, v3

    move-object/from16 v20, v5

    .line 3876
    .end local v3    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v5    # "groupName":Ljava/lang/String;
    .end local v14    # "p":I
    .restart local v16    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .restart local v20    # "groupName":Ljava/lang/String;
    if-eqz p4, :cond_258

    .line 3877
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3792
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v11    # "count":I
    .end local v13    # "first":Z
    .end local v16    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v20    # "groupName":Ljava/lang/String;
    :cond_258
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v17

    goto/16 :goto_d

    .line 3880
    .end local v4    # "i":I
    .end local v17    # "groupCount":I
    .local v3, "groupCount":I
    :cond_260
    return-void
.end method

.method private doRemoveSplits(ILjava/util/Collection;Z)I
    .registers 9
    .param p1, "sessionId"    # I
    .param p3, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3704
    .local p2, "splitNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3705
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 3707
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3708
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 3709
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3710
    .local v3, "splitName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageInstaller$Session;->removeSplit(Ljava/lang/String;)V

    .line 3711
    .end local v3    # "splitName":Ljava/lang/String;
    goto :goto_19

    .line 3713
    :cond_29
    if-eqz p3, :cond_30

    .line 3714
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_30} :catch_37
    .catchall {:try_start_5 .. :try_end_30} :catchall_35

    .line 3716
    :cond_30
    const/4 v2, 0x0

    .line 3721
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3716
    return v2

    .line 3721
    :catchall_35
    move-exception v2

    goto :goto_57

    .line 3717
    :catch_37
    move-exception v2

    .line 3718
    .local v2, "e":Ljava/io/IOException;
    :try_start_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: failed to remove split; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_35

    .line 3719
    const/4 v3, 0x1

    .line 3721
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3719
    return v3

    .line 3721
    .end local v2    # "e":Ljava/io/IOException;
    :goto_57
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3722
    throw v2
.end method

.method private doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I
    .registers 20
    .param p1, "params"    # Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1431
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 1433
    .local v9, "pw":Ljava/io/PrintWriter;
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_12

    move v0, v10

    goto :goto_13

    :cond_12
    move v0, v11

    :goto_13
    move v12, v0

    .line 1434
    .local v12, "isStreaming":Z
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1f

    move v0, v10

    goto :goto_20

    :cond_1f
    move v0, v11

    :goto_20
    move v13, v0

    .line 1437
    .local v13, "isApex":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v14

    .line 1439
    .local v14, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "-"

    if-nez v0, :cond_3a

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_3a

    :cond_38
    move v0, v11

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v0, v10

    :goto_3b
    move v15, v0

    .line 1440
    .local v15, "fromStdIn":Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v10, :cond_44

    move v0, v10

    goto :goto_45

    :cond_44
    move v0, v11

    :goto_45
    move/from16 v16, v0

    .line 1442
    .local v16, "hasSplits":Z
    if-eqz v15, :cond_59

    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_59

    .line 1443
    const-string v0, "Error: must either specify a package size or an APK file"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1444
    return v10

    .line 1447
    :cond_59
    if-eqz v13, :cond_63

    if-eqz v16, :cond_63

    .line 1448
    const-string v0, "Error: can\'t specify SPLIT(s) for APEX"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    return v10

    .line 1452
    :cond_63
    if-nez v12, :cond_7c

    .line 1453
    if-eqz v15, :cond_6f

    if-eqz v16, :cond_6f

    .line 1454
    const-string v0, "Error: can\'t specify SPLIT(s) along with STDIN"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    return v10

    .line 1458
    :cond_6f
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1459
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 1461
    :cond_79
    invoke-direct {v7, v8, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/util/List;)V

    .line 1465
    :cond_7c
    :goto_7c
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v2, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-direct {v7, v0, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v6

    .line 1467
    .local v6, "sessionId":I
    const/16 v17, 0x1

    .line 1469
    .local v17, "abandonSession":Z
    if-eqz v12, :cond_a8

    .line 1470
    :try_start_8a
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_a4

    move-object/from16 v1, p0

    move v2, v6

    move-object v3, v14

    move v10, v6

    .end local v6    # "sessionId":I
    .local v10, "sessionId":I
    move v6, v13

    :try_start_94
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doAddFiles(ILjava/util/ArrayList;JZ)I

    move-result v0
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_fe

    if-eqz v0, :cond_c2

    .line 1472
    nop

    .line 1493
    if-eqz v17, :cond_a2

    .line 1495
    :try_start_9d
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a0} :catch_a1

    .line 1497
    goto :goto_a2

    .line 1496
    :catch_a1
    move-exception v0

    .line 1472
    :cond_a2
    :goto_a2
    const/4 v1, 0x1

    return v1

    .line 1493
    .end local v10    # "sessionId":I
    .restart local v6    # "sessionId":I
    :catchall_a4
    move-exception v0

    move v10, v6

    move-object v1, v0

    .end local v6    # "sessionId":I
    .restart local v10    # "sessionId":I
    goto :goto_100

    .line 1475
    .end local v10    # "sessionId":I
    .restart local v6    # "sessionId":I
    :cond_a8
    move v10, v6

    .end local v6    # "sessionId":I
    .restart local v10    # "sessionId":I
    :try_start_a9
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    move-object/from16 v1, p0

    move v2, v10

    move-object v3, v14

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplits(ILjava/util/ArrayList;JZ)I

    move-result v0
    :try_end_b6
    .catchall {:try_start_a9 .. :try_end_b6} :catchall_fe

    if-eqz v0, :cond_c2

    .line 1477
    nop

    .line 1493
    if-eqz v17, :cond_c0

    .line 1495
    :try_start_bb
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_bf

    .line 1497
    goto :goto_c0

    .line 1496
    :catch_bf
    move-exception v0

    .line 1477
    :cond_c0
    :goto_c0
    const/4 v1, 0x1

    return v1

    .line 1480
    :cond_c2
    :try_start_c2
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v0
    :try_end_c6
    .catchall {:try_start_c2 .. :try_end_c6} :catchall_fe

    if-eqz v0, :cond_d2

    .line 1482
    nop

    .line 1493
    if-eqz v17, :cond_d0

    .line 1495
    :try_start_cb
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ce} :catch_cf

    .line 1497
    goto :goto_d0

    .line 1496
    :catch_cf
    move-exception v0

    .line 1482
    :cond_d0
    :goto_d0
    const/4 v1, 0x1

    return v1

    .line 1484
    :cond_d2
    const/16 v17, 0x0

    .line 1486
    :try_start_d4
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_f0

    iget-wide v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f0

    .line 1487
    iget-wide v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    invoke-direct {v7, v10, v0, v1, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    move-result v1
    :try_end_e8
    .catchall {:try_start_d4 .. :try_end_e8} :catchall_fe

    .line 1493
    if-eqz v17, :cond_ef

    .line 1495
    :try_start_ea
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ed} :catch_ee

    .line 1497
    goto :goto_ef

    .line 1496
    :catch_ee
    move-exception v0

    .line 1487
    :cond_ef
    :goto_ef
    return v1

    .line 1490
    :cond_f0
    :try_start_f0
    const-string v0, "Success"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_f0 .. :try_end_f5} :catchall_fe

    .line 1491
    nop

    .line 1493
    if-eqz v17, :cond_fd

    .line 1495
    :try_start_f8
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fb} :catch_fc

    .line 1497
    goto :goto_fd

    .line 1496
    :catch_fc
    move-exception v0

    .line 1491
    :cond_fd
    :goto_fd
    return v11

    .line 1493
    :catchall_fe
    move-exception v0

    move-object v1, v0

    :goto_100
    if-eqz v17, :cond_107

    .line 1495
    :try_start_102
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_105} :catch_106

    .line 1497
    goto :goto_107

    .line 1496
    :catch_106
    move-exception v0

    .line 1499
    :cond_107
    :goto_107
    throw v1
.end method

.method private doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I
    .registers 20
    .param p1, "sessionId"    # I
    .param p2, "timeoutMs"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1504
    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    const/4 v7, 0x1

    if-lez v5, :cond_10

    move v5, v7

    goto :goto_11

    :cond_10
    const/4 v5, 0x0

    :goto_11
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1505
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v5

    .line 1506
    invoke-interface {v5, v1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    .line 1507
    .local v5, "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    const-string v8, "]"

    if-nez v5, :cond_3d

    .line 1508
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure [Unknown session "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    return v7

    .line 1511
    :cond_3d
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v9

    if-nez v9, :cond_60

    .line 1512
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure [Session "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " is not a staged session]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    return v7

    .line 1515
    :cond_60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1516
    .local v9, "currentTime":J
    add-long v11, v9, v2

    .line 1521
    .local v11, "endTime":J
    :goto_66
    cmp-long v13, v9, v11

    if-gez v13, :cond_94

    .line 1522
    if-eqz v5, :cond_79

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v13

    if-nez v13, :cond_94

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v13

    if-eqz v13, :cond_79

    .line 1523
    goto :goto_94

    .line 1525
    :cond_79
    sub-long v13, v11, v9

    const-wide/16 v6, 0x64

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 1526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1527
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    const/4 v7, 0x1

    goto :goto_66

    .line 1529
    :cond_94
    :goto_94
    if-nez v5, :cond_9d

    .line 1530
    const-string v6, "Failure [failed to retrieve SessionInfo]"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1531
    const/4 v6, 0x1

    return v6

    .line 1533
    :cond_9d
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v6

    if-nez v6, :cond_c7

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v6

    if-nez v6, :cond_c7

    .line 1534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure [timed out after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1535
    const/4 v6, 0x1

    return v6

    .line 1537
    :cond_c7
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v6

    if-nez v6, :cond_fb

    .line 1538
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1539
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1538
    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    const/4 v6, 0x1

    return v6

    .line 1542
    :cond_fb
    const-string v6, "Success. Reboot device to apply staged session"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1543
    const/4 v6, 0x0

    return v6
.end method

.method private doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I
    .registers 22
    .param p1, "sessionId"    # I
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "sizeBytes"    # J
    .param p5, "splitName"    # Ljava/lang/String;
    .param p6, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3636
    move-object v1, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 3638
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v4, 0x1

    :try_start_5
    new-instance v5, Landroid/content/pm/PackageInstaller$Session;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 3639
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_d5
    .catchall {:try_start_5 .. :try_end_d} :catchall_cf

    move/from16 v12, p1

    :try_start_f
    invoke-interface {v0, v12}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_cd
    .catchall {:try_start_f .. :try_end_16} :catchall_cb

    .line 3641
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v5, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3644
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v3, "-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_2f

    .line 3645
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-wide/from16 v13, p3

    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_7d

    .line 3646
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_2f
    if-eqz v2, :cond_73

    .line 3647
    const-string/jumbo v3, "r"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_38} :catch_c6
    .catchall {:try_start_16 .. :try_end_38} :catchall_c1

    .line 3648
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v8, -0x1

    if-nez v3, :cond_40

    .line 3649
    nop

    .line 3674
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3649
    return v8

    .line 3651
    :cond_40
    :try_start_40
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v9
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_c6
    .catchall {:try_start_40 .. :try_end_44} :catchall_c1

    .line 3652
    .end local p3    # "sizeBytes":J
    .local v9, "sizeBytes":J
    cmp-long v11, v9, v6

    if-gez v11, :cond_71

    .line 3653
    :try_start_48
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get size of: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_62} :catch_6c
    .catchall {:try_start_48 .. :try_end_62} :catchall_67

    .line 3654
    nop

    .line 3674
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3654
    return v8

    .line 3674
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_67
    move-exception v0

    move-object v3, v5

    move-wide v13, v9

    goto/16 :goto_fe

    .line 3670
    :catch_6c
    move-exception v0

    move-object v3, v5

    move-wide v13, v9

    goto/16 :goto_da

    .line 3652
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_71
    move-wide v13, v9

    goto :goto_7d

    .line 3657
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "sizeBytes":J
    .restart local p3    # "sizeBytes":J
    :cond_73
    :try_start_73
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7b} :catch_c6
    .catchall {:try_start_73 .. :try_end_7b} :catchall_c1

    move-wide/from16 v13, p3

    .line 3659
    .end local p3    # "sizeBytes":J
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v13, "sizeBytes":J
    :goto_7d
    cmp-long v6, v13, v6

    if-gtz v6, :cond_8f

    .line 3660
    :try_start_81
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Error: must specify a APK size"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8a} :catch_be
    .catchall {:try_start_81 .. :try_end_8a} :catchall_bb

    .line 3661
    nop

    .line 3674
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3661
    return v4

    .line 3664
    :cond_8f
    const-wide/16 v7, 0x0

    move-object/from16 v6, p5

    move-wide v9, v13

    move-object v11, v3

    :try_start_95
    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    .line 3666
    if-eqz p6, :cond_b6

    .line 3667
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Success: streamed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_b6} :catch_be
    .catchall {:try_start_95 .. :try_end_b6} :catchall_bb

    .line 3669
    :cond_b6
    const/4 v4, 0x0

    .line 3674
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3669
    return v4

    .line 3674
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_bb
    move-exception v0

    move-object v3, v5

    goto :goto_fe

    .line 3670
    :catch_be
    move-exception v0

    move-object v3, v5

    goto :goto_da

    .line 3674
    .end local v13    # "sizeBytes":J
    .restart local p3    # "sizeBytes":J
    :catchall_c1
    move-exception v0

    move-wide/from16 v13, p3

    move-object v3, v5

    goto :goto_fe

    .line 3670
    :catch_c6
    move-exception v0

    move-wide/from16 v13, p3

    move-object v3, v5

    goto :goto_da

    .line 3674
    .end local v5    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_cb
    move-exception v0

    goto :goto_d2

    .line 3670
    :catch_cd
    move-exception v0

    goto :goto_d8

    .line 3674
    :catchall_cf
    move-exception v0

    move/from16 v12, p1

    :goto_d2
    move-wide/from16 v13, p3

    goto :goto_fe

    .line 3670
    :catch_d5
    move-exception v0

    move/from16 v12, p1

    :goto_d8
    move-wide/from16 v13, p3

    .line 3671
    .end local p3    # "sizeBytes":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v13    # "sizeBytes":J
    :goto_da
    :try_start_da
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: failed to write; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_da .. :try_end_f8} :catchall_fd

    .line 3672
    nop

    .line 3674
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3672
    return v4

    .line 3674
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_fd
    move-exception v0

    :goto_fe
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3675
    throw v0
.end method

.method private doWriteSplits(ILjava/util/ArrayList;JZ)I
    .registers 18
    .param p1, "sessionId"    # I
    .param p3, "sessionSizeBytes"    # J
    .param p5, "isApex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;JZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3621
    .local p2, "splitPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 3622
    .local v0, "multipleSplits":Z
    :goto_b
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3623
    .local v4, "splitPath":Ljava/lang/String;
    if-eqz v0, :cond_28

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    goto :goto_43

    .line 3624
    :cond_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "base."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p5, :cond_38

    const-string v6, "apex"

    goto :goto_3a

    :cond_38
    const-string v6, "apk"

    :goto_3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    :goto_43
    nop

    .line 3626
    .local v10, "splitName":Ljava/lang/String;
    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    move-object v7, v4

    move-wide v8, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v5

    if-eqz v5, :cond_50

    .line 3628
    return v2

    .line 3630
    .end local v4    # "splitPath":Ljava/lang/String;
    .end local v10    # "splitName":Ljava/lang/String;
    :cond_50
    goto :goto_f

    .line 3631
    :cond_51
    return v1
.end method

.method private static enabledSettingToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 2344
    packed-switch p0, :pswitch_data_16

    .line 2356
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 2354
    :pswitch_7
    const-string v0, "disabled-until-used"

    return-object v0

    .line 2352
    :pswitch_a
    const-string v0, "disabled-user"

    return-object v0

    .line 2350
    :pswitch_d
    const-string v0, "disabled"

    return-object v0

    .line 2348
    :pswitch_10
    const-string v0, "enabled"

    return-object v0

    .line 2346
    :pswitch_13
    const-string v0, "default"

    return-object v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method private getApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2667
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    .line 2668
    .local v0, "apexManager":Lcom/android/server/pm/ApexManager;
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFileStatSize(Ljava/io/File;)J
    .registers 6
    .param p1, "file"    # Ljava/io/File;

    .line 3582
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "r"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 3583
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_1a

    .line 3587
    :try_start_d
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 3589
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3587
    return-wide v1

    .line 3589
    :catchall_15
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3590
    throw v1

    .line 3584
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Can\'t open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRemainingArgs()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2116
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "arg":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 2117
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2119
    :cond_10
    return-object v0
.end method

.method private getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .registers 8
    .param p1, "pii"    # Landroid/content/pm/PackageItemInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3900
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 3901
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_d

    return-object v0

    .line 3903
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-wide/32 v3, 0x20008200

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3907
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    .line 3908
    .local v2, "am":Landroid/content/res/AssetManager;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 3909
    new-instance v3, Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v0, v3

    .line 3910
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3911
    return-object v0
.end method

.method private isApexApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2672
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static isNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 2800
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_6

    .line 2803
    nop

    .line 2804
    const/4 v0, 0x1

    return v0

    .line 2801
    :catch_6
    move-exception v0

    .line 2802
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method private isProductApp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2648
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const-wide/32 v2, 0x400000

    invoke-interface {v1, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2650
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_15

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_16

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0

    .line 2651
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_16
    move-exception v1

    .line 2652
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private isSystemExtApp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2658
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const-wide/32 v2, 0x400000

    invoke-interface {v1, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2660
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_15

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_16

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0

    .line 2661
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_16
    move-exception v1

    .line 2662
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private isVendorApp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2638
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const-wide/32 v2, 0x400000

    invoke-interface {v1, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2640
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_15

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_16

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0

    .line 2641
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_16
    move-exception v1

    .line 2642
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method static synthetic lambda$runListPackages$0(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "k"    # Ljava/lang/String;

    .line 1021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p1, "pii"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "res"    # I
    .param p3, "nonLocalized"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3884
    if-eqz p3, :cond_7

    .line 3885
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3887
    :cond_7
    if-eqz p2, :cond_15

    .line 3888
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 3889
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_15

    .line 3891
    :try_start_f
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_13} :catch_14

    return-object v1

    .line 3892
    :catch_14
    move-exception v1

    .line 3896
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;"
        }
    .end annotation

    .line 3062
    .local p1, "unsupportedOptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 3063
    .local v0, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams-IA;)V

    .line 3065
    .local v2, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iput-object v0, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 3067
    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v5, 0x400000

    or-int/2addr v4, v5

    iput v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3069
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setPackageSource(I)V

    .line 3072
    const/4 v4, 0x1

    .line 3073
    .local v4, "replaceExisting":Z
    const/4 v5, 0x0

    .line 3074
    .local v5, "forceNonStaged":Z
    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "opt":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v6, :cond_352

    .line 3075
    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_339

    .line 3078
    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v11, 0x10

    const/4 v12, 0x4

    sparse-switch v10, :sswitch_data_35e

    :cond_34
    goto/16 :goto_1d2

    :sswitch_36
    const-string v10, "--skip-verification"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x23

    goto/16 :goto_1d2

    :sswitch_42
    const-string v10, "--force-sdk"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x19

    goto/16 :goto_1d2

    :sswitch_4e
    const-string v10, "--staged"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x1d

    goto/16 :goto_1d2

    :sswitch_5a
    const-string v10, "--restrict-permissions"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/4 v6, 0x7

    goto/16 :goto_1d2

    :sswitch_65
    const-string v10, "--user"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x14

    goto/16 :goto_1d2

    :sswitch_71
    const-string v10, "--full"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x12

    goto/16 :goto_1d2

    :sswitch_7d
    const-string v10, "--apex"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x1a

    goto/16 :goto_1d2

    :sswitch_89
    const-string v10, "--preload"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x13

    goto/16 :goto_1d2

    :sswitch_95
    const-string v10, "--ephemeral"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0xf

    goto/16 :goto_1d2

    :sswitch_a1
    const-string v10, "--remove-dm-after-install"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x1e

    goto/16 :goto_1d2

    :sswitch_ad
    const-string v10, "--install-scenario"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x17

    goto/16 :goto_1d2

    :sswitch_b9
    const-string v10, "--originating-uri"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x9

    goto/16 :goto_1d2

    :sswitch_c5
    const-string v10, "--force-queryable"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x20

    goto/16 :goto_1d2

    :sswitch_d1
    const-string v10, "--pkg"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0xc

    goto/16 :goto_1d2

    :sswitch_dd
    const-string v10, "--abi"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0xe

    goto/16 :goto_1d2

    :sswitch_e9
    const-string v10, "-t"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/4 v6, 0x3

    goto/16 :goto_1d2

    :sswitch_f4
    const-string v10, "-r"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    move v6, v8

    goto/16 :goto_1d2

    :sswitch_ff
    const-string v10, "-p"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0xb

    goto/16 :goto_1d2

    :sswitch_10b
    const-string v10, "-i"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    move v6, v9

    goto/16 :goto_1d2

    :sswitch_116
    const-string v10, "-g"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/4 v6, 0x6

    goto/16 :goto_1d2

    :sswitch_121
    const-string v10, "-f"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    move v6, v12

    goto/16 :goto_1d2

    :sswitch_12c
    const-string v10, "-d"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/4 v6, 0x5

    goto/16 :goto_1d2

    :sswitch_137
    const-string v10, "-S"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0xd

    goto/16 :goto_1d2

    :sswitch_143
    const-string v10, "-R"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    move v6, v1

    goto/16 :goto_1d2

    :sswitch_14e
    const-string v10, "--staged-ready-timeout"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x22

    goto/16 :goto_1d2

    :sswitch_15a
    const-string v10, "--multi-package"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x1c

    goto/16 :goto_1d2

    :sswitch_166
    const-string v10, "--enable-rollback"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x21

    goto :goto_1d2

    :sswitch_171
    const-string v10, "--referrer"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0xa

    goto :goto_1d2

    :sswitch_17c
    const-string v10, "--instant"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    move v6, v11

    goto :goto_1d2

    :sswitch_186
    const-string v10, "--instantapp"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x11

    goto :goto_1d2

    :sswitch_191
    const-string v10, "--install-location"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x15

    goto :goto_1d2

    :sswitch_19c
    const-string v10, "--auto-update"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x1f

    goto :goto_1d2

    :sswitch_1a7
    const-string v10, "--dont-kill"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x8

    goto :goto_1d2

    :sswitch_1b2
    const-string v10, "--force-non-staged"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x1b

    goto :goto_1d2

    :sswitch_1bd
    const-string v10, "--force-uuid"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x18

    goto :goto_1d2

    :sswitch_1c8
    const-string v10, "--install-reason"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    const/16 v6, 0x16

    :goto_1d2
    packed-switch v6, :pswitch_data_3f0

    .line 3215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3212
    :pswitch_1ee
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v8, 0x80000

    or-int/2addr v6, v8

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3213
    goto/16 :goto_337

    .line 3209
    :pswitch_1f7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    .line 3210
    goto/16 :goto_337

    .line 3196
    :pswitch_203
    iget-object v6, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-nez v6, :cond_20b

    .line 3204
    const-string v6, "com.android.shell"

    iput-object v6, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 3206
    :cond_20b
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v8, 0x40000

    or-int/2addr v6, v8

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3207
    goto/16 :goto_337

    .line 3190
    :pswitch_214
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setAutoUpdate()V

    .line 3193
    :pswitch_217
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setForceQueryable()V

    .line 3194
    goto/16 :goto_337

    .line 3187
    :pswitch_21c
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setRemoveDmAfterInstall()V

    .line 3188
    goto/16 :goto_337

    .line 3183
    :pswitch_221
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 3184
    goto/16 :goto_337

    .line 3180
    :pswitch_226
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    .line 3181
    goto/16 :goto_337

    .line 3177
    :pswitch_22b
    const/4 v5, 0x1

    .line 3178
    goto/16 :goto_337

    .line 3173
    :pswitch_22e
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    .line 3174
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 3175
    goto/16 :goto_337

    .line 3171
    :pswitch_236
    goto/16 :goto_337

    .line 3164
    :pswitch_238
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3165
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 3166
    iget-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    const-string v8, "internal"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_337

    .line 3167
    iput-object v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    goto/16 :goto_337

    .line 3160
    :pswitch_252
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 3161
    goto/16 :goto_337

    .line 3156
    :pswitch_25e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 3157
    goto/16 :goto_337

    .line 3153
    :pswitch_26a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 3154
    goto/16 :goto_337

    .line 3150
    :pswitch_276
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 3151
    goto/16 :goto_337

    .line 3147
    :pswitch_282
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsVirtualPreload()V

    .line 3148
    goto/16 :goto_337

    .line 3144
    :pswitch_287
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 3145
    goto/16 :goto_337

    .line 3141
    :pswitch_28c
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 3142
    goto/16 :goto_337

    .line 3136
    :pswitch_291
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerShellCommand;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 3137
    goto/16 :goto_337

    .line 3129
    :pswitch_29d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 3130
    .local v8, "sizeBytes":J
    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_2b0

    .line 3133
    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 3134
    goto/16 :goto_337

    .line 3131
    :cond_2b0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Size must be positive"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3123
    .end local v8    # "sizeBytes":J
    :pswitch_2b8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 3124
    iget-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v6, :cond_2c4

    goto/16 :goto_337

    .line 3125
    :cond_2c4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing package name"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3116
    :pswitch_2cc
    iput v9, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 3117
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 3118
    iget-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v6, :cond_2d9

    goto :goto_337

    .line 3119
    :cond_2d9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing inherit package name"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3113
    :pswitch_2e1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 3114
    goto :goto_337

    .line 3110
    :pswitch_2ec
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 3111
    goto :goto_337

    .line 3107
    :pswitch_2f7
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3108
    goto :goto_337

    .line 3103
    :pswitch_2fe
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v8, -0x400001

    and-int/2addr v6, v8

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3105
    goto :goto_337

    .line 3100
    :pswitch_307
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3101
    goto :goto_337

    .line 3097
    :pswitch_30e
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3098
    goto :goto_337

    .line 3094
    :pswitch_315
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v6, v11

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3095
    goto :goto_337

    .line 3091
    :pswitch_31b
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v6, v12

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3092
    goto :goto_337

    .line 3085
    :pswitch_321
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 3086
    iget-object v6, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-eqz v6, :cond_32c

    goto :goto_337

    .line 3087
    :cond_32c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing installer package"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3082
    :pswitch_334
    const/4 v4, 0x0

    .line 3083
    goto :goto_337

    .line 3080
    :pswitch_336
    nop

    .line 3215
    :cond_337
    :goto_337
    goto/16 :goto_1a

    .line 3076
    :cond_339
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported option "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3218
    :cond_352
    if-eqz v4, :cond_359

    .line 3219
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v1, v9

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3221
    :cond_359
    if-eqz v5, :cond_35d

    .line 3222
    iput-boolean v8, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 3224
    :cond_35d
    return-object v2

    :sswitch_data_35e
    .sparse-switch
        -0x7ca7efaa -> :sswitch_1c8
        -0x7449dd03 -> :sswitch_1bd
        -0x6c42be18 -> :sswitch_1b2
        -0x69f9e586 -> :sswitch_1a7
        -0x5467f6f9 -> :sswitch_19c
        -0x4e451eb9 -> :sswitch_191
        -0x43c705c0 -> :sswitch_186
        -0x38b573bf -> :sswitch_17c
        -0x2a211e41 -> :sswitch_171
        -0x26fa19b2 -> :sswitch_166
        -0xa293dee -> :sswitch_15a
        -0x9723f90 -> :sswitch_14e
        0x5c5 -> :sswitch_143
        0x5c6 -> :sswitch_137
        0x5d7 -> :sswitch_12c
        0x5d9 -> :sswitch_121
        0x5da -> :sswitch_116
        0x5dc -> :sswitch_10b
        0x5e3 -> :sswitch_ff
        0x5e5 -> :sswitch_f4
        0x5e7 -> :sswitch_e9
        0x2900ec8 -> :sswitch_dd
        0x290482c -> :sswitch_d1
        0x4991420 -> :sswitch_c5
        0x8d57768 -> :sswitch_b9
        0x1230b522 -> :sswitch_ad
        0x140418ef -> :sswitch_a1
        0x3eb0e7fd -> :sswitch_95
        0x3fa0d469 -> :sswitch_89
        0x4f71fec2 -> :sswitch_7d
        0x4f74582f -> :sswitch_71
        0x4f7b216b -> :sswitch_65
        0x59147c93 -> :sswitch_5a
        0x59daeac6 -> :sswitch_4e
        0x781e9cb8 -> :sswitch_42
        0x79732a09 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_3f0
    .packed-switch 0x0
        :pswitch_336
        :pswitch_334
        :pswitch_321
        :pswitch_31b
        :pswitch_315
        :pswitch_30e
        :pswitch_307
        :pswitch_2fe
        :pswitch_2f7
        :pswitch_2ec
        :pswitch_2e1
        :pswitch_2cc
        :pswitch_2b8
        :pswitch_29d
        :pswitch_291
        :pswitch_28c
        :pswitch_28c
        :pswitch_28c
        :pswitch_287
        :pswitch_282
        :pswitch_276
        :pswitch_26a
        :pswitch_25e
        :pswitch_252
        :pswitch_238
        :pswitch_236
        :pswitch_22e
        :pswitch_22b
        :pswitch_226
        :pswitch_221
        :pswitch_21c
        :pswitch_214
        :pswitch_217
        :pswitch_203
        :pswitch_1f7
        :pswitch_1ee
    .end packed-switch
.end method

.method private parseIntentAndUser()Landroid/content/Intent;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1228
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 1229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 1230
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 1231
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerShellCommand$4;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    .line 1250
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1251
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 1250
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 1252
    return-object v0
.end method

.method private printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    .registers 9
    .param p1, "pr"    # Landroid/util/PrintWriterPrinter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p4, "brief"    # Z
    .param p5, "components"    # Z

    .line 1257
    if-nez p4, :cond_4

    if-eqz p5, :cond_a9

    .line 1259
    :cond_4
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_16

    .line 1260
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "comp":Landroid/content/ComponentName;
    goto :goto_3b

    .line 1261
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_16
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_28

    .line 1262
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "comp":Landroid/content/ComponentName;
    goto :goto_3b

    .line 1263
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_28
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_3a

    .line 1264
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "comp":Landroid/content/ComponentName;
    goto :goto_3b

    .line 1266
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_3a
    const/4 v0, 0x0

    .line 1268
    .restart local v0    # "comp":Landroid/content/ComponentName;
    :goto_3b
    if-eqz v0, :cond_a9

    .line 1269
    if-nez p5, :cond_90

    .line 1270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " preferredOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " match=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/content/pm/ResolveInfo;->match:I

    .line 1272
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " specificIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/content/pm/ResolveInfo;->specificIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1270
    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 1276
    :cond_90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 1277
    return-void

    .line 1280
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_a9
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1281
    return-void
.end method

.method private static printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "session"    # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p2, "sessionDump"    # Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;

    .line 1213
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    if-eqz v0, :cond_c

    .line 1214
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1215
    return-void

    .line 1217
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; appPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1218
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; isStaged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1219
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; isReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1220
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; isApplied = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1221
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; isFailed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1222
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; errorMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1223
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1217
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    return-void
.end method

.method private printSessionList(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    .registers 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "sessionDump"    # Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;",
            "Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;",
            ")V"
        }
    .end annotation

    .line 1180
    .local p2, "stagedSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 1181
    .local v0, "sessionById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1182
    .local v2, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1183
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    goto :goto_d

    .line 1184
    :cond_21
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1185
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    iget-boolean v3, p3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyReady:Z

    if-eqz v3, :cond_3c

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 1186
    goto :goto_25

    .line 1188
    :cond_3c
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getParentSessionId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_44

    .line 1189
    goto :goto_25

    .line 1191
    :cond_44
    invoke-static {p1, v2, p3}, Lcom/android/server/pm/PackageManagerShellCommand;->printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V

    .line 1192
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v3

    if-eqz v3, :cond_99

    iget-boolean v3, p3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyParent:Z

    if-nez v3, :cond_99

    .line 1193
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1194
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v3

    .line 1195
    .local v3, "childIds":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_59
    array-length v5, v3

    if-ge v4, v5, :cond_96

    .line 1196
    aget v5, v3, v4

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1197
    .local v5, "childSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-nez v5, :cond_90

    .line 1198
    iget-boolean v6, p3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    if-eqz v6, :cond_70

    .line 1199
    aget v6, v3, v4

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    goto :goto_93

    .line 1201
    :cond_70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sessionId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_93

    .line 1204
    :cond_90
    invoke-static {p1, v5, p3}, Lcom/android/server/pm/PackageManagerShellCommand;->printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V

    .line 1195
    .end local v5    # "childSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    :goto_93
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 1207
    .end local v4    # "i":I
    :cond_96
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1209
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v3    # "childIds":[I
    :cond_99
    goto :goto_25

    .line 1210
    :cond_9a
    return-void
.end method

.method private processArgForLocalFile(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)V
    .registers 20
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "session"    # Landroid/content/pm/PackageInstaller$Session;

    .line 3594
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 3596
    .local v2, "inPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 3597
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 3598
    .local v11, "name":Ljava/lang/String;
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->getFileStatSize(Ljava/io/File;)J

    move-result-wide v12

    .line 3599
    .local v12, "size":J
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forLocalFile(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v14

    .line 3601
    .local v14, "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    const/4 v4, 0x0

    .line 3603
    .local v4, "v4signatureBytes":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".idsig"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3604
    .local v15, "v4SignaturePath":Ljava/lang/String;
    const-string/jumbo v0, "r"

    invoke-virtual {v1, v15, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 3605
    .local v16, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v16, :cond_54

    .line 3607
    :try_start_33
    invoke-static/range {v16 .. v16}, Landroid/os/incremental/V4Signature;->readFrom(Landroid/os/ParcelFileDescriptor;)Landroid/os/incremental/V4Signature;

    move-result-object v0

    .line 3608
    .local v0, "v4signature":Landroid/os/incremental/V4Signature;
    invoke-virtual {v0}, Landroid/os/incremental/V4Signature;->toByteArray()[B

    move-result-object v5
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3b} :catch_43
    .catchall {:try_start_33 .. :try_end_3b} :catchall_41

    move-object v4, v5

    .line 3612
    .end local v0    # "v4signature":Landroid/os/incremental/V4Signature;
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3613
    move-object v0, v4

    goto :goto_55

    .line 3612
    :catchall_41
    move-exception v0

    goto :goto_50

    .line 3609
    :catch_43
    move-exception v0

    .line 3610
    .local v0, "ex":Ljava/io/IOException;
    :try_start_44
    const-string v5, "PackageManagerShellCommand"

    const-string v6, "V4 signature file exists but failed to be parsed."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_41

    .line 3612
    nop

    .end local v0    # "ex":Ljava/io/IOException;
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3613
    goto :goto_54

    .line 3612
    :goto_50
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3613
    throw v0

    .line 3616
    :cond_54
    :goto_54
    move-object v0, v4

    .end local v4    # "v4signatureBytes":[B
    .local v0, "v4signatureBytes":[B
    :goto_55
    const/4 v5, 0x0

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v9

    move-object/from16 v4, p2

    move-object v6, v11

    move-wide v7, v12

    move-object v10, v0

    invoke-virtual/range {v4 .. v10}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V

    .line 3617
    return-void
.end method

.method private processArgForStdin(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)I
    .registers 16
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "session"    # Landroid/content/pm/PackageInstaller$Session;

    .line 3514
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3517
    .local v0, "fileDesc":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 3518
    .local v1, "signature":[B
    const/4 v2, 0x0

    .line 3521
    .local v2, "streamingVersion":I
    const/4 v3, 0x1

    :try_start_9
    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_17

    .line 3522
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Must specify file name and size"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3523
    return v3

    .line 3525
    :cond_17
    const/4 v4, 0x0

    aget-object v8, v0, v4

    .line 3526
    .local v8, "name":Ljava/lang/String;
    aget-object v6, v0, v3

    invoke-static {v6}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 3527
    .local v9, "sizeBytes":J
    move-object v6, v8

    .line 3529
    .local v6, "fileId":Ljava/lang/String;
    array-length v7, v0

    if-le v7, v5, :cond_30

    aget-object v7, v0, v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_30

    .line 3530
    aget-object v5, v0, v5

    move-object v6, v5

    goto :goto_31

    .line 3532
    :cond_30
    move-object v5, v6

    .end local v6    # "fileId":Ljava/lang/String;
    .local v5, "fileId":Ljava/lang/String;
    :goto_31
    array-length v6, v0

    const/4 v7, 0x3

    if-le v6, v7, :cond_40

    .line 3533
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v6

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v6

    move-object v1, v6

    .line 3535
    :cond_40
    array-length v6, v0

    const/4 v7, 0x4

    if-le v6, v7, :cond_6a

    .line 3536
    aget-object v6, v0, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .line 3537
    if-ltz v2, :cond_4f

    if-le v2, v3, :cond_6a

    .line 3538
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported streaming version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_69} :catch_f6

    .line 3540
    return v3

    .line 3547
    :cond_6a
    nop

    .line 3549
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 3550
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Empty file name in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3551
    return v3

    .line 3556
    :cond_8c
    if-eqz v1, :cond_e6

    .line 3560
    if-nez v2, :cond_95

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forDataOnlyStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v6

    goto :goto_99

    .line 3561
    :cond_95
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v6

    :goto_99
    nop

    .line 3563
    .local v6, "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    :try_start_9a
    array-length v7, v1

    if-lez v7, :cond_be

    invoke-static {v1}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v7

    if-nez v7, :cond_be

    .line 3564
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "V4 signature is invalid in: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_bd} :catch_c0

    .line 3565
    return v3

    .line 3571
    :cond_be
    move-object v3, v6

    goto :goto_eb

    .line 3567
    :catch_c0
    move-exception v4

    .line 3568
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "V4 signature is invalid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3570
    return v3

    .line 3574
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    :cond_e6
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forStdIn(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v6

    move-object v3, v6

    .line 3577
    .local v3, "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    :goto_eb
    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v11

    move-object v6, p2

    move-object v12, v1

    invoke-virtual/range {v6 .. v12}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V

    .line 3578
    return v4

    .line 3543
    .end local v3    # "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .end local v5    # "fileId":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "sizeBytes":J
    :catch_f6
    move-exception v4

    .line 3544
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse file parameters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3546
    return v3
.end method

.method private removeUser(Landroid/os/IUserManager;I)Z
    .registers 6
    .param p1, "um"    # Landroid/os/IUserManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManagerShellCommand"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    invoke-interface {p1, p2}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2942
    const/4 v0, 0x1

    return v0

    .line 2944
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: couldn\'t remove user id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2945
    const/4 v0, 0x0

    return v0
.end method

.method private removeUserAndWait(Landroid/os/IUserManager;I)Z
    .registers 13
    .param p1, "um"    # Landroid/os/IUserManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing (and waiting for completion) user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManagerShellCommand"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2954
    .local v0, "waitLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$5;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/pm/PackageManagerShellCommand$5;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;ILjava/util/concurrent/CountDownLatch;)V

    .line 2964
    .local v2, "listener":Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    .line 2965
    .local v3, "umi":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 2968
    const/4 v4, 0x0

    :try_start_2f
    invoke-interface {p1, p2}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 2969
    const-wide/16 v5, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    .line 2970
    .local v5, "awaitSuccess":Z
    if-nez v5, :cond_55

    .line 2971
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Error: Remove user %d timed out\n"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_50} :catch_7b
    .catchall {:try_start_2f .. :try_end_50} :catchall_79

    .line 2972
    nop

    .line 2985
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 2972
    return v4

    .line 2975
    :cond_55
    nop

    .line 2985
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 2975
    return v1

    .line 2977
    .end local v5    # "awaitSuccess":Z
    :cond_5a
    :try_start_5a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: couldn\'t remove user id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_74} :catch_7b
    .catchall {:try_start_5a .. :try_end_74} :catchall_79

    .line 2978
    nop

    .line 2985
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 2978
    return v4

    .line 2985
    :catchall_79
    move-exception v1

    goto :goto_9c

    .line 2980
    :catch_7b
    move-exception v5

    .line 2981
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_7c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Error: Remove user %d wait interrupted: %s\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object v5, v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2982
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_97
    .catchall {:try_start_7c .. :try_end_97} :catchall_79

    .line 2983
    nop

    .line 2985
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 2983
    return v4

    .line 2985
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_9c
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 2986
    throw v1
.end method

.method private removeUserWhenPossible(Landroid/os/IUserManager;I)I
    .registers 9
    .param p1, "um"    # Landroid/os/IUserManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or set as ephemeral if in use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManagerShellCommand"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IUserManager;->removeUserWhenPossible(IZ)I

    move-result v1

    .line 2993
    .local v1, "result":I
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_70

    .line 3004
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 3005
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 3004
    const-string v0, "Error: couldn\'t remove or mark ephemeral user id %d\n"

    invoke-virtual {v3, v0, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3006
    return v2

    .line 3001
    :pswitch_39
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "Success: user %d is already being removed\n"

    invoke-virtual {v3, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3002
    return v0

    .line 2998
    :pswitch_4b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "Success: user %d set as ephemeral\n"

    invoke-virtual {v3, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2999
    return v0

    .line 2995
    :pswitch_5d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "Success: user %d removed\n"

    invoke-virtual {v3, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2996
    return v0

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_4b
        :pswitch_39
    .end packed-switch
.end method

.method private runBypassAllowedApexUpdateCheck()I
    .registers 5

    .line 485
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 487
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    .line 488
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageInstaller;->bypassNextAllowedApexUpdateCheck(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_17

    .line 489
    const/4 v1, 0x0

    return v1

    .line 490
    :catch_17
    move-exception v1

    .line 491
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 492
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 493
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    const/4 v2, -0x1

    return v2
.end method

.method private runBypassStagedInstallerCheck()I
    .registers 5

    .line 471
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 473
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    .line 474
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageInstaller;->bypassNextStagedInstallerCheck(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_17

    .line 475
    const/4 v1, 0x0

    return v1

    .line 476
    :catch_17
    move-exception v1

    .line 477
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 478
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 479
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    const/4 v2, -0x1

    return v2
.end method

.method private runClear()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2291
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2292
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2293
    .local v1, "userId":I
    const/4 v2, 0x0

    .line 2296
    .local v2, "cacheOnly":Z
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_52

    .line 2297
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_a6

    :cond_17
    goto :goto_2b

    :sswitch_18
    const-string v7, "--user"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    goto :goto_2c

    :sswitch_21
    const-string v5, "--cache-only"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    move v5, v6

    goto :goto_2c

    :goto_2b
    move v5, v3

    :goto_2c
    packed-switch v5, :pswitch_data_b0

    .line 2305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2306
    return v6

    .line 2302
    :pswitch_46
    const/4 v2, 0x1

    .line 2303
    goto :goto_51

    .line 2299
    :pswitch_48
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 2300
    nop

    .line 2306
    :goto_51
    goto :goto_6

    .line 2310
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2311
    .local v3, "pkg":Ljava/lang/String;
    if-nez v3, :cond_62

    .line 2312
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v7, "Error: no package specified"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2313
    return v6

    .line 2316
    :cond_62
    const/16 v7, -0x2710

    const-string/jumbo v8, "runClear"

    .line 2317
    invoke-direct {p0, v1, v7, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v7

    .line 2318
    .local v7, "translatedUserId":I
    new-instance v8, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v8}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    .line 2319
    .local v8, "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    if-nez v2, :cond_7a

    .line 2320
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v9

    .line 2321
    invoke-interface {v9, v3, v5, v8, v7}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    goto :goto_7f

    .line 2323
    :cond_7a
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v9, v3, v7, v8}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 2325
    :goto_7f
    monitor-enter v8

    .line 2326
    :goto_80
    :try_start_80
    iget-boolean v9, v8, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_82
    .catchall {:try_start_80 .. :try_end_82} :catchall_a3

    if-nez v9, :cond_8a

    .line 2328
    :try_start_84
    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_84 .. :try_end_87} :catch_88
    .catchall {:try_start_84 .. :try_end_87} :catchall_a3

    .line 2330
    :goto_87
    goto :goto_80

    .line 2329
    :catch_88
    move-exception v9

    goto :goto_87

    .line 2332
    :cond_8a
    :try_start_8a
    monitor-exit v8
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_a3

    .line 2334
    iget-boolean v9, v8, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->result:Z

    if-eqz v9, :cond_99

    .line 2335
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v9, "Success"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2336
    return v5

    .line 2338
    :cond_99
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v9, "Failed"

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2339
    return v6

    .line 2332
    :catchall_a3
    move-exception v5

    :try_start_a4
    monitor-exit v8
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw v5

    :sswitch_data_a6
    .sparse-switch
        -0x7a998f49 -> :sswitch_21
        0x4f7b216b -> :sswitch_18
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_48
        :pswitch_46
    .end packed-switch
.end method

.method private runCompile()I
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1791
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 1792
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "dalvik.vm.usejitprofiles"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1793
    .local v2, "checkProfiles":Z
    const/4 v4, 0x0

    .line 1794
    .local v4, "forceCompilation":Z
    const/4 v5, 0x0

    .line 1795
    .local v5, "allPackages":Z
    const/4 v6, 0x0

    .line 1796
    .local v6, "clearProfileData":Z
    const/4 v7, 0x0

    .line 1797
    .local v7, "compilerFilter":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1798
    .local v8, "compilationReason":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1799
    .local v9, "checkProfilesRaw":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1800
    .local v10, "secondaryDex":Z
    const/4 v11, 0x0

    .line 1801
    .local v11, "split":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1804
    .local v12, "compileLayouts":Z
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v13

    move-object v15, v13

    .local v15, "opt":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v13, :cond_d9

    .line 1805
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_2d6

    :cond_25
    goto/16 :goto_8d

    :sswitch_27
    const-string v13, "--check-prof"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v14, 0x6

    goto :goto_8e

    :sswitch_31
    const-string v13, "--compile-layouts"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v14, 0x5

    goto :goto_8e

    :sswitch_3b
    const-string v13, "--secondary-dex"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/16 v14, 0x8

    goto :goto_8e

    :sswitch_46
    const-string v13, "-r"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v14, 0x4

    goto :goto_8e

    :sswitch_50
    const-string v13, "-m"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v14, 0x3

    goto :goto_8e

    :sswitch_5a
    const-string v13, "-f"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v14, 0x2

    goto :goto_8e

    :sswitch_64
    const-string v13, "-c"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    move v14, v3

    goto :goto_8e

    :sswitch_6e
    const-string v13, "-a"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v14, 0x0

    goto :goto_8e

    :sswitch_78
    const-string v13, "--split"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/16 v14, 0x9

    goto :goto_8e

    :sswitch_83
    const-string v13, "--reset"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v14, 0x7

    goto :goto_8e

    :goto_8d
    const/4 v14, -0x1

    :goto_8e
    packed-switch v14, :pswitch_data_300

    .line 1839
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error: Unknown option: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1840
    return v3

    .line 1836
    :pswitch_a8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 1837
    .end local v11    # "split":Ljava/lang/String;
    .local v3, "split":Ljava/lang/String;
    move-object v11, v3

    goto :goto_d6

    .line 1833
    .end local v3    # "split":Ljava/lang/String;
    .restart local v11    # "split":Ljava/lang/String;
    :pswitch_ae
    const/4 v3, 0x1

    .line 1834
    .end local v10    # "secondaryDex":Z
    .local v3, "secondaryDex":Z
    move v10, v3

    goto :goto_d6

    .line 1828
    .end local v3    # "secondaryDex":Z
    .restart local v10    # "secondaryDex":Z
    :pswitch_b1
    const/4 v3, 0x1

    .line 1829
    .end local v4    # "forceCompilation":Z
    .local v3, "forceCompilation":Z
    const/4 v4, 0x1

    .line 1830
    .end local v6    # "clearProfileData":Z
    .local v4, "clearProfileData":Z
    const-string v6, "install"

    .line 1831
    .end local v8    # "compilationReason":Ljava/lang/String;
    .local v6, "compilationReason":Ljava/lang/String;
    move-object v8, v6

    move v6, v4

    move v4, v3

    goto :goto_d6

    .line 1825
    .end local v3    # "forceCompilation":Z
    .local v4, "forceCompilation":Z
    .local v6, "clearProfileData":Z
    .restart local v8    # "compilationReason":Ljava/lang/String;
    :pswitch_b9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 1826
    .end local v9    # "checkProfilesRaw":Ljava/lang/String;
    .local v3, "checkProfilesRaw":Ljava/lang/String;
    move-object v9, v3

    goto :goto_d6

    .line 1822
    .end local v3    # "checkProfilesRaw":Ljava/lang/String;
    .restart local v9    # "checkProfilesRaw":Ljava/lang/String;
    :pswitch_bf
    const/4 v3, 0x1

    .line 1823
    .end local v12    # "compileLayouts":Z
    .local v3, "compileLayouts":Z
    move v12, v3

    goto :goto_d6

    .line 1819
    .end local v3    # "compileLayouts":Z
    .restart local v12    # "compileLayouts":Z
    :pswitch_c2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 1820
    .end local v8    # "compilationReason":Ljava/lang/String;
    .local v3, "compilationReason":Ljava/lang/String;
    move-object v8, v3

    goto :goto_d6

    .line 1816
    .end local v3    # "compilationReason":Ljava/lang/String;
    .restart local v8    # "compilationReason":Ljava/lang/String;
    :pswitch_c8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 1817
    .end local v7    # "compilerFilter":Ljava/lang/String;
    .local v3, "compilerFilter":Ljava/lang/String;
    move-object v7, v3

    goto :goto_d6

    .line 1813
    .end local v3    # "compilerFilter":Ljava/lang/String;
    .restart local v7    # "compilerFilter":Ljava/lang/String;
    :pswitch_ce
    const/4 v3, 0x1

    .line 1814
    .end local v4    # "forceCompilation":Z
    .local v3, "forceCompilation":Z
    move v4, v3

    goto :goto_d6

    .line 1810
    .end local v3    # "forceCompilation":Z
    .restart local v4    # "forceCompilation":Z
    :pswitch_d1
    const/4 v3, 0x1

    .line 1811
    .end local v6    # "clearProfileData":Z
    .local v3, "clearProfileData":Z
    move v6, v3

    goto :goto_d6

    .line 1807
    .end local v3    # "clearProfileData":Z
    .restart local v6    # "clearProfileData":Z
    :pswitch_d4
    const/4 v3, 0x1

    .line 1808
    .end local v5    # "allPackages":Z
    .local v3, "allPackages":Z
    move v5, v3

    .line 1840
    .end local v3    # "allPackages":Z
    .restart local v5    # "allPackages":Z
    :goto_d6
    const/4 v3, 0x0

    goto/16 :goto_16

    .line 1844
    :cond_d9
    if-eqz v9, :cond_f6

    .line 1845
    const-string/jumbo v13, "true"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e6

    .line 1846
    const/4 v2, 0x1

    goto :goto_f6

    .line 1847
    :cond_e6
    const-string v13, "false"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f0

    .line 1848
    const/4 v2, 0x0

    goto :goto_f6

    .line 1850
    :cond_f0
    const-string v13, "Invalid value for \"--check-prof\". Expected \"true\" or \"false\"."

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1851
    return v3

    .line 1855
    :cond_f6
    :goto_f6
    if-eqz v7, :cond_fa

    move v13, v3

    goto :goto_fb

    :cond_fa
    const/4 v13, 0x0

    :goto_fb
    move/from16 v20, v13

    .line 1856
    .local v20, "compilerFilterGiven":Z
    if-eqz v8, :cond_101

    move v13, v3

    goto :goto_102

    :cond_101
    const/4 v13, 0x0

    :goto_102
    move/from16 v21, v13

    .line 1858
    .local v21, "compilationReasonGiven":Z
    if-nez v20, :cond_10a

    if-nez v21, :cond_10a

    if-eqz v12, :cond_122

    :cond_10a
    if-nez v20, :cond_110

    if-eqz v21, :cond_110

    if-nez v12, :cond_122

    :cond_110
    if-eqz v20, :cond_116

    if-nez v21, :cond_116

    if-nez v12, :cond_122

    :cond_116
    if-eqz v20, :cond_11c

    if-eqz v21, :cond_11c

    if-eqz v12, :cond_122

    :cond_11c
    if-eqz v20, :cond_128

    if-eqz v21, :cond_128

    if-eqz v12, :cond_128

    .line 1863
    :cond_122
    const-string v13, "Must specify exactly one of compilation filter (\"-m\"), compilation reason (\"-r\"), or compile layouts (\"--compile-layouts\")"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1865
    return v3

    .line 1868
    :cond_128
    if-eqz v5, :cond_132

    if-eqz v11, :cond_132

    .line 1869
    const-string v13, "-a cannot be specified together with --split"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1870
    return v3

    .line 1873
    :cond_132
    if-eqz v10, :cond_13c

    if-eqz v11, :cond_13c

    .line 1874
    const-string v13, "--secondary-dex cannot be specified together with --split"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1875
    return v3

    .line 1878
    :cond_13c
    const/4 v13, 0x0

    .line 1879
    .local v13, "targetCompilerFilter":Ljava/lang/String;
    if-eqz v20, :cond_164

    .line 1880
    invoke-static {v7}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_163

    .line 1881
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: \""

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "\" is not a valid compilation filter."

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1883
    const/4 v3, 0x1

    return v3

    .line 1885
    :cond_163
    move-object v13, v7

    .line 1887
    :cond_164
    if-eqz v21, :cond_1aa

    .line 1888
    const/4 v3, -0x1

    .line 1889
    .local v3, "reason":I
    const/16 v16, 0x0

    move/from16 v14, v16

    .local v14, "i":I
    :goto_16b
    move/from16 v16, v3

    .end local v3    # "reason":I
    .local v16, "reason":I
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v14, v3, :cond_183

    .line 1890
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v3, v3, v14

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17e

    .line 1892
    move v3, v14

    .line 1893
    .end local v16    # "reason":I
    .restart local v3    # "reason":I
    goto :goto_185

    .line 1889
    .end local v3    # "reason":I
    .restart local v16    # "reason":I
    :cond_17e
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    goto :goto_16b

    :cond_183
    move/from16 v3, v16

    .line 1896
    .end local v14    # "i":I
    .end local v16    # "reason":I
    .restart local v3    # "reason":I
    :goto_185
    const/4 v14, -0x1

    if-ne v3, v14, :cond_1a2

    .line 1897
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v7

    .end local v7    # "compilerFilter":Ljava/lang/String;
    .local v22, "compilerFilter":Ljava/lang/String;
    const-string v7, "Error: Unknown compilation reason: "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    const/4 v7, 0x1

    return v7

    .line 1900
    .end local v22    # "compilerFilter":Ljava/lang/String;
    .restart local v7    # "compilerFilter":Ljava/lang/String;
    :cond_1a2
    move-object/from16 v22, v7

    .line 1901
    .end local v7    # "compilerFilter":Ljava/lang/String;
    .restart local v22    # "compilerFilter":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    goto :goto_1ad

    .line 1887
    .end local v3    # "reason":I
    .end local v22    # "compilerFilter":Ljava/lang/String;
    .restart local v7    # "compilerFilter":Ljava/lang/String;
    :cond_1aa
    move-object/from16 v22, v7

    .end local v7    # "compilerFilter":Ljava/lang/String;
    .restart local v22    # "compilerFilter":Ljava/lang/String;
    move-object v3, v13

    .line 1905
    .end local v13    # "targetCompilerFilter":Ljava/lang/String;
    .local v3, "targetCompilerFilter":Ljava/lang/String;
    :goto_1ad
    const/4 v7, 0x0

    .line 1906
    .local v7, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_1b7

    .line 1907
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v13}, Landroid/content/pm/IPackageManager;->getAllPackages()Ljava/util/List;

    move-result-object v7

    goto :goto_1c8

    .line 1909
    :cond_1b7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v13

    .line 1910
    .local v13, "packageName":Ljava/lang/String;
    if-nez v13, :cond_1c4

    .line 1911
    const-string v14, "Error: package name not specified"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1912
    const/4 v14, 0x1

    return v14

    .line 1914
    :cond_1c4
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 1917
    .end local v13    # "packageName":Ljava/lang/String;
    :goto_1c8
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v13

    .line 1918
    .local v14, "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 1919
    .local v13, "index":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1d3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_26b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v24, v8

    .end local v8    # "compilationReason":Ljava/lang/String;
    .local v24, "compilationReason":Ljava/lang/String;
    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    .line 1920
    .local v8, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_1ed

    .line 1921
    move/from16 v25, v6

    .end local v6    # "clearProfileData":Z
    .local v25, "clearProfileData":Z
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v8}, Landroid/content/pm/IPackageManager;->clearApplicationProfileData(Ljava/lang/String;)V

    goto :goto_1ef

    .line 1920
    .end local v25    # "clearProfileData":Z
    .restart local v6    # "clearProfileData":Z
    :cond_1ed
    move/from16 v25, v6

    .line 1924
    .end local v6    # "clearProfileData":Z
    .restart local v25    # "clearProfileData":Z
    :goto_1ef
    if-eqz v5, :cond_222

    .line 1925
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v26, v5

    .end local v5    # "allPackages":Z
    .local v26, "allPackages":Z
    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1926
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    move v5, v13

    goto :goto_225

    .line 1924
    .end local v26    # "allPackages":Z
    .restart local v5    # "allPackages":Z
    :cond_222
    move/from16 v26, v5

    .end local v5    # "allPackages":Z
    .restart local v26    # "allPackages":Z
    move v5, v13

    .line 1929
    .end local v13    # "index":I
    .local v5, "index":I
    :goto_225
    const/4 v6, 0x1

    .line 1930
    .local v6, "result":Z
    if-eqz v12, :cond_238

    .line 1931
    const-class v13, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageManagerInternal;

    .line 1933
    .local v13, "internal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v13, v8}, Landroid/content/pm/PackageManagerInternal;->compileLayouts(Ljava/lang/String;)Z

    move-result v6

    .line 1934
    .end local v13    # "internal":Landroid/content/pm/PackageManagerInternal;
    move-object v0, v14

    move-object/from16 v27, v15

    goto :goto_258

    .line 1935
    :cond_238
    if-eqz v10, :cond_244

    .line 1936
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v13, v8, v3, v4}, Landroid/content/pm/IPackageManager;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    move-object v0, v14

    move-object/from16 v27, v15

    goto :goto_257

    .line 1938
    :cond_244
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/16 v18, 0x1

    move-object v0, v14

    .end local v14    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v14, v8

    move-object/from16 v27, v15

    .end local v15    # "opt":Ljava/lang/String;
    .local v27, "opt":Ljava/lang/String;
    move v15, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v19, v11

    invoke-interface/range {v13 .. v19}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v13

    :goto_257
    move v6, v13

    .line 1942
    :goto_258
    if-nez v6, :cond_25d

    .line 1943
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1945
    .end local v6    # "result":Z
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_25d
    move-object v14, v0

    move v13, v5

    move-object/from16 v8, v24

    move/from16 v6, v25

    move/from16 v5, v26

    move-object/from16 v15, v27

    move-object/from16 v0, p0

    goto/16 :goto_1d3

    .line 1947
    .end local v0    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "compilationReason":Ljava/lang/String;
    .end local v25    # "clearProfileData":Z
    .end local v26    # "allPackages":Z
    .end local v27    # "opt":Ljava/lang/String;
    .local v5, "allPackages":Z
    .local v6, "clearProfileData":Z
    .local v8, "compilationReason":Ljava/lang/String;
    .local v13, "index":I
    .restart local v14    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "opt":Ljava/lang/String;
    :cond_26b
    move/from16 v26, v5

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object v0, v14

    move-object/from16 v27, v15

    .end local v5    # "allPackages":Z
    .end local v6    # "clearProfileData":Z
    .end local v8    # "compilationReason":Ljava/lang/String;
    .end local v14    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "opt":Ljava/lang/String;
    .restart local v0    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "compilationReason":Ljava/lang/String;
    .restart local v25    # "clearProfileData":Z
    .restart local v26    # "allPackages":Z
    .restart local v27    # "opt":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_281

    .line 1948
    const-string v5, "Success"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1949
    const/4 v5, 0x0

    return v5

    .line 1950
    :cond_281
    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_2ad

    .line 1951
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure: package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be compiled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1952
    const/4 v5, 0x1

    return v5

    .line 1954
    :cond_2ad
    const-string v5, "Failure: the following packages could not be compiled: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1955
    const/4 v5, 0x1

    .line 1956
    .local v5, "is_first":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2b7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2d0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1957
    .local v8, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_2c7

    .line 1958
    const/4 v5, 0x0

    goto :goto_2cc

    .line 1960
    :cond_2c7
    const-string v14, ", "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1962
    :goto_2cc
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1963
    .end local v8    # "packageName":Ljava/lang/String;
    goto :goto_2b7

    .line 1964
    :cond_2d0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1965
    const/4 v6, 0x1

    return v6

    nop

    :sswitch_data_2d6
    .sparse-switch
        -0x60476451 -> :sswitch_83
        -0x60346686 -> :sswitch_78
        0x5d4 -> :sswitch_6e
        0x5d6 -> :sswitch_64
        0x5d9 -> :sswitch_5a
        0x5e0 -> :sswitch_50
        0x5e5 -> :sswitch_46
        0x4baaae9e -> :sswitch_3b
        0x4ee8cb4f -> :sswitch_31
        0x64c6429e -> :sswitch_27
    .end sparse-switch

    :pswitch_data_300
    .packed-switch 0x0
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_c8
        :pswitch_c2
        :pswitch_bf
        :pswitch_b9
        :pswitch_b1
        :pswitch_ae
        :pswitch_a8
    .end packed-switch
.end method

.method private runDeleteDexOpt()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1999
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2000
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2001
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_15

    .line 2002
    const-string v2, "Error: no package name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2003
    return v3

    .line 2005
    :cond_15
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 2006
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->deleteOatArtifactsOfPackage(Ljava/lang/String;)J

    move-result-wide v4

    .line 2007
    .local v4, "freedBytes":J
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_2d

    .line 2008
    const-string v2, "Error: delete failed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2009
    return v3

    .line 2011
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success: freed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete-dexopt "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " ,freed "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManagerShellCommand"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    const/4 v2, 0x0

    return v2
.end method

.method private runDexoptJob()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1982
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1983
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "arg":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 1984
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1986
    :cond_10
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->getService()Lcom/android/server/pm/BackgroundDexOptService;

    move-result-object v1

    .line 1987
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x0

    goto :goto_1d

    :cond_1c
    move-object v3, v0

    .line 1986
    :goto_1d
    invoke-virtual {v1, v3}, Lcom/android/server/pm/BackgroundDexOptService;->runBackgroundDexoptJob(Ljava/util/List;)Z

    move-result v1

    .line 1988
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    if-eqz v1, :cond_2a

    const-string v4, "Success"

    goto :goto_2c

    :cond_2a
    const-string v4, "Failure"

    :goto_2c
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1989
    if-eqz v1, :cond_33

    const/4 v3, 0x0

    goto :goto_34

    :cond_33
    const/4 v3, -0x1

    :goto_34
    return v3
.end method

.method private runDump()I
    .registers 4

    .line 3329
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 3330
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 3331
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3332
    const/4 v1, 0x1

    return v1

    .line 3334
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 3335
    const/4 v1, 0x0

    return v1
.end method

.method private runDumpProfiles()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2017
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2018
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2021
    .local v1, "dumpClassesAndMethods":Z
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v2, :cond_3e

    .line 2022
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_48

    :cond_15
    goto :goto_1f

    :pswitch_16
    const-string v5, "--dump-classes-and-methods"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_20

    :goto_1f
    move v4, v2

    :goto_20
    packed-switch v4, :pswitch_data_4e

    .line 2027
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    const/4 v2, 0x1

    return v2

    .line 2024
    :pswitch_3b
    const/4 v1, 0x1

    .line 2025
    nop

    .line 2028
    goto :goto_5

    .line 2032
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2033
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v2, v1}, Landroid/content/pm/IPackageManager;->dumpProfiles(Ljava/lang/String;Z)V

    .line 2034
    return v4

    :pswitch_data_48
    .packed-switch -0x78c45124
        :pswitch_16
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3b
    .end packed-switch
.end method

.method private runGc()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 735
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 736
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 737
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Ok"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    const/4 v1, 0x0

    return v1
.end method

.method private runGetHarmfulAppWarning()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3362
    const/4 v0, -0x2

    .line 3365
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 3366
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3367
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 3369
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3370
    const/4 v1, -0x1

    return v1

    .line 3374
    :cond_35
    const/16 v1, -0x2710

    .line 3375
    const-string/jumbo v3, "runGetHarmfulAppWarning"

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v1

    .line 3376
    .local v1, "translatedUserId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 3377
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3, v1}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 3378
    .local v4, "warning":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 3379
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3380
    const/4 v5, 0x0

    return v5

    .line 3382
    :cond_57
    const/4 v5, 0x1

    return v5
.end method

.method private runGetInstallLocation()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1726
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v0

    .line 1727
    .local v0, "loc":I
    const-string v1, "invalid"

    .line 1728
    .local v1, "locStr":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 1729
    const-string v1, "auto"

    goto :goto_18

    .line 1730
    :cond_d
    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 1731
    const-string v1, "internal"

    goto :goto_18

    .line 1732
    :cond_13
    const/4 v2, 0x2

    if-ne v0, v2, :cond_18

    .line 1733
    const-string v1, "external"

    .line 1735
    :cond_18
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1736
    const/4 v2, 0x0

    return v2
.end method

.method private runGetInstantAppResolver()I
    .registers 5

    .line 3292
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3294
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 3295
    .local v2, "instantAppsResolver":Landroid/content/ComponentName;
    if-nez v2, :cond_e

    .line 3296
    return v1

    .line 3298
    :cond_e
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_17

    .line 3299
    const/4 v1, 0x0

    return v1

    .line 3300
    .end local v2    # "instantAppsResolver":Landroid/content/ComponentName;
    :catch_17
    move-exception v2

    .line 3301
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3302
    return v1
.end method

.method private runGetModuleInfo()I
    .registers 13

    .line 404
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 405
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 408
    .local v1, "flags":I
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_4a

    .line 409
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_e6

    :cond_15
    goto :goto_29

    :sswitch_16
    const-string v2, "--installed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_2a

    :sswitch_1f
    const-string v2, "--all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v4, 0x0

    goto :goto_2a

    :goto_29
    move v4, v5

    :goto_2a
    packed-switch v4, :pswitch_data_f0

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    return v5

    .line 414
    :pswitch_44
    goto :goto_49

    .line 411
    :pswitch_45
    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    .line 412
    nop

    .line 417
    :goto_49
    goto :goto_5

    .line 421
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "moduleName":Ljava/lang/String;
    const-string v6, " packageName: "

    if-eqz v2, :cond_79

    .line 424
    :try_start_52
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v2, v1}, Landroid/content/pm/IPackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v7

    .line 425
    .local v7, "m":Landroid/content/pm/ModuleInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    .end local v7    # "m":Landroid/content/pm/ModuleInfo;
    goto :goto_b0

    .line 428
    :cond_79
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v1}, Landroid/content/pm/IPackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v7

    .line 429
    .local v7, "modules":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_83
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ModuleInfo;

    .line 430
    .local v9, "m":Landroid/content/pm/ModuleInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_af} :catch_b2

    .line 431
    .end local v9    # "m":Landroid/content/pm/ModuleInfo;
    goto :goto_83

    .line 436
    .end local v7    # "modules":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    :cond_b0
    :goto_b0
    nop

    .line 437
    return v4

    .line 433
    :catch_b2
    move-exception v4

    .line 434
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    return v5

    :sswitch_data_e6
    .sparse-switch
        0x2901001 -> :sswitch_1f
        0x1ed785da -> :sswitch_16
    .end sparse-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_45
        :pswitch_44
    .end packed-switch
.end method

.method private runGetOemPermissions()I
    .registers 5

    .line 2734
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2735
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 2736
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2737
    const/4 v1, 0x1

    return v1

    .line 2739
    :cond_11
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 2740
    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 2741
    .local v1, "oemPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_2b

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_2b

    .line 2744
    :cond_22
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_35

    .line 2742
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string/jumbo v3, "{}"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2748
    :goto_35
    const/4 v2, 0x0

    return v2
.end method

.method private runGetPrivappDenyPermissions()I
    .registers 5

    .line 2705
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2706
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 2707
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2708
    const/4 v1, 0x1

    return v1

    .line 2711
    :cond_11
    const/4 v1, 0x0

    .line 2712
    .local v1, "privAppPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2713
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_62

    .line 2714
    :cond_21
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2715
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_62

    .line 2716
    :cond_30
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isSystemExtApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2717
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    .line 2718
    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_62

    .line 2719
    :cond_3f
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isApexApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2720
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v2

    .line 2721
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->getApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2720
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2722
    .local v2, "apexName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v3

    .line 2723
    invoke-virtual {v3, v2, v0}, Lcom/android/server/SystemConfig;->getApexPrivAppDenyPermissions(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 2724
    .end local v2    # "apexName":Ljava/lang/String;
    goto :goto_62

    .line 2725
    :cond_5a
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 2728
    :goto_62
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-nez v1, :cond_6c

    .line 2729
    const-string/jumbo v3, "{}"

    goto :goto_70

    :cond_6c
    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2728
    :goto_70
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2730
    const/4 v2, 0x0

    return v2
.end method

.method private runGetPrivappPermissions()I
    .registers 5

    .line 2676
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2677
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 2678
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2679
    const/4 v1, 0x1

    return v1

    .line 2682
    :cond_11
    const/4 v1, 0x0

    .line 2683
    .local v1, "privAppPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2684
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_62

    .line 2685
    :cond_21
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2686
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_62

    .line 2687
    :cond_30
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isSystemExtApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2688
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    .line 2689
    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_62

    .line 2690
    :cond_3f
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isApexApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2691
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v2

    .line 2692
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->getApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2691
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2693
    .local v2, "apexName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v3

    .line 2694
    invoke-virtual {v3, v2, v0}, Lcom/android/server/SystemConfig;->getApexPrivAppPermissions(Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 2695
    .end local v2    # "apexName":Ljava/lang/String;
    goto :goto_62

    .line 2696
    :cond_5a
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 2699
    :goto_62
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-nez v1, :cond_6c

    .line 2700
    const-string/jumbo v3, "{}"

    goto :goto_70

    :cond_6c
    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2699
    :goto_70
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2701
    const/4 v2, 0x0

    return v2
.end method

.method private runGrantRevokePermission(Z)I
    .registers 9
    .param p1, "grant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2543
    const/4 v0, 0x0

    .line 2545
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 2546
    .local v1, "opt":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_1a

    .line 2547
    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2548
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 2552
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2553
    .local v2, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v2, :cond_2b

    .line 2554
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2555
    return v3

    .line 2557
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2558
    .local v4, "perm":Ljava/lang/String;
    if-nez v4, :cond_3b

    .line 2559
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: no permission specified"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2560
    return v3

    .line 2562
    :cond_3b
    const/16 v3, -0x2710

    const-string/jumbo v5, "runGrantRevokePermission"

    invoke-direct {p0, v0, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 2564
    .local v3, "translatedUser":Landroid/os/UserHandle;
    if-eqz p1, :cond_50

    .line 2565
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {v5, v2, v4, v3}, Landroid/permission/PermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_56

    .line 2567
    :cond_50
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v4, v3, v6}, Landroid/permission/PermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2569
    :goto_56
    const/4 v5, 0x0

    return v5
.end method

.method private runHasFeature()I
    .registers 9

    .line 3307
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3308
    .local v0, "err":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 3309
    .local v1, "featureName":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_11

    .line 3310
    const-string v3, "Error: expected FEATURE name"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3311
    return v2

    .line 3313
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 3315
    .local v3, "versionString":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez v3, :cond_1a

    move v5, v4

    goto :goto_1e

    :cond_1a
    :try_start_1a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3316
    .local v5, "version":I
    :goto_1e
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v1, v5}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v6

    .line 3317
    .local v6, "hasFeature":Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_2b} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2b} :catch_2f

    .line 3318
    if-eqz v6, :cond_2e

    move v2, v4

    :cond_2e
    return v2

    .line 3322
    .end local v5    # "version":I
    .end local v6    # "hasFeature":Z
    :catch_2f
    move-exception v4

    .line 3323
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3324
    return v2

    .line 3319
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_38
    move-exception v4

    .line 3320
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: illegal version number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3321
    return v2
.end method

.method private runIncrementalInstall()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1418
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    .line 1419
    .local v0, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-nez v1, :cond_15

    .line 1420
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1421
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getIncrementalDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    move-result-object v2

    .line 1420
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    .line 1423
    :cond_15
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result v1

    return v1
.end method

.method private runInstall()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1427
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result v0

    return v0
.end method

.method private runInstallAbandon()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1547
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1548
    .local v0, "sessionId":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I

    move-result v1

    return v1
.end method

.method private runInstallAddSession()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1607
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1608
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1610
    .local v1, "parentSessionId":I
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 1612
    .local v2, "otherSessionIds":Landroid/util/IntArray;
    :goto_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_20

    .line 1613
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_11

    .line 1615
    :cond_20
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_2d

    .line 1616
    const-string v3, "Error: At least two sessions are required."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1617
    return v5

    .line 1619
    :cond_2d
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    invoke-direct {p0, v1, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doInstallAddSession(I[IZ)I

    move-result v3

    return v3
.end method

.method private runInstallCommit()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1552
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1554
    .local v0, "pw":Ljava/io/PrintWriter;
    const-wide/32 v1, 0xea60

    .line 1555
    .local v1, "stagedReadyTimeoutMs":J
    :goto_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v3, :cond_48

    .line 1556
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_7c

    :cond_17
    goto :goto_21

    :pswitch_18
    const-string v6, "--staged-ready-timeout"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_22

    :goto_21
    move v5, v3

    :goto_22
    packed-switch v5, :pswitch_data_82

    .line 1561
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1558
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1559
    nop

    .line 1561
    goto :goto_7

    .line 1564
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1565
    .local v3, "sessionId":I
    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v6

    if-eqz v6, :cond_58

    .line 1566
    const/4 v5, 0x1

    return v5

    .line 1568
    :cond_58
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v6

    .line 1569
    invoke-interface {v6, v3}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v6

    .line 1570
    .local v6, "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v6, :cond_75

    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v7

    if-eqz v7, :cond_75

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_75

    .line 1571
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    move-result v5

    return v5

    .line 1573
    :cond_75
    const-string v7, "Success"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    return v5

    nop

    :pswitch_data_7c
    .packed-switch -0x9723f90
        :pswitch_18
    .end packed-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_3e
    .end packed-switch
.end method

.method private runInstallCreate()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1578
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1579
    .local v0, "pw":Ljava/io/PrintWriter;
    sget-object v1, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_SESSION_CREATE_OPTS:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v1

    .line 1580
    .local v1, "installParams":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    .line 1584
    .local v2, "sessionId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success: created install session ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    const/4 v3, 0x0

    return v3
.end method

.method private runInstallExisting()I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1637
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1638
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, -0x2

    .line 1639
    .local v0, "userId":I
    const/high16 v3, 0x400000

    .line 1641
    .local v3, "installFlags":I
    const/4 v4, 0x0

    move v11, v3

    move v12, v4

    move v3, v0

    .line 1642
    .end local v0    # "userId":I
    .local v3, "userId":I
    .local v11, "installFlags":I
    .local v12, "waitTillComplete":Z
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .local v13, "opt":Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_95

    .line 1643
    const/4 v0, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_17c

    :cond_1e
    goto :goto_5a

    :sswitch_1f
    const-string v4, "--restrict-permissions"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v14, 0x5

    goto :goto_5b

    :sswitch_29
    const-string v4, "--wait"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v14, 0x4

    goto :goto_5b

    :sswitch_33
    const-string v4, "--user"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_5b

    :sswitch_3c
    const-string v4, "--full"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v14, 0x3

    goto :goto_5b

    :sswitch_46
    const-string v4, "--ephemeral"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v14, v15

    goto :goto_5b

    :sswitch_50
    const-string v4, "--instant"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v14, 0x2

    goto :goto_5b

    :goto_5a
    move v14, v0

    :goto_5b
    packed-switch v14, :pswitch_data_196

    .line 1663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1664
    return v15

    .line 1660
    :pswitch_75
    const v0, -0x400001

    and-int/2addr v0, v11

    .line 1661
    .end local v11    # "installFlags":I
    .local v0, "installFlags":I
    move v11, v0

    goto :goto_93

    .line 1657
    .end local v0    # "installFlags":I
    .restart local v11    # "installFlags":I
    :pswitch_7b
    const/4 v0, 0x1

    .line 1658
    .end local v12    # "waitTillComplete":Z
    .local v0, "waitTillComplete":Z
    move v12, v0

    goto :goto_93

    .line 1653
    .end local v0    # "waitTillComplete":Z
    .restart local v12    # "waitTillComplete":Z
    :pswitch_7e
    and-int/lit16 v0, v11, -0x801

    .line 1654
    .end local v11    # "installFlags":I
    .local v0, "installFlags":I
    or-int/lit16 v0, v0, 0x4000

    .line 1655
    move v11, v0

    goto :goto_93

    .line 1649
    .end local v0    # "installFlags":I
    .restart local v11    # "installFlags":I
    :pswitch_84
    or-int/lit16 v0, v11, 0x800

    .line 1650
    .end local v11    # "installFlags":I
    .restart local v0    # "installFlags":I
    and-int/lit16 v0, v0, -0x4001

    .line 1651
    move v11, v0

    goto :goto_93

    .line 1645
    .end local v0    # "installFlags":I
    .restart local v11    # "installFlags":I
    :pswitch_8a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1646
    .end local v3    # "userId":I
    .local v0, "userId":I
    move v3, v0

    .line 1664
    .end local v0    # "userId":I
    .restart local v3    # "userId":I
    :goto_93
    goto/16 :goto_d

    .line 1668
    :cond_95
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v10

    .line 1669
    .local v10, "packageName":Ljava/lang/String;
    if-nez v10, :cond_a1

    .line 1670
    const-string v0, "Error: package name not specified"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    return v15

    .line 1673
    :cond_a1
    const/16 v0, -0x2710

    .line 1674
    const-string/jumbo v4, "runInstallExisting"

    invoke-direct {v1, v3, v0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v9

    .line 1676
    .local v9, "translatedUserId":I
    const/16 v16, 0x0

    .line 1678
    .local v16, "installReason":I
    if-eqz v12, :cond_10d

    .line 1679
    :try_start_ae
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver-IA;)V

    .line 1680
    .local v0, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4

    .line 1681
    .local v4, "installer":Landroid/content/pm/IPackageInstaller;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installing package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1682
    nop

    .line 1683
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v8
    :try_end_df
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_df} :catch_109
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ae .. :try_end_df} :catch_109

    const/16 v17, 0x0

    .line 1682
    move-object v5, v10

    move v6, v11

    move/from16 v7, v16

    move/from16 v18, v9

    .end local v9    # "translatedUserId":I
    .local v18, "translatedUserId":I
    move-object/from16 v19, v10

    .end local v10    # "packageName":Ljava/lang/String;
    .local v19, "packageName":Ljava/lang/String;
    move-object/from16 v10, v17

    :try_start_eb
    invoke-interface/range {v4 .. v10}, Landroid/content/pm/IPackageInstaller;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V

    .line 1684
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v5

    .line 1685
    .local v5, "result":Landroid/content/Intent;
    const-string v6, "android.content.pm.extra.STATUS"

    invoke-virtual {v5, v6, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1687
    .local v6, "status":I
    const-string v7, "Received intent for package install"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_fd
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_fd} :catch_102
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_eb .. :try_end_fd} :catch_102

    .line 1688
    if-nez v6, :cond_100

    goto :goto_101

    :cond_100
    move v14, v15

    :goto_101
    return v14

    .line 1698
    .end local v0    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .end local v4    # "installer":Landroid/content/pm/IPackageInstaller;
    .end local v5    # "result":Landroid/content/Intent;
    .end local v6    # "status":I
    :catch_102
    move-exception v0

    move/from16 v7, v18

    move-object/from16 v6, v19

    goto/16 :goto_173

    .end local v18    # "translatedUserId":I
    .end local v19    # "packageName":Ljava/lang/String;
    .restart local v9    # "translatedUserId":I
    .restart local v10    # "packageName":Ljava/lang/String;
    :catch_109
    move-exception v0

    move v7, v9

    move-object v6, v10

    .end local v9    # "translatedUserId":I
    .end local v10    # "packageName":Ljava/lang/String;
    .restart local v18    # "translatedUserId":I
    .restart local v19    # "packageName":Ljava/lang/String;
    goto :goto_173

    .line 1691
    .end local v18    # "translatedUserId":I
    .end local v19    # "packageName":Ljava/lang/String;
    .restart local v9    # "translatedUserId":I
    .restart local v10    # "packageName":Ljava/lang/String;
    :cond_10d
    move/from16 v18, v9

    move-object/from16 v19, v10

    .end local v9    # "translatedUserId":I
    .end local v10    # "packageName":Ljava/lang/String;
    .restart local v18    # "translatedUserId":I
    .restart local v19    # "packageName":Ljava/lang/String;
    :try_start_111
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v9, 0x0

    move-object/from16 v5, v19

    move/from16 v6, v18

    move v7, v11

    move/from16 v8, v16

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result v0
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_111 .. :try_end_11f} :catch_16e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_111 .. :try_end_11f} :catch_16e

    .line 1693
    .local v0, "res":I
    const/4 v4, -0x3

    const-string v5, "Package "

    if-eq v0, v4, :cond_14b

    .line 1696
    :try_start_124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_12d
    .catch Landroid/os/RemoteException; {:try_start_124 .. :try_end_12d} :catch_16e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_124 .. :try_end_12d} :catch_16e

    move-object/from16 v6, v19

    .end local v19    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    :try_start_12f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " installed for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_139
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_139} :catch_147
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12f .. :try_end_139} :catch_147

    move/from16 v7, v18

    .end local v18    # "translatedUserId":I
    .local v7, "translatedUserId":I
    :try_start_13b
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    return v14

    .line 1698
    .end local v0    # "res":I
    .end local v7    # "translatedUserId":I
    .restart local v18    # "translatedUserId":I
    :catch_147
    move-exception v0

    move/from16 v7, v18

    .end local v18    # "translatedUserId":I
    .restart local v7    # "translatedUserId":I
    goto :goto_173

    .line 1694
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "translatedUserId":I
    .restart local v0    # "res":I
    .restart local v18    # "translatedUserId":I
    .restart local v19    # "packageName":Ljava/lang/String;
    :cond_14b
    move/from16 v7, v18

    move-object/from16 v6, v19

    .end local v18    # "translatedUserId":I
    .end local v19    # "packageName":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "translatedUserId":I
    new-instance v4, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " doesn\'t exist"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "userId":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "translatedUserId":I
    .end local v11    # "installFlags":I
    .end local v12    # "waitTillComplete":Z
    .end local v13    # "opt":Ljava/lang/String;
    .end local v16    # "installReason":I
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    throw v4
    :try_end_16c
    .catch Landroid/os/RemoteException; {:try_start_13b .. :try_end_16c} :catch_16c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13b .. :try_end_16c} :catch_16c

    .line 1698
    .end local v0    # "res":I
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "userId":I
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "translatedUserId":I
    .restart local v11    # "installFlags":I
    .restart local v12    # "waitTillComplete":Z
    .restart local v13    # "opt":Ljava/lang/String;
    .restart local v16    # "installReason":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :catch_16c
    move-exception v0

    goto :goto_173

    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "translatedUserId":I
    .restart local v18    # "translatedUserId":I
    .restart local v19    # "packageName":Ljava/lang/String;
    :catch_16e
    move-exception v0

    move/from16 v7, v18

    move-object/from16 v6, v19

    .line 1699
    .end local v18    # "translatedUserId":I
    .end local v19    # "packageName":Ljava/lang/String;
    .local v0, "e":Landroid/util/AndroidException;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "translatedUserId":I
    :goto_173
    invoke-virtual {v0}, Landroid/util/AndroidException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    return v15

    nop

    :sswitch_data_17c
    .sparse-switch
        -0x38b573bf -> :sswitch_50
        0x3eb0e7fd -> :sswitch_46
        0x4f74582f -> :sswitch_3c
        0x4f7b216b -> :sswitch_33
        0x4f7bc715 -> :sswitch_29
        0x59147c93 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_84
        :pswitch_84
        :pswitch_7e
        :pswitch_7b
        :pswitch_75
    .end packed-switch
.end method

.method private runInstallRemove()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1624
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1626
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1628
    .local v1, "sessionId":I
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v2

    .line 1629
    .local v2, "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1d

    .line 1630
    const-string v3, "Error: split name not specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    return v4

    .line 1633
    :cond_1d
    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplits(ILjava/util/Collection;Z)I

    move-result v3

    return v3
.end method

.method private runInstallWrite()I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1589
    const-wide/16 v0, -0x1

    .line 1592
    .local v0, "sizeBytes":J
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .local v9, "opt":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 1593
    const-string v2, "-S"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1594
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2

    .line 1596
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1600
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1601
    .local v10, "sessionId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 1602
    .local v11, "splitName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    .line 1603
    .local v12, "path":Ljava/lang/String;
    const/4 v8, 0x1

    move-object v2, p0

    move v3, v10

    move-object v4, v12

    move-wide v5, v0

    move-object v7, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v2

    return v2
.end method

.method private runList()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 701
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "type":Ljava/lang/String;
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 703
    const-string v3, "Error: didn\'t specify type of data to list"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    return v2

    .line 706
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_f6

    :cond_19
    goto/16 :goto_88

    :sswitch_1b
    const-string/jumbo v3, "permissions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x6

    goto :goto_89

    :sswitch_26
    const-string v3, "libraries"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x2

    goto :goto_89

    :sswitch_30
    const-string/jumbo v3, "packages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x4

    goto :goto_89

    :sswitch_3b
    const-string v3, "instrumentation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_89

    :sswitch_45
    const-string/jumbo v3, "users"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/16 v3, 0x9

    goto :goto_89

    :sswitch_51
    const-string/jumbo v3, "sdks"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/16 v3, 0x8

    goto :goto_89

    :sswitch_5d
    const-string v3, "features"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v3, v4

    goto :goto_89

    :sswitch_67
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x3

    goto :goto_89

    :sswitch_72
    const-string/jumbo v3, "permission-groups"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x5

    goto :goto_89

    :sswitch_7d
    const-string/jumbo v3, "staged-sessions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x7

    goto :goto_89

    :goto_88
    move v3, v2

    :goto_89
    packed-switch v3, :pswitch_data_120

    .line 730
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown list type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    return v2

    .line 725
    :pswitch_a9
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 726
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const-string v2, "list"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    .line 727
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->adoptResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v11

    .line 725
    invoke-interface/range {v5 .. v11}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 728
    return v4

    .line 723
    :pswitch_ce
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListSdks()I

    move-result v2

    return v2

    .line 721
    :pswitch_d3
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListStagedSessions()I

    move-result v2

    return v2

    .line 719
    :pswitch_d8
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissions()I

    move-result v2

    return v2

    .line 717
    :pswitch_dd
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissionGroups()I

    move-result v2

    return v2

    .line 715
    :pswitch_e2
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v2

    return v2

    .line 712
    :pswitch_e7
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListLibraries()I

    move-result v2

    return v2

    .line 710
    :pswitch_ec
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListInstrumentation()I

    move-result v2

    return v2

    .line 708
    :pswitch_f1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListFeatures()I

    move-result v2

    return v2

    :sswitch_data_f6
    .sparse-switch
        -0x431ede9c -> :sswitch_7d
        -0x3b73d86e -> :sswitch_72
        -0x301acbba -> :sswitch_67
        -0x11531bc3 -> :sswitch_5d
        0x35cb79 -> :sswitch_51
        0x6a68e08 -> :sswitch_45
        0x20752f6e -> :sswitch_3b
        0x2cc154ed -> :sswitch_30
        0x3071b299 -> :sswitch_26
        0x4392f484 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_f1
        :pswitch_ec
        :pswitch_e7
        :pswitch_e2
        :pswitch_e2
        :pswitch_dd
        :pswitch_d8
        :pswitch_d3
        :pswitch_ce
        :pswitch_a9
    .end packed-switch
.end method

.method private runListFeatures()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 742
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 743
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 746
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerShellCommand$1;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 755
    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1f

    :cond_1e
    move v3, v2

    .line 756
    .local v3, "count":I
    :goto_1f
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_20
    if-ge v4, v3, :cond_68

    .line 757
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/FeatureInfo;

    .line 758
    .local v5, "fi":Landroid/content/pm/FeatureInfo;
    const-string v6, "feature:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_48

    .line 760
    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    iget v6, v5, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v6, :cond_44

    .line 762
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 763
    iget v6, v5, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 765
    :cond_44
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_65

    .line 767
    :cond_48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reqGlEsVersion=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 768
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 767
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    .end local v5    # "fi":Landroid/content/pm/FeatureInfo;
    :goto_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 771
    .end local v4    # "p":I
    :cond_68
    return v2
.end method

.method private runListInstrumentation()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 776
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 777
    .local v1, "showSourceDir":Z
    const/4 v2, 0x0

    .line 781
    .local v2, "targetPackage":Ljava/lang/String;
    :goto_6
    const/4 v3, -0x1

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "opt":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v4, :cond_49

    .line 782
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_be

    :cond_16
    goto :goto_21

    :pswitch_17
    const-string v4, "-f"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move v4, v6

    goto :goto_22

    :goto_21
    move v4, v3

    :goto_22
    packed-switch v4, :pswitch_data_c4

    .line 787
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_2c

    .line 784
    :pswitch_2a
    const/4 v1, 0x1

    .line 785
    goto :goto_31

    .line 787
    :goto_2c
    const/16 v6, 0x2d

    if-eq v4, v6, :cond_32

    .line 788
    move-object v2, v5

    .line 793
    :goto_31
    goto :goto_6

    .line 790
    :cond_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_48} :catch_a1

    .line 791
    return v3

    .line 799
    .end local v5    # "opt":Ljava/lang/String;
    :cond_49
    nop

    .line 801
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 802
    invoke-interface {v3, v2, v6}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 805
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$2;

    invoke-direct {v4, p0}, Lcom/android/server/pm/PackageManagerShellCommand$2;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 811
    if-eqz v3, :cond_63

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_64

    :cond_63
    move v4, v6

    .line 812
    .local v4, "count":I
    :goto_64
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_65
    if-ge v5, v4, :cond_a0

    .line 813
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/InstrumentationInfo;

    .line 814
    .local v7, "ii":Landroid/content/pm/InstrumentationInfo;
    const-string v8, "instrumentation:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    if-eqz v1, :cond_7e

    .line 816
    iget-object v8, v7, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 817
    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 819
    :cond_7e
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    .local v8, "cn":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 821
    const-string v9, " (target="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    iget-object v9, v7, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 823
    const-string v9, ")"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    .end local v7    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v8    # "cn":Landroid/content/ComponentName;
    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    .line 825
    .end local v5    # "p":I
    :cond_a0
    return v6

    .line 796
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    .end local v4    # "count":I
    :catch_a1
    move-exception v4

    .line 797
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    return v3

    nop

    :pswitch_data_be
    .packed-switch 0x5d9
        :pswitch_17
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_2a
    .end packed-switch
.end method

.method private runListLibraries()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 829
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 830
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v2

    .line 832
    .local v2, "rawList":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, v2

    if-ge v3, v4, :cond_1b

    .line 833
    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 837
    .end local v3    # "i":I
    :cond_1b
    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$3;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PackageManagerShellCommand$3;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 846
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 847
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_28
    if-ge v4, v3, :cond_3b

    .line 848
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 849
    .local v5, "lib":Ljava/lang/String;
    const-string v6, "library:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    .end local v5    # "lib":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 852
    .end local v4    # "p":I
    :cond_3b
    const/4 v4, 0x0

    return v4
.end method

.method private runListPackages(Z)I
    .registers 3
    .param p1, "showSourceDir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 856
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(ZZ)I

    move-result v0

    return v0
.end method

.method private runListPackages(ZZ)I
    .registers 44
    .param p1, "showSourceDir"    # Z
    .param p2, "showSdks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 864
    move-object/from16 v1, p0

    if-eqz p2, :cond_8

    const-string/jumbo v0, "sdk:"

    goto :goto_b

    :cond_8
    const-string/jumbo v0, "package:"

    :goto_b
    move-object v2, v0

    .line 865
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 866
    .local v3, "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 867
    .local v0, "getFlags":I
    const/4 v4, 0x0

    .local v4, "listDisabled":Z
    const/4 v5, 0x0

    .line 868
    .local v5, "listEnabled":Z
    const/4 v6, 0x0

    .local v6, "listSystem":Z
    const/4 v7, 0x0

    .line 869
    .local v7, "listThirdParty":Z
    const/4 v8, 0x0

    .line 870
    .local v8, "listInstaller":Z
    const/4 v9, 0x0

    .line 871
    .local v9, "showUid":Z
    const/4 v10, 0x0

    .line 872
    .local v10, "showVersionCode":Z
    const/4 v11, 0x0

    .line 873
    .local v11, "listApexOnly":Z
    const/4 v12, -0x1

    .line 874
    .local v12, "uid":I
    const/4 v13, -0x1

    move v14, v12

    move v15, v13

    move v12, v10

    move v13, v11

    move v10, v8

    move v11, v9

    move v8, v6

    move v9, v7

    move v6, v4

    move v7, v5

    move/from16 v4, p1

    move v5, v0

    .line 877
    .end local v0    # "getFlags":I
    .end local p1    # "showSourceDir":Z
    .local v4, "showSourceDir":Z
    .local v5, "getFlags":I
    .local v6, "listDisabled":Z
    .local v7, "listEnabled":Z
    .local v8, "listSystem":Z
    .local v9, "listThirdParty":Z
    .local v10, "listInstaller":Z
    .local v11, "showUid":Z
    .local v12, "showVersionCode":Z
    .local v13, "listApexOnly":Z
    .local v14, "uid":I
    .local v15, "defaultUserId":I
    :goto_28
    move/from16 p1, v11

    .end local v11    # "showUid":Z
    .local p1, "showUid":Z
    :try_start_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2e} :catch_412

    move-object/from16 v16, v0

    .local v16, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1ad

    .line 878
    :try_start_32
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_36} :catch_19b

    sparse-switch v0, :sswitch_data_43e

    move-object/from16 v0, v16

    .end local v16    # "opt":Ljava/lang/String;
    .local v0, "opt":Ljava/lang/String;
    goto/16 :goto_108

    .end local v0    # "opt":Ljava/lang/String;
    .restart local v16    # "opt":Ljava/lang/String;
    :sswitch_3d
    :try_start_3d
    const-string v0, "--apex-only"

    move-object/from16 v11, v16

    .end local v16    # "opt":Ljava/lang/String;
    .local v11, "opt":Ljava/lang/String;
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const/16 v0, 0xb

    goto :goto_94

    .end local v11    # "opt":Ljava/lang/String;
    .restart local v16    # "opt":Ljava/lang/String;
    :sswitch_4a
    move-object/from16 v11, v16

    .end local v16    # "opt":Ljava/lang/String;
    .restart local v11    # "opt":Ljava/lang/String;
    const-string v0, "--user"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const/16 v0, 0xc

    goto :goto_94

    .end local v11    # "opt":Ljava/lang/String;
    .restart local v16    # "opt":Ljava/lang/String;
    :sswitch_57
    move-object/from16 v11, v16

    .end local v16    # "opt":Ljava/lang/String;
    .restart local v11    # "opt":Ljava/lang/String;
    const-string v0, "--uid"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const/16 v0, 0xd

    goto :goto_94

    .end local v11    # "opt":Ljava/lang/String;
    .restart local v16    # "opt":Ljava/lang/String;
    :sswitch_64
    move-object/from16 v11, v16

    .end local v16    # "opt":Ljava/lang/String;
    .restart local v11    # "opt":Ljava/lang/String;
    const-string v0, "-u"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const/16 v0, 0x8

    goto :goto_94

    .end local v11    # "opt":Ljava/lang/String;
    .restart local v16    # "opt":Ljava/lang/String;
    :sswitch_71
    move-object/from16 v11, v16

    .end local v16    # "opt":Ljava/lang/String;
    .restart local v11    # "opt":Ljava/lang/String;
    const-string v0, "-s"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const/4 v0, 0x6

    goto :goto_94

    .end local v11    # "opt":Ljava/lang/String;
    .restart local v16    # "opt":Ljava/lang/String;
    :sswitch_7d
    move-object/from16 v11, v16

    .end local v16    # "opt":Ljava/lang/String;
    .restart local v11    # "opt":Ljava/lang/String;
    const-string v0, "-l"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const/4 v0, 0x5

    goto :goto_94

    .end local v11    # "opt":Ljava/lang/String;
    .restart local v16    # "opt":Ljava/lang/String;
    :sswitch_89
    move-object/from16 v11, v16

    .end local v16    # "opt":Ljava/lang/String;
    .restart local v11    # "opt":Ljava/lang/String;
    const-string v0, "-i"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const/4 v0, 0x4

    :goto_94
    move-object/from16 v40, v11

    move v11, v0

    move-object/from16 v0, v40

    goto/16 :goto_109

    .end local v11    # "opt":Ljava/lang/String;
    .restart local v16    # "opt":Ljava/lang/String;
    :sswitch_9b
    move-object/from16 v11, v16

    .end local v16    # "opt":Ljava/lang/String;
    .restart local v11    # "opt":Ljava/lang/String;
    const-string v0, "-f"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    move-object v0, v11

    const/4 v11, 0x3

    goto/16 :goto_109

    :cond_a9
    move-object v0, v11

    goto/16 :goto_108

    .end local v11    # "opt":Ljava/lang/String;
    .restart local v16    # "opt":Ljava/lang/String;
    :sswitch_ac
    move-object/from16 v0, v16

    .end local v16    # "opt":Ljava/lang/String;
    .restart local v0    # "opt":Ljava/lang/String;
    const-string v11, "-e"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_108

    const/4 v11, 0x1

    goto :goto_109

    .end local v0    # "opt":Ljava/lang/String;
    .restart local v16    # "opt":Ljava/lang/String;
    :sswitch_b8
    move-object/from16 v0, v16

    .end local v16    # "opt":Ljava/lang/String;
    .restart local v0    # "opt":Ljava/lang/String;
    const-string v11, "-d"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_108

    const/4 v11, 0x0

    goto :goto_109

    .end local v0    # "opt":Ljava/lang/String;
    .restart local v16    # "opt":Ljava/lang/String;
    :sswitch_c4
    move-object/from16 v0, v16

    .end local v16    # "opt":Ljava/lang/String;
    .restart local v0    # "opt":Ljava/lang/String;
    const-string v11, "-a"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_108

    const/4 v11, 0x2

    goto :goto_109

    .end local v0    # "opt":Ljava/lang/String;
    .restart local v16    # "opt":Ljava/lang/String;
    :sswitch_d0
    move-object/from16 v0, v16

    .end local v16    # "opt":Ljava/lang/String;
    .restart local v0    # "opt":Ljava/lang/String;
    const-string v11, "-U"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_108

    const/4 v11, 0x7

    goto :goto_109

    .end local v0    # "opt":Ljava/lang/String;
    .restart local v16    # "opt":Ljava/lang/String;
    :sswitch_dc
    move-object/from16 v0, v16

    .end local v16    # "opt":Ljava/lang/String;
    .restart local v0    # "opt":Ljava/lang/String;
    const-string v11, "-3"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_108

    const/16 v11, 0x9

    goto :goto_109

    .end local v0    # "opt":Ljava/lang/String;
    .restart local v16    # "opt":Ljava/lang/String;
    :sswitch_e9
    move-object/from16 v0, v16

    .end local v16    # "opt":Ljava/lang/String;
    .restart local v0    # "opt":Ljava/lang/String;
    const-string v11, "--show-versioncode"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_f1
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_f1} :catch_f6

    if-eqz v11, :cond_108

    const/16 v11, 0xa

    goto :goto_109

    .line 929
    .end local v0    # "opt":Ljava/lang/String;
    :catch_f6
    move-exception v0

    move/from16 v11, p1

    move/from16 v33, v6

    move/from16 v35, v7

    move/from16 v34, v8

    move/from16 v17, v10

    move/from16 v23, v12

    move/from16 v18, v15

    move-object v6, v3

    goto/16 :goto_422

    .line 878
    .restart local v0    # "opt":Ljava/lang/String;
    :cond_108
    :goto_108
    const/4 v11, -0x1

    :goto_109
    packed-switch v11, :pswitch_data_478

    .line 925
    :try_start_10c
    new-instance v11, Ljava/lang/StringBuilder;
    :try_end_10e
    .catch Ljava/lang/RuntimeException; {:try_start_10c .. :try_end_10e} :catch_19b

    goto/16 :goto_173

    .line 921
    :pswitch_110
    const/4 v11, 0x1

    .line 922
    .end local p1    # "showUid":Z
    .local v11, "showUid":Z
    :try_start_111
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16
    :try_end_119
    .catch Ljava/lang/RuntimeException; {:try_start_111 .. :try_end_119} :catch_11d

    move/from16 v14, v16

    .line 923
    goto/16 :goto_171

    .line 929
    .end local v0    # "opt":Ljava/lang/String;
    :catch_11d
    move-exception v0

    move/from16 v33, v6

    move/from16 v35, v7

    move/from16 v34, v8

    move/from16 v17, v10

    move/from16 v23, v12

    move/from16 v18, v15

    move-object v6, v3

    goto/16 :goto_422

    .line 918
    .end local v11    # "showUid":Z
    .restart local v0    # "opt":Ljava/lang/String;
    .restart local p1    # "showUid":Z
    :pswitch_12d
    :try_start_12d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v11
    :try_end_135
    .catch Ljava/lang/RuntimeException; {:try_start_12d .. :try_end_135} :catch_f6

    .line 919
    .end local v15    # "defaultUserId":I
    .local v11, "defaultUserId":I
    move v15, v11

    move/from16 v11, p1

    goto :goto_171

    .line 914
    .end local v11    # "defaultUserId":I
    .restart local v15    # "defaultUserId":I
    :pswitch_139
    const/high16 v11, 0x40000000    # 2.0f

    or-int/2addr v5, v11

    .line 915
    const/4 v11, 0x1

    .line 916
    .end local v13    # "listApexOnly":Z
    .local v11, "listApexOnly":Z
    move v13, v11

    move/from16 v11, p1

    goto :goto_171

    .line 911
    .end local v11    # "listApexOnly":Z
    .restart local v13    # "listApexOnly":Z
    :pswitch_141
    const/4 v11, 0x1

    .line 912
    .end local v12    # "showVersionCode":Z
    .local v11, "showVersionCode":Z
    move v12, v11

    move/from16 v11, p1

    goto :goto_171

    .line 908
    .end local v11    # "showVersionCode":Z
    .restart local v12    # "showVersionCode":Z
    :pswitch_146
    const/4 v9, 0x1

    .line 909
    move/from16 v11, p1

    goto :goto_171

    .line 905
    :pswitch_14a
    or-int/lit16 v5, v5, 0x2000

    .line 906
    move/from16 v11, p1

    goto :goto_171

    .line 902
    :pswitch_14f
    const/4 v11, 0x1

    .line 903
    .end local p1    # "showUid":Z
    .local v11, "showUid":Z
    goto :goto_171

    .line 899
    .end local v11    # "showUid":Z
    .restart local p1    # "showUid":Z
    :pswitch_151
    const/4 v8, 0x1

    .line 900
    move/from16 v11, p1

    goto :goto_171

    .line 897
    :pswitch_155
    move/from16 v11, p1

    goto :goto_171

    .line 893
    :pswitch_158
    const/4 v10, 0x1

    .line 894
    move/from16 v11, p1

    goto :goto_171

    .line 890
    :pswitch_15c
    const/4 v4, 0x1

    .line 891
    move/from16 v11, p1

    goto :goto_171

    .line 886
    :pswitch_160
    const v11, 0x402000

    or-int/2addr v5, v11

    .line 887
    const/high16 v11, 0x20000000

    or-int/2addr v5, v11

    .line 888
    move/from16 v11, p1

    goto :goto_171

    .line 883
    :pswitch_16a
    const/4 v7, 0x1

    .line 884
    move/from16 v11, p1

    goto :goto_171

    .line 880
    :pswitch_16e
    const/4 v6, 0x1

    .line 881
    move/from16 v11, p1

    .line 926
    .end local p1    # "showUid":Z
    .restart local v11    # "showUid":Z
    :goto_171
    goto/16 :goto_28

    .line 925
    .end local v11    # "showUid":Z
    .restart local p1    # "showUid":Z
    :goto_173
    :try_start_173
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_176
    .catch Ljava/lang/RuntimeException; {:try_start_173 .. :try_end_176} :catch_19b

    move/from16 v17, v10

    .end local v10    # "listInstaller":Z
    .local v17, "listInstaller":Z
    :try_start_178
    const-string v10, "Error: Unknown option: "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_189
    .catch Ljava/lang/RuntimeException; {:try_start_178 .. :try_end_189} :catch_18b

    .line 926
    const/4 v10, -0x1

    return v10

    .line 929
    .end local v0    # "opt":Ljava/lang/String;
    :catch_18b
    move-exception v0

    move/from16 v11, p1

    move/from16 v33, v6

    move/from16 v35, v7

    move/from16 v34, v8

    move/from16 v23, v12

    move/from16 v18, v15

    move-object v6, v3

    goto/16 :goto_422

    .end local v17    # "listInstaller":Z
    .restart local v10    # "listInstaller":Z
    :catch_19b
    move-exception v0

    move/from16 v17, v10

    move/from16 v11, p1

    move/from16 v33, v6

    move/from16 v35, v7

    move/from16 v34, v8

    move/from16 v23, v12

    move/from16 v18, v15

    move-object v6, v3

    .end local v10    # "listInstaller":Z
    .restart local v17    # "listInstaller":Z
    goto/16 :goto_422

    .line 877
    .end local v17    # "listInstaller":Z
    .restart local v10    # "listInstaller":Z
    .restart local v16    # "opt":Ljava/lang/String;
    :cond_1ad
    move/from16 v17, v10

    move-object/from16 v0, v16

    .line 932
    .end local v10    # "listInstaller":Z
    .end local v16    # "opt":Ljava/lang/String;
    .restart local v17    # "listInstaller":Z
    nop

    .line 934
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, "filter":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v11, v10, [I

    const/4 v10, 0x0

    aput v15, v11, v10

    move-object v10, v11

    .line 937
    .local v10, "userIds":[I
    const/4 v11, -0x1

    if-ne v15, v11, :cond_1cc

    .line 938
    const-class v11, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/UserManagerInternal;

    .line 939
    .local v11, "umi":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v11}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v10

    .line 941
    .end local v11    # "umi":Lcom/android/server/pm/UserManagerInternal;
    :cond_1cc
    if-eqz p2, :cond_1d1

    .line 942
    const/high16 v11, 0x4000000

    or-int/2addr v5, v11

    .line 947
    :cond_1d1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 948
    .local v11, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move/from16 v18, v15

    .end local v15    # "defaultUserId":I
    .local v18, "defaultUserId":I
    array-length v15, v10

    move-object/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .local v19, "pw":Ljava/io/PrintWriter;
    :goto_1dc
    if-ge v3, v15, :cond_3c2

    move/from16 v20, v15

    aget v15, v10, v3

    .line 949
    .local v15, "userId":I
    nop

    .line 950
    move-object/from16 v21, v10

    .end local v10    # "userIds":[I
    .local v21, "userIds":[I
    const-string/jumbo v10, "runListPackages"

    move/from16 v22, v3

    const/4 v3, 0x0

    invoke-direct {v1, v15, v3, v10}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v10

    .line 951
    .local v10, "translatedUserId":I
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    move-object/from16 v24, v11

    move/from16 v23, v12

    .end local v11    # "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "showVersionCode":Z
    .local v23, "showVersionCode":Z
    .local v24, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    int-to-long v11, v5

    .line 952
    invoke-interface {v3, v11, v12, v10}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 953
    .local v3, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v11

    .line 955
    .local v11, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 956
    .local v12, "count":I
    const/16 v25, 0x0

    move-object/from16 v26, v3

    move/from16 v3, v25

    .local v3, "p":I
    .local v26, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :goto_208
    if-ge v3, v12, :cond_3a1

    .line 957
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move/from16 v27, v10

    .end local v10    # "translatedUserId":I
    .local v27, "translatedUserId":I
    move-object/from16 v10, v25

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 958
    .local v10, "info":Landroid/content/pm/PackageInfo;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v25

    .line 959
    .local v28, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_239

    move-object/from16 v25, v11

    .end local v11    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v25, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_23b

    .line 960
    move-object/from16 v30, v0

    move/from16 v38, v5

    move/from16 v33, v6

    move/from16 v35, v7

    move/from16 v34, v8

    move/from16 v29, v12

    move-object/from16 v8, v24

    const/16 v16, 0x1

    goto/16 :goto_38b

    .line 959
    .end local v25    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_239
    move-object/from16 v25, v11

    .line 962
    .end local v11    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v25    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_23b
    iget-boolean v11, v10, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 963
    .local v11, "isApex":Z
    move/from16 v29, v12

    const/4 v12, -0x1

    .end local v12    # "count":I
    .local v29, "count":I
    if-eq v14, v12, :cond_25a

    if-nez v11, :cond_25a

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v12, v14, :cond_25a

    .line 964
    move-object/from16 v30, v0

    move/from16 v38, v5

    move/from16 v33, v6

    move/from16 v35, v7

    move/from16 v34, v8

    move-object/from16 v8, v24

    const/16 v16, 0x1

    goto/16 :goto_38b

    .line 967
    :cond_25a
    if-nez v11, :cond_269

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v16, 0x1

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_26b

    move/from16 v12, v16

    goto :goto_26c

    :cond_269
    const/16 v16, 0x1

    :cond_26b
    const/4 v12, 0x0

    .line 969
    .local v12, "isSystem":Z
    :goto_26c
    if-nez v11, :cond_279

    move-object/from16 v30, v0

    .end local v0    # "filter":Ljava/lang/String;
    .local v30, "filter":Ljava/lang/String;
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_27b

    move/from16 v0, v16

    goto :goto_27c

    .end local v30    # "filter":Ljava/lang/String;
    .restart local v0    # "filter":Ljava/lang/String;
    :cond_279
    move-object/from16 v30, v0

    .end local v0    # "filter":Ljava/lang/String;
    .restart local v30    # "filter":Ljava/lang/String;
    :cond_27b
    const/4 v0, 0x0

    .line 970
    .local v0, "isEnabled":Z
    :goto_27c
    if-eqz v6, :cond_28d

    if-nez v0, :cond_281

    goto :goto_28d

    :cond_281
    move/from16 v38, v5

    move/from16 v33, v6

    move/from16 v35, v7

    move/from16 v34, v8

    move-object/from16 v8, v24

    goto/16 :goto_38b

    :cond_28d
    :goto_28d
    if-eqz v7, :cond_291

    if-eqz v0, :cond_281

    :cond_291
    if-eqz v8, :cond_295

    if-eqz v12, :cond_281

    :cond_295
    if-eqz v9, :cond_299

    if-nez v12, :cond_281

    :cond_299
    if-eqz v13, :cond_2a9

    if-nez v11, :cond_2a9

    .line 975
    move/from16 v38, v5

    move/from16 v33, v6

    move/from16 v35, v7

    move/from16 v34, v8

    move-object/from16 v8, v24

    goto/16 :goto_38b

    .line 978
    :cond_2a9
    const/16 v31, 0x0

    .line 979
    .local v31, "name":Ljava/lang/String;
    if-eqz p2, :cond_31c

    .line 980
    move/from16 v32, v0

    .end local v0    # "isEnabled":Z
    .local v32, "isEnabled":Z
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    move/from16 v33, v6

    .end local v6    # "listDisabled":Z
    .local v33, "listDisabled":Z
    iget-object v6, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move/from16 v35, v7

    move/from16 v34, v8

    .end local v7    # "listEnabled":Z
    .end local v8    # "listSystem":Z
    .local v34, "listSystem":Z
    .local v35, "listEnabled":Z
    int-to-long v7, v5

    .line 981
    invoke-interface {v0, v6, v7, v8, v15}, Landroid/content/pm/IPackageManager;->getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 984
    .local v0, "libsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v0, :cond_2c6

    .line 985
    move/from16 v38, v5

    move-object/from16 v8, v24

    goto/16 :goto_38b

    .line 987
    :cond_2c6
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    .line 988
    .local v6, "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    const/4 v7, 0x0

    .local v7, "l":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "lsize":I
    :goto_2cf
    if-ge v7, v8, :cond_30d

    .line 989
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/pm/SharedLibraryInfo;

    .line 990
    .local v36, "lib":Landroid/content/pm/SharedLibraryInfo;
    move-object/from16 v37, v0

    .end local v0    # "libsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v37, "libsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v0

    move/from16 v38, v5

    const/4 v5, 0x3

    .end local v5    # "getFlags":I
    .local v38, "getFlags":I
    if-ne v0, v5, :cond_304

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v39, v6

    .end local v6    # "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v39, "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 992
    goto :goto_313

    .line 990
    .end local v39    # "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :cond_304
    move-object/from16 v39, v6

    .line 988
    .end local v6    # "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v36    # "lib":Landroid/content/pm/SharedLibraryInfo;
    .restart local v39    # "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v37

    move/from16 v5, v38

    goto :goto_2cf

    .end local v37    # "libsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v38    # "getFlags":I
    .end local v39    # "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v0    # "libsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v5    # "getFlags":I
    .restart local v6    # "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :cond_30d
    move-object/from16 v37, v0

    move/from16 v38, v5

    move-object/from16 v39, v6

    .line 995
    .end local v0    # "libsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v5    # "getFlags":I
    .end local v6    # "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v7    # "l":I
    .end local v8    # "lsize":I
    .restart local v37    # "libsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v38    # "getFlags":I
    .restart local v39    # "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_313
    if-nez v31, :cond_319

    .line 996
    move-object/from16 v8, v24

    goto/16 :goto_38b

    .line 998
    .end local v37    # "libsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v39    # "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :cond_319
    move-object/from16 v0, v31

    goto :goto_328

    .line 999
    .end local v32    # "isEnabled":Z
    .end local v33    # "listDisabled":Z
    .end local v34    # "listSystem":Z
    .end local v35    # "listEnabled":Z
    .end local v38    # "getFlags":I
    .local v0, "isEnabled":Z
    .restart local v5    # "getFlags":I
    .local v6, "listDisabled":Z
    .local v7, "listEnabled":Z
    .local v8, "listSystem":Z
    :cond_31c
    move/from16 v32, v0

    move/from16 v38, v5

    move/from16 v33, v6

    move/from16 v35, v7

    move/from16 v34, v8

    .end local v0    # "isEnabled":Z
    .end local v5    # "getFlags":I
    .end local v6    # "listDisabled":Z
    .end local v7    # "listEnabled":Z
    .end local v8    # "listSystem":Z
    .restart local v32    # "isEnabled":Z
    .restart local v33    # "listDisabled":Z
    .restart local v34    # "listSystem":Z
    .restart local v35    # "listEnabled":Z
    .restart local v38    # "getFlags":I
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1002
    .end local v31    # "name":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    :goto_328
    move-object/from16 v5, v28

    .end local v28    # "stringBuilder":Ljava/lang/StringBuilder;
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    if-eqz v4, :cond_33b

    .line 1004
    iget-object v6, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    :cond_33b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    if-eqz v23, :cond_358

    .line 1009
    const-string v6, " versionCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    iget-object v6, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_351

    .line 1011
    iget-object v6, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v6, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_358

    .line 1013
    :cond_351
    invoke-virtual {v10}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1016
    :cond_358
    :goto_358
    if-eqz v17, :cond_36a

    .line 1017
    const-string v6, "  installer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v7, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    :cond_36a
    nop

    .line 1021
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda0;-><init>()V

    .line 1020
    move-object/from16 v8, v24

    .end local v24    # "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local v8, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v8, v6, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1023
    .local v6, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_38b

    if-nez v11, :cond_38b

    .line 1024
    iget-object v7, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    .end local v0    # "name":Ljava/lang/String;
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v11    # "isApex":Z
    .end local v12    # "isSystem":Z
    .end local v32    # "isEnabled":Z
    :cond_38b
    :goto_38b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v24, v8

    move-object/from16 v11, v25

    move/from16 v10, v27

    move/from16 v12, v29

    move-object/from16 v0, v30

    move/from16 v6, v33

    move/from16 v8, v34

    move/from16 v7, v35

    move/from16 v5, v38

    goto/16 :goto_208

    .end local v25    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v27    # "translatedUserId":I
    .end local v29    # "count":I
    .end local v30    # "filter":Ljava/lang/String;
    .end local v33    # "listDisabled":Z
    .end local v34    # "listSystem":Z
    .end local v35    # "listEnabled":Z
    .end local v38    # "getFlags":I
    .local v0, "filter":Ljava/lang/String;
    .local v5, "getFlags":I
    .local v6, "listDisabled":Z
    .restart local v7    # "listEnabled":Z
    .local v8, "listSystem":Z
    .local v10, "translatedUserId":I
    .local v11, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v12, "count":I
    .restart local v24    # "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_3a1
    move-object/from16 v30, v0

    move/from16 v38, v5

    move/from16 v33, v6

    move/from16 v35, v7

    move/from16 v34, v8

    move/from16 v27, v10

    move-object/from16 v25, v11

    move/from16 v29, v12

    move-object/from16 v8, v24

    const/16 v16, 0x1

    .line 948
    .end local v0    # "filter":Ljava/lang/String;
    .end local v3    # "p":I
    .end local v5    # "getFlags":I
    .end local v6    # "listDisabled":Z
    .end local v7    # "listEnabled":Z
    .end local v10    # "translatedUserId":I
    .end local v11    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v12    # "count":I
    .end local v15    # "userId":I
    .end local v24    # "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v26    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    .local v8, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v30    # "filter":Ljava/lang/String;
    .restart local v33    # "listDisabled":Z
    .restart local v34    # "listSystem":Z
    .restart local v35    # "listEnabled":Z
    .restart local v38    # "getFlags":I
    add-int/lit8 v3, v22, 0x1

    move-object v11, v8

    move/from16 v15, v20

    move-object/from16 v10, v21

    move/from16 v12, v23

    move/from16 v8, v34

    goto/16 :goto_1dc

    .line 1028
    .end local v21    # "userIds":[I
    .end local v23    # "showVersionCode":Z
    .end local v30    # "filter":Ljava/lang/String;
    .end local v33    # "listDisabled":Z
    .end local v34    # "listSystem":Z
    .end local v35    # "listEnabled":Z
    .end local v38    # "getFlags":I
    .restart local v0    # "filter":Ljava/lang/String;
    .restart local v5    # "getFlags":I
    .restart local v6    # "listDisabled":Z
    .restart local v7    # "listEnabled":Z
    .local v8, "listSystem":Z
    .local v10, "userIds":[I
    .local v11, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local v12, "showVersionCode":Z
    :cond_3c2
    move-object/from16 v30, v0

    move/from16 v38, v5

    move/from16 v33, v6

    move/from16 v35, v7

    move/from16 v34, v8

    move-object/from16 v21, v10

    move-object v8, v11

    move/from16 v23, v12

    .end local v0    # "filter":Ljava/lang/String;
    .end local v5    # "getFlags":I
    .end local v6    # "listDisabled":Z
    .end local v7    # "listEnabled":Z
    .end local v10    # "userIds":[I
    .end local v11    # "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "showVersionCode":Z
    .local v8, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v21    # "userIds":[I
    .restart local v23    # "showVersionCode":Z
    .restart local v30    # "filter":Ljava/lang/String;
    .restart local v33    # "listDisabled":Z
    .restart local v34    # "listSystem":Z
    .restart local v35    # "listEnabled":Z
    .restart local v38    # "getFlags":I
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_410

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1029
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v6, v19

    .end local v19    # "pw":Ljava/io/PrintWriter;
    .local v6, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1030
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1031
    .local v5, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_40a

    .line 1032
    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1033
    const-string v7, ","

    invoke-static {v7, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    :cond_40a
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 1036
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v19, v6

    goto :goto_3d9

    .line 1037
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v19    # "pw":Ljava/io/PrintWriter;
    :cond_410
    const/4 v0, 0x0

    return v0

    .line 929
    .end local v17    # "listInstaller":Z
    .end local v18    # "defaultUserId":I
    .end local v19    # "pw":Ljava/io/PrintWriter;
    .end local v21    # "userIds":[I
    .end local v23    # "showVersionCode":Z
    .end local v30    # "filter":Ljava/lang/String;
    .end local v33    # "listDisabled":Z
    .end local v34    # "listSystem":Z
    .end local v35    # "listEnabled":Z
    .end local v38    # "getFlags":I
    .local v3, "pw":Ljava/io/PrintWriter;
    .local v5, "getFlags":I
    .local v6, "listDisabled":Z
    .restart local v7    # "listEnabled":Z
    .local v8, "listSystem":Z
    .local v10, "listInstaller":Z
    .restart local v12    # "showVersionCode":Z
    .local v15, "defaultUserId":I
    :catch_412
    move-exception v0

    move/from16 v33, v6

    move/from16 v35, v7

    move/from16 v34, v8

    move/from16 v17, v10

    move/from16 v23, v12

    move/from16 v18, v15

    move-object v6, v3

    move/from16 v11, p1

    .line 930
    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v7    # "listEnabled":Z
    .end local v8    # "listSystem":Z
    .end local v10    # "listInstaller":Z
    .end local v12    # "showVersionCode":Z
    .end local v15    # "defaultUserId":I
    .end local p1    # "showUid":Z
    .local v0, "ex":Ljava/lang/RuntimeException;
    .local v6, "pw":Ljava/io/PrintWriter;
    .local v11, "showUid":Z
    .restart local v17    # "listInstaller":Z
    .restart local v18    # "defaultUserId":I
    .restart local v23    # "showVersionCode":Z
    .restart local v33    # "listDisabled":Z
    .restart local v34    # "listSystem":Z
    .restart local v35    # "listEnabled":Z
    :goto_422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 931
    const/4 v3, -0x1

    return v3

    :sswitch_data_43e
    .sparse-switch
        -0x1d6f426b -> :sswitch_e9
        0x5a6 -> :sswitch_dc
        0x5c8 -> :sswitch_d0
        0x5d4 -> :sswitch_c4
        0x5d7 -> :sswitch_b8
        0x5d8 -> :sswitch_ac
        0x5d9 -> :sswitch_9b
        0x5dc -> :sswitch_89
        0x5df -> :sswitch_7d
        0x5e6 -> :sswitch_71
        0x5e8 -> :sswitch_64
        0x2905ab0 -> :sswitch_57
        0x4f7b216b -> :sswitch_4a
        0x6bd72bd7 -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_478
    .packed-switch 0x0
        :pswitch_16e
        :pswitch_16a
        :pswitch_160
        :pswitch_15c
        :pswitch_158
        :pswitch_155
        :pswitch_151
        :pswitch_14f
        :pswitch_14a
        :pswitch_146
        :pswitch_141
        :pswitch_139
        :pswitch_12d
        :pswitch_110
    .end packed-switch
.end method

.method private runListPermissionGroups()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1041
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1042
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/permission/PermissionManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v1

    .line 1044
    .local v1, "pgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 1045
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_10
    if-ge v4, v3, :cond_26

    .line 1046
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionGroupInfo;

    .line 1047
    .local v5, "pgi":Landroid/content/pm/PermissionGroupInfo;
    const-string/jumbo v6, "permission group:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    iget-object v6, v5, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    .end local v5    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1050
    .end local v4    # "p":I
    :cond_26
    return v2
.end method

.method private runListPermissions()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1055
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 1056
    .local v1, "labels":Z
    const/4 v2, 0x0

    .line 1057
    .local v2, "groups":Z
    const/4 v3, 0x0

    .line 1058
    .local v3, "userOnly":Z
    const/4 v4, 0x0

    .line 1059
    .local v4, "summary":Z
    const/4 v5, 0x0

    .line 1061
    .local v5, "dangerousOnly":Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    .local v13, "opt":Ljava/lang/String;
    const/4 v14, 0x0

    if-eqz v6, :cond_74

    .line 1062
    const/4 v6, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_10a

    :cond_1a
    goto :goto_4c

    :sswitch_1b
    const-string v7, "-u"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v14, 0x4

    goto :goto_4d

    :sswitch_25
    const-string v7, "-s"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v14, 0x3

    goto :goto_4d

    :sswitch_2f
    const-string v7, "-g"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v14, 0x2

    goto :goto_4d

    :sswitch_39
    const-string v7, "-f"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    move v14, v8

    goto :goto_4d

    :sswitch_43
    const-string v7, "-d"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    goto :goto_4d

    :goto_4c
    move v14, v6

    :goto_4d
    packed-switch v14, :pswitch_data_120

    .line 1081
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    return v8

    .line 1078
    :pswitch_67
    const/4 v3, 0x1

    .line 1079
    goto :goto_73

    .line 1073
    :pswitch_69
    const/4 v2, 0x1

    .line 1074
    const/4 v1, 0x1

    .line 1075
    const/4 v4, 0x1

    .line 1076
    goto :goto_73

    .line 1070
    :pswitch_6d
    const/4 v2, 0x1

    .line 1071
    goto :goto_73

    .line 1067
    :pswitch_6f
    const/4 v1, 0x1

    .line 1068
    goto :goto_73

    .line 1064
    :pswitch_71
    const/4 v5, 0x1

    .line 1065
    nop

    .line 1082
    :goto_73
    goto :goto_9

    .line 1086
    :cond_74
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 1087
    .local v15, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_9e

    .line 1088
    move-object/from16 v12, p0

    iget-object v6, v12, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 1089
    invoke-virtual {v6, v14}, Landroid/permission/PermissionManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v6

    .line 1090
    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1091
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_89
    if-ge v8, v7, :cond_99

    .line 1092
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PermissionGroupInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    add-int/lit8 v8, v8, 0x1

    goto :goto_89

    .line 1094
    .end local v8    # "i":I
    :cond_99
    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    .end local v7    # "count":I
    goto :goto_a7

    .line 1096
    :cond_9e
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 1097
    .local v6, "grp":Ljava/lang/String;
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    .end local v6    # "grp":Ljava/lang/String;
    :goto_a7
    const-string v11, ""

    if-eqz v5, :cond_db

    .line 1101
    const-string v6, "Dangerous Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    move-object v14, v11

    move/from16 v11, v16

    move/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 1106
    if-eqz v3, :cond_107

    .line 1107
    const-string v6, "Normal Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_107

    .line 1113
    :cond_db
    move-object v14, v11

    if-eqz v3, :cond_f2

    .line 1114
    const-string v6, "Dangerous and Normal Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_107

    .line 1120
    :cond_f2
    const-string v6, "All Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    const/16 v11, -0x2710

    const/16 v12, 0x2710

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 1125
    :cond_107
    :goto_107
    const/4 v6, 0x0

    return v6

    nop

    :sswitch_data_10a
    .sparse-switch
        0x5d7 -> :sswitch_43
        0x5d9 -> :sswitch_39
        0x5da -> :sswitch_2f
        0x5e6 -> :sswitch_25
        0x5e8 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_71
        :pswitch_6f
        :pswitch_6d
        :pswitch_69
        :pswitch_67
    .end packed-switch
.end method

.method private runListSdks()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 860
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(ZZ)I

    move-result v0

    return v0
.end method

.method private runListStagedSessions()I
    .registers 8

    .line 1153
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    .line 1154
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "  "

    const/16 v3, 0x78

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 1155
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_d
    new-instance v1, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$SessionDump-IA;)V

    .line 1157
    .local v1, "sessionDump":Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, -0x1

    if-eqz v2, :cond_3c

    .line 1158
    invoke-direct {p0, v3, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->setSessionFlag(Ljava/lang/String;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_8b

    .line 1160
    nop

    .line 1175
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    .line 1160
    return v4

    .line 1165
    :cond_3c
    :try_start_3c
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1166
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/IPackageInstaller;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 1167
    .local v2, "stagedSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->printSessionList(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_4d} :catch_53
    .catchall {:try_start_3c .. :try_end_4d} :catchall_8b

    .line 1173
    .end local v2    # "stagedSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    nop

    .line 1174
    const/4 v2, 0x1

    .line 1175
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    .line 1174
    return v2

    .line 1168
    :catch_53
    move-exception v2

    .line 1169
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1170
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1171
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1169
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_54 .. :try_end_86} :catchall_8b

    .line 1172
    nop

    .line 1175
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    .line 1172
    return v4

    .line 1153
    .end local v1    # "sessionDump":Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "opt":Ljava/lang/String;
    :catchall_8b
    move-exception v1

    :try_start_8c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_94

    :catchall_90
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_94
    throw v1
.end method

.method private runLogVisibility()I
    .registers 8

    .line 441
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 442
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    .line 445
    .local v1, "enable":Z
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_49

    .line 446
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_66

    :cond_15
    goto :goto_29

    :sswitch_16
    const-string v2, "--enable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_2a

    :sswitch_1f
    const-string v2, "--disable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v4, 0x0

    goto :goto_2a

    :goto_29
    move v4, v5

    :goto_2a
    packed-switch v4, :pswitch_data_70

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    return v5

    .line 451
    :pswitch_44
    const/4 v1, 0x1

    .line 452
    goto :goto_48

    .line 448
    :pswitch_46
    const/4 v1, 0x0

    .line 449
    nop

    .line 455
    :goto_48
    goto :goto_5

    .line 459
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_5b

    .line 461
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    .line 462
    invoke-virtual {v5, v2, v1}, Landroid/content/pm/PackageManagerInternal;->setVisibilityLogging(Ljava/lang/String;Z)V

    .line 467
    return v4

    .line 464
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "Error: no package specified"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    return v5

    nop

    :sswitch_data_66
    .sparse-switch
        -0x49c576b8 -> :sswitch_1f
        0x41a27323 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_46
        :pswitch_44
    .end packed-switch
.end method

.method private runLogging(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 385
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "cmd":Ljava/lang/String;
    const-string v1, "enable-text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "disable-text"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 387
    const-string v1, "Error: wrong args , must be enable-text or disable-text"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    return-void

    .line 390
    :cond_1a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 392
    .local v1, "enable":Z
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "config":Ljava/lang/String;
    if-eqz v2, :cond_29

    .line 393
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerDebugUtils;->updatePackageManagerDebugState(Ljava/lang/String;Z)Z

    goto :goto_1e

    .line 395
    :cond_29
    return-void
.end method

.method private runPath()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 686
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 689
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_28

    .line 691
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no package specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    const/4 v3, 0x1

    return v3

    .line 694
    :cond_28
    const/16 v3, -0x2710

    .line 695
    const-string/jumbo v4, "runPath"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v3

    .line 696
    .local v3, "translatedUserId":I
    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result v4

    return v4
.end method

.method private runQueryIntentActivities()I
    .registers 11

    .line 1309
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v1
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_95

    .line 1312
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 1314
    :try_start_5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    int-to-long v3, v3

    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1315
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1316
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1317
    .local v2, "pw":Ljava/io/PrintWriter;
    if-eqz v0, :cond_84

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_25

    goto :goto_84

    .line 1320
    :cond_25
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_63

    .line 1321
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " activities found:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1323
    .local v5, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_62

    .line 1324
    const-string v4, "  Activity #"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    const-string v6, "    "

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1323
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 1327
    .end local v3    # "i":I
    .end local v5    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_62
    goto :goto_89

    .line 1328
    :cond_63
    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1329
    .local v4, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v3, 0x0

    move v9, v3

    .local v9, "i":I
    :goto_6a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_89

    .line 1330
    const-string v5, ""

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1329
    add-int/lit8 v9, v9, 0x1

    goto :goto_6a

    .line 1318
    .end local v4    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v9    # "i":I
    :cond_84
    :goto_84
    const-string v3, "No activities found"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_89} :catch_8c

    .line 1336
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_89
    :goto_89
    nop

    .line 1337
    const/4 v0, 0x0

    return v0

    .line 1334
    :catch_8c
    move-exception v0

    .line 1335
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1310
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_95
    move-exception v0

    .line 1311
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runQueryIntentReceivers()I
    .registers 11

    .line 1377
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v1
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_95

    .line 1380
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 1382
    :try_start_5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    int-to-long v3, v3

    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1383
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1384
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1385
    .local v2, "pw":Ljava/io/PrintWriter;
    if-eqz v0, :cond_84

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_25

    goto :goto_84

    .line 1388
    :cond_25
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_63

    .line 1389
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " receivers found:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1391
    .local v5, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_62

    .line 1392
    const-string v4, "  Receiver #"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    const-string v6, "    "

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1391
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 1395
    .end local v3    # "i":I
    .end local v5    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_62
    goto :goto_89

    .line 1396
    :cond_63
    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1397
    .local v4, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v3, 0x0

    move v9, v3

    .local v9, "i":I
    :goto_6a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_89

    .line 1398
    const-string v5, ""

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1397
    add-int/lit8 v9, v9, 0x1

    goto :goto_6a

    .line 1386
    .end local v4    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v9    # "i":I
    :cond_84
    :goto_84
    const-string v3, "No receivers found"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_89} :catch_8c

    .line 1404
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_89
    :goto_89
    nop

    .line 1405
    const/4 v0, 0x0

    return v0

    .line 1402
    :catch_8c
    move-exception v0

    .line 1403
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1378
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_95
    move-exception v0

    .line 1379
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runQueryIntentServices()I
    .registers 11

    .line 1343
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v1
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_95

    .line 1346
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 1348
    :try_start_5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    int-to-long v3, v3

    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1349
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1350
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1351
    .local v2, "pw":Ljava/io/PrintWriter;
    if-eqz v0, :cond_84

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_25

    goto :goto_84

    .line 1354
    :cond_25
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_63

    .line 1355
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " services found:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1357
    .local v5, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_62

    .line 1358
    const-string v4, "  Service #"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    const-string v6, "    "

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1357
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 1361
    .end local v3    # "i":I
    .end local v5    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_62
    goto :goto_89

    .line 1362
    :cond_63
    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1363
    .local v4, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v3, 0x0

    move v9, v3

    .local v9, "i":I
    :goto_6a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_89

    .line 1364
    const-string v5, ""

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 1363
    add-int/lit8 v9, v9, 0x1

    goto :goto_6a

    .line 1352
    .end local v4    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v9    # "i":I
    :cond_84
    :goto_84
    const-string v3, "No services found"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_89} :catch_8c

    .line 1370
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_89
    :goto_89
    nop

    .line 1371
    const/4 v0, 0x0

    return v0

    .line 1368
    :catch_8c
    move-exception v0

    .line 1369
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1344
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_95
    move-exception v0

    .line 1345
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runRemoveSplits(Ljava/lang/String;Ljava/util/Collection;)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2247
    .local p2, "splitNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2248
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 2249
    .local v1, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    iget v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2250
    iput-object p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2251
    nop

    .line 2252
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    .line 2253
    .local v2, "sessionId":I
    const/4 v3, 0x1

    .line 2255
    .local v3, "abandonSession":Z
    const/4 v4, 0x0

    :try_start_1a
    invoke-direct {p0, v2, p2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplits(ILjava/util/Collection;Z)I

    move-result v5
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_48

    const/4 v6, 0x1

    if-eqz v5, :cond_2a

    .line 2257
    nop

    .line 2267
    if-eqz v3, :cond_29

    .line 2269
    :try_start_24
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    .line 2271
    goto :goto_29

    .line 2270
    :catch_28
    move-exception v4

    .line 2257
    :cond_29
    :goto_29
    return v6

    .line 2259
    :cond_2a
    :try_start_2a
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v5
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_48

    if-eqz v5, :cond_39

    .line 2261
    nop

    .line 2267
    if-eqz v3, :cond_38

    .line 2269
    :try_start_33
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    .line 2271
    goto :goto_38

    .line 2270
    :catch_37
    move-exception v4

    .line 2261
    :cond_38
    :goto_38
    return v6

    .line 2263
    :cond_39
    const/4 v3, 0x0

    .line 2264
    :try_start_3a
    const-string v5, "Success"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_48

    .line 2265
    nop

    .line 2267
    if-eqz v3, :cond_47

    .line 2269
    :try_start_42
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    .line 2271
    goto :goto_47

    .line 2270
    :catch_46
    move-exception v5

    .line 2265
    :cond_47
    :goto_47
    return v4

    .line 2267
    :catchall_48
    move-exception v5

    if-eqz v3, :cond_50

    .line 2269
    :try_start_4b
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 2271
    goto :goto_50

    .line 2270
    :catch_4f
    move-exception v4

    .line 2273
    :cond_50
    :goto_50
    throw v5
.end method

.method private runResetPermissions()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2573
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->resetRuntimePermissions()V

    .line 2574
    const/4 v0, 0x0

    return v0
.end method

.method private runResolveActivity()I
    .registers 10

    .line 1286
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v1
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_3d

    .line 1289
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 1291
    :try_start_5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    int-to-long v3, v3

    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1293
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    move-object v8, v2

    .line 1294
    .local v8, "pw":Ljava/io/PrintWriter;
    if-nez v0, :cond_21

    .line 1295
    const-string v2, "No activity found"

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_31

    .line 1297
    :cond_21
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, v8}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1298
    .local v3, "pr":Landroid/util/PrintWriterPrinter;
    const-string v4, ""

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v2, p0

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_31} :catch_34

    .line 1302
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "pw":Ljava/io/PrintWriter;
    :goto_31
    nop

    .line 1303
    const/4 v0, 0x0

    return v0

    .line 1300
    :catch_34
    move-exception v0

    .line 1301
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1287
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_3d
    move-exception v0

    .line 1288
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runRollbackApp()I
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 550
    .local v2, "pw":Ljava/io/PrintWriter;
    const-wide/32 v3, 0xea60

    .line 551
    .local v3, "stagedReadyTimeoutMs":J
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .local v5, "opt":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v0, :cond_4a

    .line 552
    const/4 v0, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_126

    :cond_19
    goto :goto_23

    :pswitch_1a
    const-string v7, "--staged-ready-timeout"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_24

    :goto_23
    move v6, v0

    :goto_24
    packed-switch v6, :pswitch_data_12c

    .line 557
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :pswitch_40
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 555
    nop

    .line 557
    goto :goto_9

    .line 560
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 561
    .local v7, "packageName":Ljava/lang/String;
    const/4 v0, 0x1

    if-nez v7, :cond_57

    .line 562
    const-string v6, "Error: package name not specified"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    return v0

    .line 568
    :cond_57
    :try_start_57
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    const-string v9, "com.android.shell"

    .line 569
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    .line 568
    invoke-virtual {v8, v9, v6, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v8
    :try_end_63
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_57 .. :try_end_63} :catch_11f

    .line 573
    .local v8, "shellPackageContext":Landroid/content/Context;
    nop

    .line 575
    new-instance v9, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver-IA;)V

    .line 576
    .local v9, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    const-class v10, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/rollback/RollbackManager;

    .line 577
    .local v10, "rm":Landroid/content/rollback/RollbackManager;
    const/4 v11, 0x0

    .line 578
    .local v11, "rollback":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v10}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ac

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/rollback/RollbackInfo;

    .line 579
    .local v13, "r":Landroid/content/rollback/RollbackInfo;
    invoke-virtual {v13}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_aa

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/rollback/PackageRollbackInfo;

    .line 580
    .local v15, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 581
    move-object v6, v13

    .line 582
    .end local v11    # "rollback":Landroid/content/rollback/RollbackInfo;
    .local v6, "rollback":Landroid/content/rollback/RollbackInfo;
    move-object v11, v6

    goto :goto_aa

    .line 584
    .end local v6    # "rollback":Landroid/content/rollback/RollbackInfo;
    .end local v15    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .restart local v11    # "rollback":Landroid/content/rollback/RollbackInfo;
    :cond_a8
    const/4 v6, 0x0

    goto :goto_8f

    .line 585
    .end local v13    # "r":Landroid/content/rollback/RollbackInfo;
    :cond_aa
    :goto_aa
    const/4 v6, 0x0

    goto :goto_7b

    .line 587
    :cond_ac
    if-nez v11, :cond_c5

    .line 588
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No available rollbacks for: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    return v0

    .line 592
    :cond_c5
    invoke-virtual {v11}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v6

    .line 593
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v13

    .line 592
    invoke-virtual {v10, v6, v12, v13}, Landroid/content/rollback/RollbackManager;->commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V

    .line 595
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v6

    .line 596
    .local v6, "result":Landroid/content/Intent;
    const-string v12, "android.content.rollback.extra.STATUS"

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 599
    .local v12, "status":I
    if-eqz v12, :cond_103

    .line 600
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 601
    const-string v14, "android.content.rollback.extra.STATUS_MESSAGE"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 600
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    return v0

    .line 605
    :cond_103
    invoke-virtual {v11}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_118

    const-wide/16 v13, 0x0

    cmp-long v0, v3, v13

    if-lez v0, :cond_118

    .line 606
    invoke-virtual {v11}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v0

    .line 607
    .local v0, "committedSessionId":I
    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    move-result v13

    return v13

    .line 610
    .end local v0    # "committedSessionId":I
    :cond_118
    const-string v0, "Success"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x0

    return v0

    .line 570
    .end local v6    # "result":Landroid/content/Intent;
    .end local v8    # "shellPackageContext":Landroid/content/Context;
    .end local v9    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .end local v10    # "rm":Landroid/content/rollback/RollbackManager;
    .end local v11    # "rollback":Landroid/content/rollback/RollbackInfo;
    .end local v12    # "status":I
    :catch_11f
    move-exception v0

    .line 572
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :pswitch_data_126
    .packed-switch -0x9723f90
        :pswitch_1a
    .end packed-switch

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_40
    .end packed-switch
.end method

.method private runSetDistractingRestriction()I
    .registers 11

    .line 2411
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2412
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2414
    .local v1, "userId":I
    const/4 v2, 0x0

    .line 2415
    .local v2, "flags":I
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_93

    .line 2416
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_e2

    :cond_17
    goto :goto_2c

    :sswitch_18
    const-string v3, "--user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v3, v5

    goto :goto_2d

    :sswitch_22
    const-string v3, "--flag"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v3, v6

    goto :goto_2d

    :goto_2c
    move v3, v7

    :goto_2d
    packed-switch v3, :pswitch_data_ec

    .line 2435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2436
    return v6

    .line 2421
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 2422
    .local v3, "flag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_f4

    :cond_52
    goto :goto_66

    :sswitch_53
    const-string v5, "hide-from-suggestions"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    move v5, v6

    goto :goto_67

    :sswitch_5d
    const-string v8, "hide-notifications"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    goto :goto_67

    :goto_66
    move v5, v7

    :goto_67
    packed-switch v5, :pswitch_data_fe

    .line 2430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized flag: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2431
    return v6

    .line 2427
    :pswitch_81
    or-int/lit8 v2, v2, 0x1

    .line 2428
    goto :goto_87

    .line 2424
    :pswitch_84
    or-int/lit8 v2, v2, 0x2

    .line 2425
    nop

    .line 2433
    :goto_87
    goto :goto_91

    .line 2418
    .end local v3    # "flag":Ljava/lang/String;
    :pswitch_88
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 2419
    nop

    .line 2436
    :goto_91
    goto/16 :goto_6

    .line 2440
    :cond_93
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v3

    .line 2441
    .local v3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 2442
    const-string v5, "Error: package name not specified"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2443
    return v6

    .line 2446
    :cond_a3
    const/16 v7, -0x2710

    :try_start_a5
    const-string/jumbo v8, "set-distracting"

    invoke-direct {p0, v1, v7, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v7

    .line 2448
    .local v7, "translatedUserId":I
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    new-array v9, v5, [Ljava/lang/String;

    .line 2449
    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 2448
    invoke-interface {v8, v9, v2, v7}, Landroid/content/pm/IPackageManager;->setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v8

    .line 2450
    .local v8, "errored":[Ljava/lang/String;
    array-length v9, v8

    if-lez v9, :cond_d8

    .line 2451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not set restriction for: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_d7} :catch_d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a5 .. :try_end_d7} :catch_d9

    .line 2452
    return v6

    .line 2454
    :cond_d8
    return v5

    .line 2455
    .end local v7    # "translatedUserId":I
    .end local v8    # "errored":[Ljava/lang/String;
    :catch_d9
    move-exception v5

    .line 2456
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2457
    return v6

    :sswitch_data_e2
    .sparse-switch
        0x4f74350c -> :sswitch_22
        0x4f7b216b -> :sswitch_18
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_88
        :pswitch_47
    .end packed-switch

    :sswitch_data_f4
    .sparse-switch
        -0x7eb17863 -> :sswitch_5d
        -0x6e6b7989 -> :sswitch_53
    .end sparse-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_84
        :pswitch_81
    .end packed-switch
.end method

.method private runSetEnabledSetting(I)I
    .registers 15
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2360
    const/4 v0, 0x0

    .line 2361
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 2362
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2363
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2366
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    .line 2367
    .local v8, "pkg":Ljava/lang/String;
    if-nez v8, :cond_28

    .line 2368
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no package or component specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2369
    const/4 v2, 0x1

    return v2

    .line 2371
    :cond_28
    const/16 v2, -0x2710

    .line 2372
    const-string/jumbo v3, "runSetEnabledSetting"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v9

    .line 2373
    .local v9, "translatedUserId":I
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 2374
    .local v10, "cn":Landroid/content/ComponentName;
    const-string v11, " new state: "

    const/4 v12, 0x0

    if-nez v10, :cond_88

    .line 2375
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shell:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2376
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2375
    move-object v3, v8

    move v4, p1

    move v6, v9

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 2377
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2379
    invoke-interface {v4, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v4

    .line 2378
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2377
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2380
    return v12

    .line 2382
    :cond_88
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v10, p1, v12, v9}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 2383
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2385
    invoke-interface {v4, v10, v9}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v4

    .line 2384
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2383
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2386
    return v12
.end method

.method private runSetHarmfulAppWarning()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3339
    const/4 v0, -0x2

    .line 3342
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 3343
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3344
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 3346
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3347
    const/4 v1, -0x1

    return v1

    .line 3351
    :cond_35
    const/16 v1, -0x2710

    .line 3352
    const-string/jumbo v3, "runSetHarmfulAppWarning"

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v1

    .line 3353
    .local v1, "translatedUserId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 3354
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 3356
    .local v4, "warning":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3, v4, v1}, Landroid/content/pm/IPackageManager;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 3358
    const/4 v5, 0x0

    return v5
.end method

.method private runSetHiddenSetting(Z)I
    .registers 9
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2391
    const/4 v0, 0x0

    .line 2392
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 2393
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2394
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2397
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2398
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_28

    .line 2399
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no package or component specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2400
    const/4 v3, 0x1

    return v3

    .line 2402
    :cond_28
    const/16 v3, -0x2710

    .line 2403
    const-string/jumbo v4, "runSetHiddenSetting"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v3

    .line 2404
    .local v3, "translatedUserId":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v2, p1, v3}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    .line 2405
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new hidden state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2406
    invoke-interface {v6, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2405
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2407
    const/4 v4, 0x0

    return v4
.end method

.method private runSetHomeActivity()I
    .registers 19

    .line 3228
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 3229
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    move v3, v0

    .line 3231
    .local v3, "userId":I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_48

    .line 3232
    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_c4

    :cond_19
    goto :goto_23

    :pswitch_1a
    const-string v7, "--user"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_24

    :goto_23
    move v5, v0

    :goto_24
    packed-switch v5, :pswitch_data_ca

    .line 3237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3238
    return v6

    .line 3234
    :pswitch_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 3235
    nop

    .line 3238
    goto :goto_8

    .line 3243
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 3244
    .local v7, "component":Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_57

    .line 3246
    move-object v0, v7

    move-object v8, v0

    .local v0, "pkgName":Ljava/lang/String;
    goto :goto_6b

    .line 3249
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_57
    if-eqz v7, :cond_5e

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    .line 3250
    .local v0, "componentName":Landroid/content/ComponentName;
    :goto_5f
    if-nez v0, :cond_67

    .line 3251
    const-string v5, "Error: invalid component name"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3252
    return v6

    .line 3254
    :cond_67
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3256
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .local v8, "pkgName":Ljava/lang/String;
    :goto_6b
    const/16 v0, -0x2710

    .line 3257
    const-string/jumbo v9, "runSetHomeActivity"

    invoke-direct {v1, v3, v0, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v16

    .line 3258
    .local v16, "translatedUserId":I
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v15, v0

    .line 3260
    .local v15, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    :try_start_7a
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    const-class v9, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/role/RoleManager;

    .line 3261
    .local v9, "roleManager":Landroid/app/role/RoleManager;
    const-string v10, "android.app.role.HOME"

    const/4 v12, 0x0

    .line 3262
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v14

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v0, v15}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_98} :catch_b9

    .line 3261
    move-object v11, v8

    move-object/from16 v17, v15

    .end local v15    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .local v17, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    move-object v15, v0

    :try_start_9c
    invoke-virtual/range {v9 .. v15}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3263
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3264
    .local v0, "success":Z
    if-eqz v0, :cond_b1

    .line 3265
    const-string v10, "Success"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3266
    return v5

    .line 3268
    :cond_b1
    const-string v5, "Error: Failed to set default home."

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_b6} :catch_b7

    .line 3269
    return v6

    .line 3271
    .end local v0    # "success":Z
    .end local v9    # "roleManager":Landroid/app/role/RoleManager;
    :catch_b7
    move-exception v0

    goto :goto_bc

    .end local v17    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .restart local v15    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    :catch_b9
    move-exception v0

    move-object/from16 v17, v15

    .line 3272
    .end local v15    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    :goto_bc
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3273
    return v6

    :pswitch_data_c4
    .packed-switch 0x4f7b216b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_3e
    .end packed-switch
.end method

.method private runSetInstallLocation()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1707
    const-string v0, "Error: install location has to be a number."

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 1708
    .local v1, "arg":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_13

    .line 1709
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "Error: no install location specified."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    return v2

    .line 1713
    :cond_13
    :try_start_13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_2a

    .line 1717
    .local v3, "loc":I
    nop

    .line 1718
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->setInstallLocation(I)Z

    move-result v4

    if-nez v4, :cond_28

    .line 1719
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    return v2

    .line 1722
    :cond_28
    const/4 v0, 0x0

    return v0

    .line 1714
    .end local v3    # "loc":I
    :catch_2a
    move-exception v3

    .line 1715
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1716
    return v2
.end method

.method private runSetInstaller()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3278
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 3279
    .local v0, "targetPackage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 3281
    .local v1, "installerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_1d

    if-nez v1, :cond_d

    goto :goto_1d

    .line 3286
    :cond_d
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0, v1}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 3287
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Success"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3288
    const/4 v2, 0x0

    return v2

    .line 3282
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Must provide both target and installer package names"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3283
    const/4 v2, 0x1

    return v2
.end method

.method private runSetPermissionEnforced()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2622
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2623
    .local v0, "permission":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 2624
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no permission specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    return v1

    .line 2627
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2628
    .local v2, "enforcedRaw":Ljava/lang/String;
    if-nez v2, :cond_21

    .line 2629
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no enforcement specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2630
    return v1

    .line 2633
    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method private runSetSilentUpdatesPolicy()I
    .registers 13

    .line 3387
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3389
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 3390
    .local v1, "installerPackageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3391
    .local v2, "throttleTimeInSeconds":Ljava/lang/Long;
    const/4 v3, 0x0

    .line 3392
    .local v3, "reset":Z
    :goto_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "opt":Ljava/lang/String;
    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eqz v4, :cond_65

    .line 3393
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_de

    :cond_17
    goto :goto_35

    :sswitch_18
    const-string v4, "--allow-unlimited-silent-updates"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v6, 0x0

    goto :goto_36

    :sswitch_22
    const-string v4, "--throttle-time"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_36

    :sswitch_2b
    const-string v4, "--reset"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v6, 0x2

    goto :goto_36

    :goto_35
    move v6, v7

    :goto_36
    packed-switch v6, :pswitch_data_ec

    .line 3404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3405
    return v7

    .line 3401
    :pswitch_50
    const/4 v3, 0x1

    .line 3402
    goto :goto_64

    .line 3398
    :pswitch_52
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3399
    goto :goto_64

    .line 3395
    :pswitch_5f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 3396
    nop

    .line 3405
    :goto_64
    goto :goto_7

    .line 3408
    :cond_65
    if-eqz v2, :cond_88

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-gez v4, :cond_88

    .line 3409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Invalid value for \"--throttle-time\":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3410
    return v7

    .line 3414
    :cond_88
    :try_start_88
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4

    .line 3415
    .local v4, "installer":Landroid/content/pm/IPackageInstaller;
    if-eqz v3, :cond_9a

    .line 3416
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/content/pm/IPackageInstaller;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    .line 3417
    const-wide/16 v8, -0x1

    invoke-interface {v4, v8, v9}, Landroid/content/pm/IPackageInstaller;->setSilentUpdatesThrottleTime(J)V

    goto :goto_a8

    .line 3419
    :cond_9a
    if-eqz v1, :cond_9f

    .line 3420
    invoke-interface {v4, v1}, Landroid/content/pm/IPackageInstaller;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    .line 3422
    :cond_9f
    if-eqz v2, :cond_a8

    .line 3423
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v4, v8, v9}, Landroid/content/pm/IPackageInstaller;->setSilentUpdatesThrottleTime(J)V
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_a8} :catch_aa

    .line 3431
    .end local v4    # "installer":Landroid/content/pm/IPackageInstaller;
    :cond_a8
    :goto_a8
    nop

    .line 3432
    return v6

    .line 3426
    :catch_aa
    move-exception v4

    .line 3427
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3428
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3429
    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3427
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3430
    return v7

    :sswitch_data_de
    .sparse-switch
        -0x60476451 -> :sswitch_2b
        0x2dfd71f0 -> :sswitch_22
        0x3bbbf162 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_52
        :pswitch_50
    .end packed-switch
.end method

.method private runSnapshotProfile()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2038
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 2041
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 2042
    .local v9, "packageName":Ljava/lang/String;
    const-string v0, "android"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2044
    .local v10, "isBootImage":Z
    const/4 v0, 0x0

    .line 2046
    .local v0, "codePath":Ljava/lang/String;
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .local v11, "opt":Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, -0x1

    if-eqz v3, :cond_54

    .line 2047
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_172

    :cond_21
    goto :goto_2b

    :pswitch_22
    const-string v3, "--code-path"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_2c

    :goto_2b
    move v12, v13

    :goto_2c
    packed-switch v12, :pswitch_data_178

    .line 2056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown arg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 2057
    return v13

    .line 2049
    :pswitch_46
    if-eqz v10, :cond_4e

    .line 2050
    const-string v3, "--code-path cannot be used for the boot image."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 2051
    return v13

    .line 2053
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2054
    nop

    .line 2057
    goto :goto_11

    .line 2062
    :cond_54
    const/4 v3, 0x0

    .line 2063
    .local v3, "baseCodePath":Ljava/lang/String;
    if-nez v10, :cond_87

    .line 2064
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v9, v5, v6, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2066
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_78

    .line 2067
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 2068
    return v13

    .line 2070
    :cond_78
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    .line 2071
    if-nez v0, :cond_84

    .line 2072
    move-object v0, v3

    move-object v14, v0

    move-object v15, v3

    goto :goto_89

    .line 2071
    :cond_84
    move-object v14, v0

    move-object v15, v3

    goto :goto_89

    .line 2063
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_87
    move-object v14, v0

    move-object v15, v3

    .line 2077
    .end local v0    # "codePath":Ljava/lang/String;
    .end local v3    # "baseCodePath":Ljava/lang/String;
    .local v14, "codePath":Ljava/lang/String;
    .local v15, "baseCodePath":Ljava/lang/String;
    :goto_89
    new-instance v7, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback-IA;)V

    .line 2079
    .local v7, "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_99

    .line 2080
    const-string/jumbo v0, "root"

    goto :goto_9b

    :cond_99
    const-string v0, "com.android.shell"

    :goto_9b
    move-object v8, v0

    .line 2081
    .local v8, "callingPackage":Ljava/lang/String;
    if-eqz v10, :cond_a0

    .line 2082
    const/4 v0, 0x1

    goto :goto_a1

    :cond_a0
    move v0, v12

    :goto_a1
    move v6, v0

    .line 2083
    .local v6, "profileType":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v0

    invoke-interface {v0, v6, v8}, Landroid/content/pm/dex/IArtManager;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 2084
    const-string v0, "Error: Runtime profiling is not enabled"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2085
    return v13

    .line 2087
    :cond_b4
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v3

    move v4, v6

    move-object v5, v9

    move/from16 v16, v6

    .end local v6    # "profileType":I
    .local v16, "profileType":I
    move-object v6, v14

    move-object/from16 v17, v8

    .end local v8    # "callingPackage":Ljava/lang/String;
    .local v17, "callingPackage":Ljava/lang/String;
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/dex/IArtManager;->snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    .line 2089
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->waitTillDone()Z

    move-result v0

    if-nez v0, :cond_d4

    .line 2090
    const-string v0, "Error: callback not called"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->-$$Nest$fgetmErrCode(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)I

    move-result v0

    return v0

    .line 2095
    :cond_d4
    :try_start_d4
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->-$$Nest$fgetmProfileReadFd(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_dd} :catch_153
    .catch Landroid/system/ErrnoException; {:try_start_d4 .. :try_end_dd} :catch_153

    move-object v3, v0

    .line 2096
    .local v3, "inStream":Ljava/io/InputStream;
    if-nez v10, :cond_104

    :try_start_e0
    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    goto :goto_104

    .line 2097
    :cond_e7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_106

    :cond_104
    :goto_104
    const-string v0, ""

    :goto_106
    move-object v4, v0

    .line 2098
    .local v4, "outputFileSuffix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/misc/profman/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".prof"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 2100
    .local v5, "outputProfilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_12a
    .catchall {:try_start_e0 .. :try_end_12a} :catchall_147

    move-object v6, v0

    .line 2101
    .local v6, "outStream":Ljava/io/OutputStream;
    :try_start_12b
    invoke-static {v3, v6}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_12e
    .catchall {:try_start_12b .. :try_end_12e} :catchall_13b

    .line 2102
    :try_start_12e
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 2104
    .end local v6    # "outStream":Ljava/io/OutputStream;
    const/16 v0, 0x1a4

    invoke-static {v5, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_136
    .catchall {:try_start_12e .. :try_end_136} :catchall_147

    .line 2105
    .end local v4    # "outputFileSuffix":Ljava/lang/String;
    .end local v5    # "outputProfilePath":Ljava/lang/String;
    :try_start_136
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_153
    .catch Landroid/system/ErrnoException; {:try_start_136 .. :try_end_139} :catch_153

    .line 2109
    .end local v3    # "inStream":Ljava/io/InputStream;
    nop

    .line 2110
    return v12

    .line 2100
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "outputFileSuffix":Ljava/lang/String;
    .restart local v5    # "outputProfilePath":Ljava/lang/String;
    .restart local v6    # "outStream":Ljava/io/OutputStream;
    :catchall_13b
    move-exception v0

    move-object v8, v0

    :try_start_13d
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_140
    .catchall {:try_start_13d .. :try_end_140} :catchall_141

    goto :goto_146

    :catchall_141
    move-exception v0

    move-object v12, v0

    :try_start_143
    invoke-virtual {v8, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v7    # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "isBootImage":Z
    .end local v11    # "opt":Ljava/lang/String;
    .end local v14    # "codePath":Ljava/lang/String;
    .end local v15    # "baseCodePath":Ljava/lang/String;
    .end local v16    # "profileType":I
    .end local v17    # "callingPackage":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :goto_146
    throw v8
    :try_end_147
    .catchall {:try_start_143 .. :try_end_147} :catchall_147

    .line 2095
    .end local v4    # "outputFileSuffix":Ljava/lang/String;
    .end local v5    # "outputProfilePath":Ljava/lang/String;
    .end local v6    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v7    # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "isBootImage":Z
    .restart local v11    # "opt":Ljava/lang/String;
    .restart local v14    # "codePath":Ljava/lang/String;
    .restart local v15    # "baseCodePath":Ljava/lang/String;
    .restart local v16    # "profileType":I
    .restart local v17    # "callingPackage":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :catchall_147
    move-exception v0

    move-object v4, v0

    :try_start_149
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14c
    .catchall {:try_start_149 .. :try_end_14c} :catchall_14d

    goto :goto_152

    :catchall_14d
    move-exception v0

    move-object v5, v0

    :try_start_14f
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v7    # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "isBootImage":Z
    .end local v11    # "opt":Ljava/lang/String;
    .end local v14    # "codePath":Ljava/lang/String;
    .end local v15    # "baseCodePath":Ljava/lang/String;
    .end local v16    # "profileType":I
    .end local v17    # "callingPackage":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :goto_152
    throw v4
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_153} :catch_153
    .catch Landroid/system/ErrnoException; {:try_start_14f .. :try_end_153} :catch_153

    .line 2105
    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v7    # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "isBootImage":Z
    .restart local v11    # "opt":Ljava/lang/String;
    .restart local v14    # "codePath":Ljava/lang/String;
    .restart local v15    # "baseCodePath":Ljava/lang/String;
    .restart local v16    # "profileType":I
    .restart local v17    # "callingPackage":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    :catch_153
    move-exception v0

    .line 2106
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when reading the profile fd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2108
    return v13

    :pswitch_data_172
    .packed-switch -0x28d32d9b
        :pswitch_22
    .end packed-switch

    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_46
    .end packed-switch
.end method

.method private runStreamingInstall()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1409
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    .line 1410
    .local v0, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-nez v1, :cond_15

    .line 1411
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1412
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStreamingDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    move-result-object v2

    .line 1411
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    .line 1414
    :cond_15
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result v1

    return v1
.end method

.method private runSuspend(Z)I
    .registers 22
    .param p1, "suspendedState"    # Z

    .line 2462
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 2463
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 2464
    .local v0, "userId":I
    const/4 v3, 0x0

    .line 2465
    .local v3, "dialogMessage":Ljava/lang/String;
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 2466
    .local v4, "appExtras":Landroid/os/PersistableBundle;
    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    move-object v6, v3

    move v3, v0

    .line 2468
    .end local v0    # "userId":I
    .local v3, "userId":I
    .local v5, "launcherExtras":Landroid/os/PersistableBundle;
    .local v6, "dialogMessage":Ljava/lang/String;
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .local v7, "opt":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_dd

    .line 2469
    const/4 v0, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x4

    sparse-switch v10, :sswitch_data_18a

    :cond_26
    goto :goto_76

    :sswitch_27
    const-string v10, "--user"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    goto :goto_77

    :sswitch_30
    const-string v8, "--les"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    const/4 v8, 0x6

    goto :goto_77

    :sswitch_3a
    const-string v8, "--lel"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    const/4 v8, 0x5

    goto :goto_77

    :sswitch_44
    const-string v8, "--led"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    const/4 v8, 0x7

    goto :goto_77

    :sswitch_4e
    const-string v8, "--aes"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    const/4 v8, 0x3

    goto :goto_77

    :sswitch_58
    const-string v8, "--ael"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    const/4 v8, 0x2

    goto :goto_77

    :sswitch_62
    const-string v8, "--aed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    move v8, v11

    goto :goto_77

    :sswitch_6c
    const-string v8, "--dialogMessage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    move v8, v9

    goto :goto_77

    :goto_76
    move v8, v0

    :goto_77
    packed-switch v8, :pswitch_data_1ac

    .line 2502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unknown option: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2503
    return v9

    .line 2482
    :pswitch_91
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2483
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 2484
    .local v8, "val":Ljava/lang/String;
    if-nez p1, :cond_9c

    .line 2485
    goto :goto_db

    .line 2488
    :cond_9c
    const-string v9, "--a"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a6

    move-object v9, v4

    goto :goto_a7

    :cond_a6
    move-object v9, v5

    .line 2489
    .local v9, "bundleToInsert":Landroid/os/PersistableBundle;
    :goto_a7
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sparse-switch v10, :sswitch_data_1c0

    goto :goto_cb

    .line 2497
    :sswitch_af
    invoke-virtual {v9, v0, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cb

    .line 2491
    :sswitch_b3
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v0, v10, v11}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 2492
    goto :goto_cb

    .line 2494
    :sswitch_bf
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v9, v0, v10, v11}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 2495
    nop

    .line 2500
    :goto_cb
    goto :goto_db

    .line 2474
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "bundleToInsert":Landroid/os/PersistableBundle;
    :pswitch_cc
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2475
    .end local v6    # "dialogMessage":Ljava/lang/String;
    .local v0, "dialogMessage":Ljava/lang/String;
    move-object v6, v0

    goto :goto_db

    .line 2471
    .end local v0    # "dialogMessage":Ljava/lang/String;
    .restart local v6    # "dialogMessage":Ljava/lang/String;
    :pswitch_d2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2472
    .end local v3    # "userId":I
    .local v0, "userId":I
    move v3, v0

    .line 2503
    .end local v0    # "userId":I
    .restart local v3    # "userId":I
    :goto_db
    goto/16 :goto_14

    .line 2507
    :cond_dd
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v10

    .line 2508
    .local v10, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 2509
    const-string v0, "Error: package name not specified"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2510
    return v9

    .line 2513
    :cond_ed
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_f7

    const-string/jumbo v0, "root"

    goto :goto_f9

    :cond_f7
    const-string v0, "com.android.shell"

    :goto_f9
    move-object/from16 v18, v0

    .line 2516
    .local v18, "callingPackage":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 2517
    new-instance v0, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 2518
    invoke-virtual {v0, v6}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v0

    .line 2519
    invoke-virtual {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v0

    move-object v11, v0

    .local v0, "info":Landroid/content/pm/SuspendDialogInfo;
    goto :goto_112

    .line 2521
    .end local v0    # "info":Landroid/content/pm/SuspendDialogInfo;
    :cond_110
    const/4 v0, 0x0

    move-object v11, v0

    .line 2524
    .local v11, "info":Landroid/content/pm/SuspendDialogInfo;
    :goto_112
    const/16 v0, -0x2710

    :try_start_114
    const-string/jumbo v12, "runSuspend"

    .line 2525
    invoke-direct {v1, v3, v0, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    .line 2526
    .local v0, "translatedUserId":I
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    new-array v13, v8, [Ljava/lang/String;

    invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 2527
    invoke-virtual {v4}, Landroid/os/PersistableBundle;->size()I

    move-result v14

    const/4 v15, 0x0

    if-lez v14, :cond_12f

    move-object/from16 v16, v4

    goto :goto_131

    :cond_12f
    move-object/from16 v16, v15

    .line 2528
    :goto_131
    invoke-virtual {v5}, Landroid/os/PersistableBundle;->size()I

    move-result v14

    if-lez v14, :cond_13a

    move-object/from16 v17, v5

    goto :goto_13c

    :cond_13a
    move-object/from16 v17, v15

    .line 2526
    :goto_13c
    move/from16 v14, p1

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v11

    move/from16 v19, v0

    invoke-interface/range {v12 .. v19}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;I)[Ljava/lang/String;

    .line 2530
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_14a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_17f

    .line 2531
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2532
    .local v13, "packageName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " new suspended state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2533
    invoke-interface {v15, v13, v0}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2532
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_17c
    .catch Landroid/os/RemoteException; {:try_start_114 .. :try_end_17c} :catch_180
    .catch Ljava/lang/IllegalArgumentException; {:try_start_114 .. :try_end_17c} :catch_180

    .line 2530
    .end local v13    # "packageName":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_14a

    .line 2535
    .end local v12    # "i":I
    :cond_17f
    return v8

    .line 2536
    .end local v0    # "translatedUserId":I
    :catch_180
    move-exception v0

    .line 2537
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2538
    return v9

    nop

    :sswitch_data_18a
    .sparse-switch
        -0x25a4801 -> :sswitch_6c
        0x2900f20 -> :sswitch_62
        0x2900f28 -> :sswitch_58
        0x2900f2f -> :sswitch_4e
        0x290386b -> :sswitch_44
        0x2903873 -> :sswitch_3a
        0x290387a -> :sswitch_30
        0x4f7b216b -> :sswitch_27
    .end sparse-switch

    :pswitch_data_1ac
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_cc
        :pswitch_91
        :pswitch_91
        :pswitch_91
        :pswitch_91
        :pswitch_91
        :pswitch_91
    .end packed-switch

    :sswitch_data_1c0
    .sparse-switch
        0x64 -> :sswitch_bf
        0x6c -> :sswitch_b3
        0x73 -> :sswitch_af
    .end sparse-switch
.end method

.method private runTrimCaches()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2752
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2753
    .local v0, "size":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 2754
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no size specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2755
    return v1

    .line 2757
    :cond_11
    const-wide/16 v2, 0x1

    .line 2758
    .local v2, "multiplier":J
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2759
    .local v4, "len":I
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2760
    .local v5, "c":C
    const/16 v6, 0x30

    const/4 v7, 0x0

    if-lt v5, v6, :cond_2a

    const/16 v6, 0x39

    if-le v5, v6, :cond_27

    goto :goto_2a

    :cond_27
    move-wide v8, v2

    move-object v2, v0

    goto :goto_72

    .line 2761
    :cond_2a
    :goto_2a
    const/16 v6, 0x4b

    if-eq v5, v6, :cond_68

    const/16 v6, 0x6b

    if-ne v5, v6, :cond_33

    goto :goto_68

    .line 2763
    :cond_33
    const/16 v6, 0x4d

    if-eq v5, v6, :cond_64

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_3c

    goto :goto_64

    .line 2765
    :cond_3c
    const/16 v6, 0x47

    if-eq v5, v6, :cond_60

    const/16 v6, 0x67

    if-ne v5, v6, :cond_45

    goto :goto_60

    .line 2768
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid suffix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2769
    return v1

    .line 2766
    :cond_60
    :goto_60
    const-wide/32 v2, 0x40000000

    goto :goto_6a

    .line 2764
    :cond_64
    :goto_64
    const-wide/32 v2, 0x100000

    goto :goto_6a

    .line 2762
    :cond_68
    :goto_68
    const-wide/16 v2, 0x400

    .line 2771
    :goto_6a
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-wide v8, v2

    move-object v2, v0

    .line 2775
    .end local v0    # "size":Ljava/lang/String;
    .local v2, "size":Ljava/lang/String;
    .local v8, "multiplier":J
    :goto_72
    :try_start_72
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_76} :catch_ab

    mul-long v16, v0, v8

    .line 2779
    .local v16, "sizeVal":J
    nop

    .line 2780
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2781
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 2782
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_89

    .line 2781
    :cond_88
    move-object v3, v0

    .line 2784
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .local v3, "volumeUuid":Ljava/lang/String;
    :goto_89
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    move-object v6, v0

    .line 2785
    .local v6, "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    move-object/from16 v1, p0

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v14, 0x2

    move-object v11, v3

    move-wide/from16 v12, v16

    move-object v15, v6

    invoke-interface/range {v10 .. v15}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    .line 2787
    monitor-enter v6

    .line 2788
    :goto_9c
    :try_start_9c
    iget-boolean v0, v6, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_9e
    .catchall {:try_start_9c .. :try_end_9e} :catchall_a8

    if-nez v0, :cond_a6

    .line 2790
    :try_start_a0
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_a3
    .catch Ljava/lang/InterruptedException; {:try_start_a0 .. :try_end_a3} :catch_a4
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a8

    .line 2792
    :goto_a3
    goto :goto_9c

    .line 2791
    :catch_a4
    move-exception v0

    goto :goto_a3

    .line 2794
    :cond_a6
    :try_start_a6
    monitor-exit v6

    .line 2795
    return v7

    .line 2794
    :catchall_a8
    move-exception v0

    monitor-exit v6
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_a8

    throw v0

    .line 2776
    .end local v3    # "volumeUuid":Ljava/lang/String;
    .end local v6    # "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    .end local v16    # "sizeVal":J
    :catch_ab
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2777
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: expected number at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2778
    return v1
.end method

.method private runUninstall()I
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2163
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 2164
    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 2165
    .local v2, "flags":I
    const/4 v3, -0x1

    .line 2166
    .local v3, "userId":I
    const-wide/16 v4, -0x1

    move-wide v11, v4

    .line 2169
    .local v11, "versionCode":J
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    .local v13, "opt":Ljava/lang/String;
    const/4 v5, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v4, :cond_6b

    .line 2170
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_15c

    :cond_1c
    goto :goto_3a

    :sswitch_1d
    const-string v4, "--versionCode"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v5, 0x2

    goto :goto_3a

    :sswitch_27
    const-string v4, "--user"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move v5, v15

    goto :goto_3a

    :sswitch_31
    const-string v4, "-k"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move v5, v14

    :goto_3a
    packed-switch v5, :pswitch_data_16a

    .line 2181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2182
    return v15

    .line 2178
    :pswitch_54
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2179
    .end local v11    # "versionCode":J
    .local v4, "versionCode":J
    move-wide v11, v4

    goto :goto_6a

    .line 2175
    .end local v4    # "versionCode":J
    .restart local v11    # "versionCode":J
    :pswitch_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 2176
    goto :goto_6a

    .line 2172
    :pswitch_67
    or-int/lit8 v2, v2, 0x1

    .line 2173
    nop

    .line 2182
    :goto_6a
    goto :goto_b

    .line 2186
    :cond_6b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v10

    .line 2187
    .local v10, "packageName":Ljava/lang/String;
    if-nez v10, :cond_77

    .line 2188
    const-string v4, "Error: package name not specified"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2189
    return v15

    .line 2193
    :cond_77
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v9

    .line 2194
    .local v9, "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_86

    .line 2195
    invoke-direct {v0, v10, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveSplits(Ljava/lang/String;Ljava/util/Collection;)I

    move-result v4

    return v4

    .line 2198
    :cond_86
    if-ne v3, v5, :cond_8a

    .line 2199
    or-int/lit8 v2, v2, 0x2

    .line 2201
    :cond_8a
    nop

    .line 2202
    const-string/jumbo v4, "runUninstall"

    invoke-direct {v0, v3, v14, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v8

    .line 2203
    .local v8, "translatedUserId":I
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver-IA;)V

    move-object/from16 v22, v4

    .line 2204
    .local v22, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 2205
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    .line 2207
    .local v6, "internal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManagerInternal;->isApexPackage(Ljava/lang/String;)Z

    move-result v4

    const-string v7, "]"

    if-eqz v4, :cond_c4

    .line 2208
    nop

    .line 2209
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v16

    .line 2208
    move-object v4, v6

    move-object v5, v10

    move-object/from16 v23, v6

    move-object v14, v7

    .end local v6    # "internal":Landroid/content/pm/PackageManagerInternal;
    .local v23, "internal":Landroid/content/pm/PackageManagerInternal;
    move-wide v6, v11

    move/from16 v24, v8

    .end local v8    # "translatedUserId":I
    .local v24, "translatedUserId":I
    move-object/from16 v25, v9

    .end local v9    # "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v25, "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v9, v16

    move-object v15, v10

    .end local v10    # "packageName":Ljava/lang/String;
    .local v15, "packageName":Ljava/lang/String;
    move v10, v2

    invoke-virtual/range {v4 .. v10}, Landroid/content/pm/PackageManagerInternal;->uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;I)V

    move/from16 v7, v24

    goto :goto_125

    .line 2211
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v23    # "internal":Landroid/content/pm/PackageManagerInternal;
    .end local v24    # "translatedUserId":I
    .end local v25    # "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "internal":Landroid/content/pm/PackageManagerInternal;
    .restart local v8    # "translatedUserId":I
    .restart local v9    # "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "packageName":Ljava/lang/String;
    :cond_c4
    move-object/from16 v23, v6

    move-object v14, v7

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object v15, v10

    .end local v6    # "internal":Landroid/content/pm/PackageManagerInternal;
    .end local v8    # "translatedUserId":I
    .end local v9    # "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "packageName":Ljava/lang/String;
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v23    # "internal":Landroid/content/pm/PackageManagerInternal;
    .restart local v24    # "translatedUserId":I
    .restart local v25    # "splitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_109

    .line 2212
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const-wide/32 v5, 0x4000000

    move/from16 v7, v24

    .end local v24    # "translatedUserId":I
    .local v7, "translatedUserId":I
    invoke-interface {v4, v15, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2214
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_f9

    .line 2215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure [not installed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2216
    const/4 v5, 0x1

    return v5

    .line 2218
    :cond_f9
    const/4 v5, 0x1

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_103

    const/4 v5, 0x1

    goto :goto_104

    :cond_103
    const/4 v5, 0x0

    .line 2223
    .local v5, "isSystem":Z
    :goto_104
    if-eqz v5, :cond_10b

    .line 2224
    or-int/lit8 v2, v2, 0x4

    goto :goto_10b

    .line 2211
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "isSystem":Z
    .end local v7    # "translatedUserId":I
    .restart local v24    # "translatedUserId":I
    :cond_109
    move/from16 v7, v24

    .line 2227
    .end local v24    # "translatedUserId":I
    .restart local v7    # "translatedUserId":I
    :cond_10b
    :goto_10b
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v16

    new-instance v4, Landroid/content/pm/VersionedPackage;

    invoke-direct {v4, v15, v11, v12}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/16 v18, 0x0

    .line 2229
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v20

    .line 2227
    move-object/from16 v17, v4

    move/from16 v19, v2

    move/from16 v21, v7

    invoke-interface/range {v16 .. v21}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 2232
    :goto_125
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    .line 2233
    .local v4, "result":Landroid/content/Intent;
    const-string v5, "android.content.pm.extra.STATUS"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2235
    .local v5, "status":I
    if-nez v5, :cond_139

    .line 2236
    const-string v6, "Success"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2237
    const/4 v6, 0x0

    return v6

    .line 2239
    :cond_139
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2240
    const-string v8, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2239
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2241
    const/4 v6, 0x1

    return v6

    nop

    :sswitch_data_15c
    .sparse-switch
        0x5de -> :sswitch_31
        0x4f7b216b -> :sswitch_27
        0x704d4945 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_67
        :pswitch_5e
        :pswitch_54
    .end packed-switch
.end method

.method private runreconcileSecondaryDexFiles()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1970
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1971
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 1972
    const/4 v1, 0x0

    return v1
.end method

.method private setOrClearPermissionFlags(Z)I
    .registers 16
    .param p1, "setFlags"    # Z

    .line 2578
    const/4 v0, 0x0

    .line 2581
    .local v0, "userId":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 2582
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2583
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2587
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2588
    .local v1, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v1, :cond_2a

    .line 2589
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2590
    return v3

    .line 2592
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 2593
    .local v9, "perm":Ljava/lang/String;
    if-nez v9, :cond_3a

    .line 2594
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no permission specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2595
    return v3

    .line 2598
    :cond_3a
    const/4 v4, 0x0

    .line 2599
    .local v4, "flagMask":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 2600
    .local v5, "flagName":Ljava/lang/String;
    if-nez v5, :cond_4b

    .line 2601
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Error: no permission flags specified"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2602
    return v3

    .line 2600
    :cond_4b
    move v10, v4

    move-object v11, v5

    .line 2604
    .end local v4    # "flagMask":I
    .end local v5    # "flagName":Ljava/lang/String;
    .local v10, "flagMask":I
    .local v11, "flagName":Ljava/lang/String;
    :goto_4d
    if-eqz v11, :cond_8e

    .line 2605
    sget-object v4, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS:Ljava/util/Map;

    invoke-interface {v4, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 2606
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: specified flag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not one of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2608
    return v3

    .line 2610
    :cond_7e
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v10, v4

    .line 2611
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    goto :goto_4d

    .line 2614
    :cond_8e
    const/16 v3, -0x2710

    const-string/jumbo v4, "runGrantRevokePermission"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v12

    .line 2616
    .local v12, "translatedUser":Landroid/os/UserHandle;
    const/4 v13, 0x0

    if-eqz p1, :cond_a0

    move v7, v10

    goto :goto_a1

    :cond_a0
    move v7, v13

    .line 2617
    .local v7, "flagSet":I
    :goto_a1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    move-object v4, v1

    move-object v5, v9

    move v6, v10

    move-object v8, v12

    invoke-virtual/range {v3 .. v8}, Landroid/permission/PermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 2618
    return v13
.end method

.method private setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/util/List;)V
    .registers 29
    .param p1, "params"    # Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 616
    .local p2, "inPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p1

    const-string v2, "Error: Failed to parse APK file: "

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_12c

    const/4 v3, 0x0

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move-object/from16 v10, p0

    goto/16 :goto_130

    .line 620
    :cond_21
    const-wide/16 v5, 0x0

    .line 622
    .local v5, "sessionSize":J
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v7

    .line 623
    .local v7, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_124

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 624
    .local v9, "inPath":Ljava/lang/String;
    const-string/jumbo v0, "r"

    move-object/from16 v10, p0

    invoke-virtual {v10, v9, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    .line 625
    .local v11, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v11, :cond_f3

    .line 630
    nop

    .line 631
    :try_start_44
    invoke-virtual {v7}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    .line 630
    invoke-static {v0, v12, v9, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 632
    .local v0, "apkLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v12

    if-nez v12, :cond_91

    .line 638
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v16, v12

    check-cast v16, Landroid/content/pm/parsing/ApkLite;

    .line 639
    .local v16, "apkLite":Landroid/content/pm/parsing/ApkLite;
    new-instance v12, Landroid/content/pm/parsing/PackageLite;

    const/4 v14, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 643
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v13, v12

    invoke-direct/range {v13 .. v25}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V

    .line 645
    .local v12, "pkgLite":Landroid/content/pm/parsing/PackageLite;
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v13, v13, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 646
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    .line 645
    invoke-static {v12, v13, v14}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v13
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_89} :catch_bd
    .catchall {:try_start_44 .. :try_end_89} :catchall_ba

    add-long/2addr v5, v13

    .line 653
    .end local v0    # "apkLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    .end local v12    # "pkgLite":Landroid/content/pm/parsing/PackageLite;
    .end local v16    # "apkLite":Landroid/content/pm/parsing/ApkLite;
    :try_start_8a
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    .line 655
    goto :goto_90

    .line 654
    :catch_8e
    move-exception v0

    .line 656
    nop

    .line 657
    .end local v9    # "inPath":Ljava/lang/String;
    .end local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_90
    goto :goto_2b

    .line 633
    .restart local v0    # "apkLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    .restart local v9    # "inPath":Ljava/lang/String;
    .restart local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_91
    :try_start_91
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ": "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 635
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 636
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v12

    invoke-direct {v3, v8, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "sessionSize":J
    .end local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v9    # "inPath":Ljava/lang/String;
    .end local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    .end local p1    # "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .end local p2    # "inPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v3
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_ba} :catch_bd
    .catchall {:try_start_91 .. :try_end_ba} :catchall_ba

    .line 652
    .end local v0    # "apkLiteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    .restart local v5    # "sessionSize":J
    .restart local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v9    # "inPath":Ljava/lang/String;
    .restart local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    .restart local p1    # "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .restart local p2    # "inPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_ba
    move-exception v0

    move-object v2, v0

    goto :goto_ed

    .line 647
    :catch_bd
    move-exception v0

    .line 648
    .local v0, "e":Ljava/io/IOException;
    :try_start_be
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "sessionSize":J
    .end local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v9    # "inPath":Ljava/lang/String;
    .end local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    .end local p1    # "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .end local p2    # "inPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v3
    :try_end_ed
    .catchall {:try_start_be .. :try_end_ed} :catchall_ba

    .line 653
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "sessionSize":J
    .restart local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v9    # "inPath":Ljava/lang/String;
    .restart local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommand;
    .restart local p1    # "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .restart local p2    # "inPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_ed
    :try_start_ed
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f1

    .line 655
    goto :goto_f2

    .line 654
    :catch_f1
    move-exception v0

    .line 656
    :goto_f2
    throw v2

    .line 626
    :cond_f3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Can\'t open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    .end local v9    # "inPath":Ljava/lang/String;
    .end local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_124
    move-object/from16 v10, p0

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 660
    return-void

    .line 616
    .end local v5    # "sessionSize":J
    .end local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    :cond_12c
    move-object/from16 v10, p0

    move-object/from16 v4, p2

    .line 617
    :goto_130
    return-void
.end method

.method private setSessionFlag(Ljava/lang/String;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)Z
    .registers 6
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "sessionDump"    # Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;

    .line 1136
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_38

    :cond_9
    goto :goto_28

    :sswitch_a
    const-string v0, "--only-ready"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_29

    :sswitch_14
    const-string v0, "--only-sessionid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_29

    :sswitch_1e
    const-string v0, "--only-parent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_29

    :goto_28
    const/4 v0, -0x1

    :goto_29
    packed-switch v0, :pswitch_data_46

    .line 1147
    return v1

    .line 1144
    :pswitch_2d
    iput-boolean v2, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    .line 1145
    goto :goto_36

    .line 1141
    :pswitch_30
    iput-boolean v2, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyReady:Z

    .line 1142
    goto :goto_36

    .line 1138
    :pswitch_33
    iput-boolean v2, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyParent:Z

    .line 1139
    nop

    .line 1149
    :goto_36
    return v2

    nop

    :sswitch_data_38
    .sparse-switch
        -0x7a952fb5 -> :sswitch_1e
        -0x6e25b510 -> :sswitch_14
        0x4ebe19e2 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_33
        :pswitch_30
        :pswitch_2d
    .end packed-switch
.end method

.method private translateUserId(IILjava/lang/String;)I
    .registers 12
    .param p1, "userId"    # I
    .param p2, "allUserId"    # I
    .param p3, "logContext"    # Ljava/lang/String;

    .line 3455
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    move v4, v0

    .line 3456
    .local v4, "allowAll":Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3457
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x1

    .line 3456
    const-string/jumbo v7, "pm command"

    move v3, p1

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3458
    .local v0, "translatedUserId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    move v1, p2

    goto :goto_20

    :cond_1f
    move v1, v0

    :goto_20
    return v1
.end method

.method private uninstallSystemUpdates(Ljava/lang/String;)I
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;

    .line 499
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 500
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 502
    .local v1, "failedUninstalls":Z
    const/4 v2, 0x0

    :try_start_6
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4

    .line 504
    .local v4, "installer":Landroid/content/pm/IPackageInstaller;
    const-wide/32 v5, 0x102000

    const/4 v3, 0x1

    if-nez p1, :cond_1f

    .line 505
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 506
    invoke-interface {v7, v5, v6, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 509
    .local v5, "packages":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    move-object v5, v6

    .line 510
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object v10, v5

    goto :goto_2e

    .line 511
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 512
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, p1, v5, v6, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v10, v7

    .line 516
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_2e
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_32
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    move-object v12, v5

    .line 517
    .local v12, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uninstalling updates to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    new-instance v5, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver-IA;)V

    move-object v13, v5

    .line 520
    .local v13, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    new-instance v5, Landroid/content/pm/VersionedPackage;

    iget-object v6, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v12, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v5, v6, v7}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 522
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v8

    const/4 v9, 0x0

    .line 520
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 524
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v5

    .line 525
    .local v5, "result":Landroid/content/Intent;
    const-string v6, "android.content.pm.extra.STATUS"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 527
    .local v6, "status":I
    if-eqz v6, :cond_a2

    .line 528
    const/4 v1, 0x1

    .line 529
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t uninstall package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a2} :catch_ad

    .line 532
    .end local v5    # "result":Landroid/content/Intent;
    .end local v6    # "status":I
    .end local v12    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    :cond_a2
    goto :goto_32

    .line 538
    .end local v4    # "installer":Landroid/content/pm/IPackageInstaller;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_a3
    nop

    .line 539
    if-eqz v1, :cond_a7

    .line 540
    return v2

    .line 542
    :cond_a7
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    return v3

    .line 533
    :catch_ad
    move-exception v3

    .line 534
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 535
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 536
    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 534
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    return v2
.end method


# virtual methods
.method synthetic lambda$runGetOemPermissions$1$com-android-server-pm-PackageManagerShellCommand(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Ljava/lang/Boolean;

    .line 2745
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " granted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 10
    .param p1, "cmd"    # Ljava/lang/String;

    .line 197
    if-nez p1, :cond_7

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 201
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 203
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_560

    :cond_18
    goto/16 :goto_391

    :sswitch_1a
    const-string v2, "install"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x8

    goto/16 :goto_392

    :sswitch_26
    const-string v2, "get-moduleinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x43

    goto/16 :goto_392

    :sswitch_32
    const-string v2, "log-visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x44

    goto/16 :goto_392

    :sswitch_3e
    const-string/jumbo v2, "reconcile-secondary-dex-files"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x18

    goto/16 :goto_392

    :sswitch_4b
    const-string v2, "bypass-allowed-apex-update-check"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x46

    goto/16 :goto_392

    :sswitch_57
    const-string/jumbo v2, "set-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x12

    goto/16 :goto_392

    :sswitch_64
    const-string/jumbo v2, "set-permission-flags"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2e

    goto/16 :goto_392

    :sswitch_71
    const-string v2, "disable-until-used"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x24

    goto/16 :goto_392

    :sswitch_7d
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x22

    goto/16 :goto_392

    :sswitch_89
    const-string v2, "install-write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x10

    goto/16 :goto_392

    :sswitch_95
    const-string/jumbo v2, "set-home-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x3a

    goto/16 :goto_392

    :sswitch_a2
    const-string v2, "clear-permission-flags"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2f

    goto/16 :goto_392

    :sswitch_ae
    const-string/jumbo v2, "trim-caches"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x34

    goto/16 :goto_392

    :sswitch_bb
    const-string v2, "force-dex-opt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x19

    goto/16 :goto_392

    :sswitch_c7
    const-string/jumbo v2, "query-activities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x5

    goto/16 :goto_392

    :sswitch_d3
    const-string v2, "compile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x17

    goto/16 :goto_392

    :sswitch_df
    const-string/jumbo v2, "set-user-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x37

    goto/16 :goto_392

    :sswitch_ec
    const-string/jumbo v2, "uninstall-system-updates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x41

    goto/16 :goto_392

    :sswitch_f9
    const-string v2, "install-destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xc

    goto/16 :goto_392

    :sswitch_105
    const-string/jumbo v2, "snapshot-profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1e

    goto/16 :goto_392

    :sswitch_112
    const-string/jumbo v2, "rollback-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x42

    goto/16 :goto_392

    :sswitch_11f
    const-string/jumbo v2, "reset-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2d

    goto/16 :goto_392

    :sswitch_12c
    const-string v2, "logging"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x48

    goto/16 :goto_392

    :sswitch_138
    const-string v2, "install-remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xf

    goto/16 :goto_392

    :sswitch_144
    const-string v2, "install-add-session"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x14

    goto/16 :goto_392

    :sswitch_150
    const-string v2, "get-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x3f

    goto/16 :goto_392

    :sswitch_15c
    const-string v2, "install-existing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x11

    goto/16 :goto_392

    :sswitch_168
    const-string v2, "grant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2b

    goto/16 :goto_392

    :sswitch_174
    const-string v2, "clear"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x20

    goto/16 :goto_392

    :sswitch_180
    const-string v2, "install-streaming"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x9

    goto/16 :goto_392

    :sswitch_18c
    const-string v2, "get-max-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x38

    goto/16 :goto_392

    :sswitch_198
    const-string/jumbo v2, "move-package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x15

    goto/16 :goto_392

    :sswitch_1a5
    const-string/jumbo v2, "path"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v7

    goto/16 :goto_392

    :sswitch_1b1
    const-string v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v5

    goto/16 :goto_392

    :sswitch_1bc
    const-string v2, "hide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x26

    goto/16 :goto_392

    :sswitch_1c8
    const-string v2, "dump"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v6

    goto/16 :goto_392

    :sswitch_1d3
    const-string v2, "gc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v4

    goto/16 :goto_392

    :sswitch_1de
    const-string/jumbo v2, "move-primary-storage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x16

    goto/16 :goto_392

    :sswitch_1eb
    const-string v2, "default-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x25

    goto/16 :goto_392

    :sswitch_1f7
    const-string v2, "install-create"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xe

    goto/16 :goto_392

    :sswitch_203
    const-string v2, "install-commit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xd

    goto/16 :goto_392

    :sswitch_20f
    const-string/jumbo v2, "unsuspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x29

    goto/16 :goto_392

    :sswitch_21c
    const-string/jumbo v2, "set-permission-enforced"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x30

    goto/16 :goto_392

    :sswitch_229
    const-string/jumbo v2, "remove-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x36

    goto/16 :goto_392

    :sswitch_236
    const-string v2, "get-stagedsessions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x40

    goto/16 :goto_392

    :sswitch_242
    const-string/jumbo v2, "query-receivers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x7

    goto/16 :goto_392

    :sswitch_24e
    const-string v2, "bg-dexopt-job"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1a

    goto/16 :goto_392

    :sswitch_25a
    const-string/jumbo v2, "query-services"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x6

    goto/16 :goto_392

    :sswitch_266
    const-string v2, "create-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x35

    goto/16 :goto_392

    :sswitch_272
    const-string/jumbo v2, "uninstall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1f

    goto/16 :goto_392

    :sswitch_27f
    const-string v2, "bypass-staged-installer-check"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x45

    goto/16 :goto_392

    :sswitch_28b
    const-string v2, "install-incremental"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xa

    goto/16 :goto_392

    :sswitch_297
    const-string/jumbo v2, "unhide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x27

    goto/16 :goto_392

    :sswitch_2a4
    const-string v2, "dump-profiles"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1d

    goto/16 :goto_392

    :sswitch_2b0
    const-string/jumbo v2, "revoke"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2c

    goto/16 :goto_392

    :sswitch_2bd
    const-string/jumbo v2, "set-distracting-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2a

    goto/16 :goto_392

    :sswitch_2ca
    const-string v2, "disable-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x23

    goto/16 :goto_392

    :sswitch_2d6
    const-string v2, "get-privapp-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x31

    goto/16 :goto_392

    :sswitch_2e2
    const-string v2, "get-oem-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x33

    goto/16 :goto_392

    :sswitch_2ee
    const-string v2, "get-privapp-deny-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x32

    goto/16 :goto_392

    :sswitch_2fa
    const-string/jumbo v2, "resolve-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v3

    goto/16 :goto_392

    :sswitch_306
    const-string v2, "get-instantapp-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x3c

    goto/16 :goto_392

    :sswitch_312
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x21

    goto/16 :goto_392

    :sswitch_31e
    const-string v2, "has-feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x3d

    goto/16 :goto_392

    :sswitch_32a
    const-string v2, "cancel-bg-dexopt-job"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1b

    goto :goto_392

    :sswitch_335
    const-string/jumbo v2, "set-silent-updates-policy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x47

    goto :goto_392

    :sswitch_341
    const-string/jumbo v2, "set-installer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x3b

    goto :goto_392

    :sswitch_34d
    const-string v2, "get-max-running-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x39

    goto :goto_392

    :sswitch_358
    const-string/jumbo v2, "suspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x28

    goto :goto_392

    :sswitch_364
    const-string v2, "delete-dexopt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1c

    goto :goto_392

    :sswitch_36f
    const-string v2, "get-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x13

    goto :goto_392

    :sswitch_37a
    const-string v2, "install-abandon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xb

    goto :goto_392

    :sswitch_385
    const-string/jumbo v2, "set-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x3e

    goto :goto_392

    :goto_391
    move v2, v1

    :goto_392
    packed-switch v2, :pswitch_data_686

    .line 356
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    goto/16 :goto_504

    .line 352
    :pswitch_399
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->runLogging(Ljava/io/PrintWriter;)V

    .line 353
    return v7

    .line 349
    :pswitch_39d
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetSilentUpdatesPolicy()I

    move-result v1

    return v1

    .line 347
    :pswitch_3a2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runBypassAllowedApexUpdateCheck()I

    move-result v1

    return v1

    .line 345
    :pswitch_3a7
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runBypassStagedInstallerCheck()I

    move-result v1

    return v1

    .line 343
    :pswitch_3ac
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runLogVisibility()I

    move-result v1

    return v1

    .line 341
    :pswitch_3b1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetModuleInfo()I

    move-result v1

    return v1

    .line 339
    :pswitch_3b6
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRollbackApp()I

    move-result v1

    return v1

    .line 336
    :pswitch_3bb
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->uninstallSystemUpdates(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 334
    .end local v2    # "packageName":Ljava/lang/String;
    :pswitch_3c4
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListStagedSessions()I

    move-result v1

    return v1

    .line 332
    :pswitch_3c9
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetHarmfulAppWarning()I

    move-result v1

    return v1

    .line 330
    :pswitch_3ce
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHarmfulAppWarning()I

    move-result v1

    return v1

    .line 328
    :pswitch_3d3
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runHasFeature()I

    move-result v1

    return v1

    .line 326
    :pswitch_3d8
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstantAppResolver()I

    move-result v1

    return v1

    .line 324
    :pswitch_3dd
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstaller()I

    move-result v1

    return v1

    .line 322
    :pswitch_3e2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHomeActivity()I

    move-result v1

    return v1

    .line 320
    :pswitch_3e7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxRunningUsers()I

    move-result v1

    return v1

    .line 318
    :pswitch_3ec
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxUsers()I

    move-result v1

    return v1

    .line 316
    :pswitch_3f1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetUserRestriction()I

    move-result v1

    return v1

    .line 314
    :pswitch_3f6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveUser()I

    move-result v1

    return v1

    .line 312
    :pswitch_3fb
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCreateUser()I

    move-result v1

    return v1

    .line 310
    :pswitch_400
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runTrimCaches()I

    move-result v1

    return v1

    .line 308
    :pswitch_405
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetOemPermissions()I

    move-result v1

    return v1

    .line 306
    :pswitch_40a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappDenyPermissions()I

    move-result v1

    return v1

    .line 304
    :pswitch_40f
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappPermissions()I

    move-result v1

    return v1

    .line 302
    :pswitch_414
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetPermissionEnforced()I

    move-result v1

    return v1

    .line 300
    :pswitch_419
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->setOrClearPermissionFlags(Z)I

    move-result v1

    return v1

    .line 298
    :pswitch_41e
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->setOrClearPermissionFlags(Z)I

    move-result v1

    return v1

    .line 296
    :pswitch_423
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResetPermissions()I

    move-result v1

    return v1

    .line 294
    :pswitch_428
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result v1

    return v1

    .line 292
    :pswitch_42d
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result v1

    return v1

    .line 290
    :pswitch_432
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetDistractingRestriction()I

    move-result v1

    return v1

    .line 288
    :pswitch_437
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result v1

    return v1

    .line 286
    :pswitch_43c
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result v1

    return v1

    .line 284
    :pswitch_441
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result v1

    return v1

    .line 282
    :pswitch_446
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result v1

    return v1

    .line 280
    :pswitch_44b
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 277
    :pswitch_450
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 274
    :pswitch_455
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 272
    :pswitch_45a
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 270
    :pswitch_45f
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    .line 268
    :pswitch_464
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runClear()I

    move-result v1

    return v1

    .line 266
    :pswitch_469
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runUninstall()I

    move-result v1

    return v1

    .line 264
    :pswitch_46e
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSnapshotProfile()I

    move-result v1

    return v1

    .line 262
    :pswitch_473
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDumpProfiles()I

    move-result v1

    return v1

    .line 260
    :pswitch_478
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDeleteDexOpt()I

    move-result v1

    return v1

    .line 258
    :pswitch_47d
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->cancelBgDexOptJob()I

    move-result v1

    return v1

    .line 256
    :pswitch_482
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDexoptJob()I

    move-result v1

    return v1

    .line 254
    :pswitch_487
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runForceDexOpt()I

    move-result v1

    return v1

    .line 252
    :pswitch_48c
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runreconcileSecondaryDexFiles()I

    move-result v1

    return v1

    .line 250
    :pswitch_491
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCompile()I

    move-result v1

    return v1

    .line 248
    :pswitch_496
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePrimaryStorage()I

    move-result v1

    return v1

    .line 246
    :pswitch_49b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePackage()I

    move-result v1

    return v1

    .line 244
    :pswitch_4a0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAddSession()I

    move-result v1

    return v1

    .line 242
    :pswitch_4a5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstallLocation()I

    move-result v1

    return v1

    .line 240
    :pswitch_4aa
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstallLocation()I

    move-result v1

    return v1

    .line 238
    :pswitch_4af
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallExisting()I

    move-result v1

    return v1

    .line 236
    :pswitch_4b4
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallWrite()I

    move-result v1

    return v1

    .line 234
    :pswitch_4b9
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallRemove()I

    move-result v1

    return v1

    .line 232
    :pswitch_4be
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCreate()I

    move-result v1

    return v1

    .line 230
    :pswitch_4c3
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCommit()I

    move-result v1

    return v1

    .line 228
    :pswitch_4c8
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAbandon()I

    move-result v1

    return v1

    .line 225
    :pswitch_4cd
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runIncrementalInstall()I

    move-result v1

    return v1

    .line 223
    :pswitch_4d2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runStreamingInstall()I

    move-result v1

    return v1

    .line 221
    :pswitch_4d7
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstall()I

    move-result v1

    return v1

    .line 219
    :pswitch_4dc
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentReceivers()I

    move-result v1

    return v1

    .line 217
    :pswitch_4e1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentServices()I

    move-result v1

    return v1

    .line 215
    :pswitch_4e6
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentActivities()I

    move-result v1

    return v1

    .line 213
    :pswitch_4eb
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResolveActivity()I

    move-result v1

    return v1

    .line 211
    :pswitch_4f0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGc()I

    move-result v1

    return v1

    .line 209
    :pswitch_4f5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runList()I

    move-result v1

    return v1

    .line 207
    :pswitch_4fa
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDump()I

    move-result v1

    return v1

    .line 205
    :pswitch_4ff
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runPath()I

    move-result v1

    return v1

    .line 357
    :goto_504
    invoke-virtual {v2, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runCommand(Lcom/android/modules/utils/BasicShellCommandHandler;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 358
    .local v2, "domainVerificationResult":Ljava/lang/Boolean;
    if-eqz v2, :cond_510

    .line 359
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v6

    return v1

    .line 362
    :cond_510
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, "nextArg":Ljava/lang/String;
    if-nez v3, :cond_530

    .line 364
    const-string v4, "-l"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_523

    .line 365
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v1

    return v1

    .line 366
    :cond_523
    const-string v4, "-lf"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_543

    .line 367
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v1

    return v1

    .line 369
    :cond_530
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_543

    .line 370
    const-string v4, "-p"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_543

    .line 371
    invoke-direct {p0, v3, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 374
    :cond_543
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1
    :try_end_547
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_547} :catch_548

    return v1

    .line 377
    .end local v2    # "domainVerificationResult":Ljava/lang/Boolean;
    .end local v3    # "nextArg":Ljava/lang/String;
    :catch_548
    move-exception v2

    .line 378
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    :sswitch_data_560
    .sparse-switch
        -0x7d5639bf -> :sswitch_385
        -0x7540f3bd -> :sswitch_37a
        -0x737996c2 -> :sswitch_36f
        -0x7288a262 -> :sswitch_364
        -0x6e635fc4 -> :sswitch_358
        -0x6e1196e6 -> :sswitch_34d
        -0x67c8bc23 -> :sswitch_341
        -0x5b75ef1e -> :sswitch_335
        -0x55e399df -> :sswitch_32a
        -0x504e493d -> :sswitch_31e
        -0x4d6ada7d -> :sswitch_312
        -0x4b90d264 -> :sswitch_306
        -0x495fa230 -> :sswitch_2fa
        -0x41b47fcb -> :sswitch_2ee
        -0x410d7369 -> :sswitch_2e2
        -0x3fd1a8ae -> :sswitch_2d6
        -0x3d838470 -> :sswitch_2ca
        -0x38494450 -> :sswitch_2bd
        -0x37b0f17a -> :sswitch_2b0
        -0x36d5185d -> :sswitch_2a4
        -0x321a08a5 -> :sswitch_297
        -0x2c20e158 -> :sswitch_28b
        -0x29ee859f -> :sswitch_27f
        -0x2549d71e -> :sswitch_272
        -0x202b5604 -> :sswitch_266
        -0x1b57243d -> :sswitch_25a
        -0x1a825bcc -> :sswitch_24e
        -0x1a490a61 -> :sswitch_242
        -0x18d650e6 -> :sswitch_236
        -0x143f388c -> :sswitch_229
        -0xd1dc6eb -> :sswitch_21c
        -0x85b5c7d -> :sswitch_20f
        -0x7e40657 -> :sswitch_203
        -0x7bd8e92 -> :sswitch_1f7
        -0x6dac5fb -> :sswitch_1eb
        -0x533744c -> :sswitch_1de
        0xcdc -> :sswitch_1d3
        0x2f39f4 -> :sswitch_1c8
        0x30dd42 -> :sswitch_1bc
        0x32b09e -> :sswitch_1b1
        0x346425 -> :sswitch_1a5
        0x120f24a -> :sswitch_198
        0x5296aa8 -> :sswitch_18c
        0x5951ab0 -> :sswitch_180
        0x5a5b64d -> :sswitch_174
        0x5e0c11c -> :sswitch_168
        0x664b17d -> :sswitch_15c
        0x8569735 -> :sswitch_150
        0xe265438 -> :sswitch_144
        0x1127c8f6 -> :sswitch_138
        0x1466cb5f -> :sswitch_12c
        0x156ea506 -> :sswitch_11f
        0x1678dbb8 -> :sswitch_112
        0x1bde3ea0 -> :sswitch_105
        0x2f90ddc8 -> :sswitch_f9
        0x3142fb77 -> :sswitch_ec
        0x372512d5 -> :sswitch_df
        0x38a75a33 -> :sswitch_d3
        0x3ec9c212 -> :sswitch_c7
        0x4308171b -> :sswitch_bb
        0x4634ad3c -> :sswitch_ae
        0x533c0489 -> :sswitch_a2
        0x55326612 -> :sswitch_95
        0x5bb0b12d -> :sswitch_89
        0x639e22e8 -> :sswitch_7d
        0x653560d1 -> :sswitch_71
        0x67a44b14 -> :sswitch_64
        0x681c75b2 -> :sswitch_57
        0x68bf5845 -> :sswitch_4b
        0x6a555f29 -> :sswitch_3e
        0x6cc4393b -> :sswitch_32
        0x6ecbfff1 -> :sswitch_26
        0x74ae259b -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_686
    .packed-switch 0x0
        :pswitch_4ff
        :pswitch_4fa
        :pswitch_4f5
        :pswitch_4f0
        :pswitch_4eb
        :pswitch_4e6
        :pswitch_4e1
        :pswitch_4dc
        :pswitch_4d7
        :pswitch_4d2
        :pswitch_4cd
        :pswitch_4c8
        :pswitch_4c8
        :pswitch_4c3
        :pswitch_4be
        :pswitch_4b9
        :pswitch_4b4
        :pswitch_4af
        :pswitch_4aa
        :pswitch_4a5
        :pswitch_4a0
        :pswitch_49b
        :pswitch_496
        :pswitch_491
        :pswitch_48c
        :pswitch_487
        :pswitch_482
        :pswitch_47d
        :pswitch_478
        :pswitch_473
        :pswitch_46e
        :pswitch_469
        :pswitch_464
        :pswitch_45f
        :pswitch_45a
        :pswitch_455
        :pswitch_450
        :pswitch_44b
        :pswitch_446
        :pswitch_441
        :pswitch_43c
        :pswitch_437
        :pswitch_432
        :pswitch_42d
        :pswitch_428
        :pswitch_423
        :pswitch_41e
        :pswitch_419
        :pswitch_414
        :pswitch_40f
        :pswitch_40a
        :pswitch_405
        :pswitch_400
        :pswitch_3fb
        :pswitch_3f6
        :pswitch_3f1
        :pswitch_3ec
        :pswitch_3e7
        :pswitch_3e2
        :pswitch_3dd
        :pswitch_3d8
        :pswitch_3d3
        :pswitch_3ce
        :pswitch_3c9
        :pswitch_3c4
        :pswitch_3bb
        :pswitch_3b6
        :pswitch_3b1
        :pswitch_3ac
        :pswitch_3a7
        :pswitch_3a2
        :pswitch_39d
        :pswitch_399
    .end packed-switch
.end method

.method public onHelp()V
    .registers 10

    .line 3916
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3917
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Package manager (package) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3918
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3919
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3920
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3921
    const-string v2, "  path [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3922
    const-string v2, "    Print the path to the .apk of the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3923
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3924
    const-string v2, "  dump PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3925
    const-string v2, "    Print various system state associated with the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3926
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3927
    const-string v2, "  has-feature FEATURE_NAME [version]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3928
    const-string v2, "    Prints true and returns exit status 0 when system has a FEATURE_NAME,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3929
    const-string v2, "    otherwise prints false and returns exit status 1"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3930
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3931
    const-string v2, "  list features"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3932
    const-string v2, "    Prints all features of the system."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3933
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3934
    const-string v2, "  list instrumentation [-f] [TARGET-PACKAGE]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3935
    const-string v2, "    Prints all test packages; optionally only those targeting TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3936
    const-string v2, "    Options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3937
    const-string v2, "      -f: dump the name of the .apk file containing the test package"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3938
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3939
    const-string v2, "  list libraries"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3940
    const-string v2, "    Prints all system libraries."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3941
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3942
    const-string v2, "  list packages [-f] [-d] [-e] [-s] [-3] [-i] [-l] [-u] [-U] "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3943
    const-string v2, "      [--show-versioncode] [--apex-only] [--uid UID] [--user USER_ID] [FILTER]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3944
    const-string v2, "    Prints all packages; optionally only those whose name contains"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3945
    const-string v2, "    the text in FILTER.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3946
    const-string v2, "      -f: see their associated file"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3947
    const-string v2, "      -a: all known packages (but excluding APEXes)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3948
    const-string v2, "      -d: filter to only show disabled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3949
    const-string v2, "      -e: filter to only show enabled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3950
    const-string v2, "      -s: filter to only show system packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3951
    const-string v2, "      -3: filter to only show third party packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3952
    const-string v2, "      -i: see the installer for the packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3953
    const-string v2, "      -l: ignored (used for compatibility with older releases)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3954
    const-string v2, "      -U: also show the package UID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3955
    const-string v2, "      -u: also include uninstalled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3956
    const-string v2, "      --show-versioncode: also show the version code"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3957
    const-string v2, "      --apex-only: only show APEX packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3958
    const-string v2, "      --uid UID: filter to only show packages with the given UID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3959
    const-string v2, "      --user USER_ID: only list packages belonging to the given user"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3960
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3961
    const-string v2, "  list permission-groups"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3962
    const-string v2, "    Prints all known permission groups."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3963
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3964
    const-string v2, "  list permissions [-g] [-f] [-d] [-u] [GROUP]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3965
    const-string v2, "    Prints all known permissions; optionally only those in GROUP.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3966
    const-string v2, "      -g: organize by group"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3967
    const-string v2, "      -f: print all information"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3968
    const-string v2, "      -s: short summary"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3969
    const-string v2, "      -d: only list dangerous permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3970
    const-string v2, "      -u: list only the permissions users will see"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3971
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3972
    const-string v2, "  list staged-sessions [--only-ready] [--only-sessionid] [--only-parent]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3973
    const-string v2, "    Prints all staged sessions."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3974
    const-string v2, "      --only-ready: show only staged sessions that are ready"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3975
    const-string v2, "      --only-sessionid: show only sessionId of each session"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3976
    const-string v2, "      --only-parent: hide all children sessions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3977
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3978
    const-string v2, "  list users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3979
    const-string v3, "    Prints all users."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3980
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3981
    const-string v3, "  resolve-activity [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3982
    const-string v3, "       [--user USER_ID] INTENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3983
    const-string v4, "    Prints the activity that resolves to the given INTENT."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3984
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3985
    const-string v4, "  query-activities [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3986
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3987
    const-string v4, "    Prints all activities that can handle the given INTENT."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3988
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3989
    const-string v4, "  query-services [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3990
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3991
    const-string v4, "    Prints all services that can handle the given INTENT."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3992
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3993
    const-string v4, "  query-receivers [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3994
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3995
    const-string v3, "    Prints all broadcast receivers that can handle the given INTENT."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3996
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3997
    const-string v3, "  install [-rtfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3998
    const-string v3, "       [-p INHERIT_PACKAGE] [--install-location 0/1/2]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3999
    const-string v4, "       [--install-reason 0/1/2/3/4] [--originating-uri URI]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4000
    const-string v5, "       [--referrer URI] [--abi ABI_NAME] [--force-sdk]"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4001
    const-string v6, "       [--preload] [--instant] [--full] [--dont-kill]"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4002
    const-string v7, "       [--enable-rollback]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4003
    const-string v7, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [-S BYTES]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4004
    const-string v7, "       [--apex] [--staged-ready-timeout TIMEOUT]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4005
    const-string v7, "       [PATH [SPLIT...]|-]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4006
    const-string v7, "    Install an application.  Must provide the apk data to install, either as"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4007
    const-string v7, "    file path(s) or \'-\' to read from stdin.  Options are:"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4008
    const-string v7, "      -R: disallow replacement of existing application"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4009
    const-string v7, "      -t: allow test packages"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4010
    const-string v7, "      -i: specify package name of installer owning the app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4011
    const-string v7, "      -f: install application on internal flash"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4012
    const-string v7, "      -d: allow version code downgrade (debuggable packages only)"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4013
    const-string v7, "      -p: partial application install (new split on top of existing pkg)"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4014
    const-string v7, "      -g: grant all runtime permissions"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4015
    const-string v7, "      -S: size in bytes of package, required for stdin"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4016
    const-string v8, "      --user: install under the given user."

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4017
    const-string v8, "      --dont-kill: installing a new feature split, don\'t kill running app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4018
    const-string v8, "      --restrict-permissions: don\'t whitelist restricted permissions at install"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4019
    const-string v8, "      --originating-uri: set URI where app was downloaded from"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4020
    const-string v8, "      --referrer: set URI that instigated the install of the app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4021
    const-string v8, "      --pkg: specify expected package name of app being installed"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4022
    const-string v8, "      --abi: override the default ABI of the platform"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4023
    const-string v8, "      --instant: cause the app to be installed as an ephemeral install app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4024
    const-string v8, "      --full: cause the app to be installed as a non-ephemeral full app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4025
    const-string v8, "      --install-location: force the install location:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4026
    const-string v8, "          0=auto, 1=internal only, 2=prefer external"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4027
    const-string v8, "      --install-reason: indicates why the app is being installed:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4028
    const-string v8, "          0=unknown, 1=admin policy, 2=device restore,"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4029
    const-string v8, "          3=device setup, 4=user request"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4030
    const-string v8, "      --force-uuid: force install on to disk volume with given UUID"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4031
    const-string v8, "      --apex: install an .apex file, not an .apk"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4032
    const-string v8, "      --staged-ready-timeout: By default, staged sessions wait 60000"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4034
    const-string v8, "          milliseconds for pre-reboot verification to complete when"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4035
    const-string v8, "          performing staged install. This flag is used to alter the waiting"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4036
    const-string v8, "          time. You can skip the waiting time by specifying a TIMEOUT of \'0\'"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4037
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4038
    const-string v8, "  install-existing [--user USER_ID|all|current]"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4039
    const-string v8, "       [--instant] [--full] [--wait] [--restrict-permissions] PACKAGE"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4040
    const-string v8, "    Installs an existing application for a new user.  Options are:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4041
    const-string v8, "      --user: install for the given user."

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4042
    const-string v8, "      --instant: install as an instant app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4043
    const-string v8, "      --full: install as a full app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4044
    const-string v8, "      --wait: wait until the package is installed"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4045
    const-string v8, "      --restrict-permissions: don\'t whitelist restricted permissions"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4046
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4047
    const-string v8, "  install-create [-lrtsfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4048
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4049
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4050
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4051
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4052
    const-string v3, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [--apex] [-S BYTES]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4053
    const-string v3, "       [--multi-package] [--staged]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4054
    const-string v3, "    Like \"install\", but starts an install session.  Use \"install-write\""

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4055
    const-string v3, "    to push data into the session, and \"install-commit\" to finish."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4056
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4057
    const-string v3, "  install-write [-S BYTES] SESSION_ID SPLIT_NAME [PATH|-]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4058
    const-string v3, "    Write an apk into the given install session.  If the path is \'-\', data"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4059
    const-string v3, "    will be read from stdin.  Options are:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4060
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4061
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4062
    const-string v3, "  install-remove SESSION_ID SPLIT..."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4063
    const-string v3, "    Mark SPLIT(s) as removed in the given install session."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4064
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4065
    const-string v3, "  install-add-session MULTI_PACKAGE_SESSION_ID CHILD_SESSION_IDs"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4066
    const-string v3, "    Add one or more session IDs to a multi-package session."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4067
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4068
    const-string v3, "  install-commit SESSION_ID"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4069
    const-string v3, "    Commit the given active install session, installing the app."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4070
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4071
    const-string v3, "  install-abandon SESSION_ID"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4072
    const-string v3, "    Delete the given active install session."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4073
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4074
    const-string v3, "  set-install-location LOCATION"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4075
    const-string v3, "    Changes the default install location.  NOTE this is only intended for debugging;"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4076
    const-string v3, "    using this can cause applications to break and other undersireable behavior."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4077
    const-string v3, "    LOCATION is one of:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4078
    const-string v3, "    0 [auto]: Let system decide the best location"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4079
    const-string v3, "    1 [internal]: Install on internal device storage"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4080
    const-string v3, "    2 [external]: Install on external media"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4081
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4082
    const-string v3, "  get-install-location"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4083
    const-string v3, "    Returns the current install location: 0, 1 or 2 as per set-install-location."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4084
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4085
    const-string v3, "  move-package PACKAGE [internal|UUID]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4086
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4087
    const-string v3, "  move-primary-storage [internal|UUID]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4088
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4089
    const-string v3, "  uninstall [-k] [--user USER_ID] [--versionCode VERSION_CODE]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4090
    const-string v3, "       PACKAGE [SPLIT...]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4091
    const-string v3, "    Remove the given package name from the system.  May remove an entire app"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4092
    const-string v3, "    if no SPLIT names specified, otherwise will remove only the splits of the"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4093
    const-string v3, "    given app.  Options are:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4094
    const-string v3, "      -k: keep the data and cache directories around after package removal."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4095
    const-string v3, "      --user: remove the app from the given user."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4096
    const-string v3, "      --versionCode: only uninstall if the app has the given version code."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4097
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4098
    const-string v3, "  clear [--user USER_ID] [--cache-only] PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4099
    const-string v3, "    Deletes data associated with a package. Options are:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4100
    const-string v3, "    --user: specifies the user for which we need to clear data"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4101
    const-string v3, "    --cache-only: a flag which tells if we only need to clear cache data"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4102
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4103
    const-string v3, "  enable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4104
    const-string v3, "  disable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4105
    const-string v3, "  disable-user [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4106
    const-string v3, "  disable-until-used [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4107
    const-string v3, "  default-state [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4108
    const-string v3, "    These commands change the enabled state of a given package or"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4109
    const-string v3, "    component (written as \"package/class\")."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4110
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4111
    const-string v3, "  hide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4112
    const-string v3, "  unhide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4113
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4114
    const-string v3, "  suspend [--user USER_ID] PACKAGE [PACKAGE...]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4115
    const-string v3, "    Suspends the specified package(s) (as user)."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4116
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4117
    const-string v3, "  unsuspend [--user USER_ID] PACKAGE [PACKAGE...]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4118
    const-string v3, "    Unsuspends the specified package(s) (as user)."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4119
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4120
    const-string v3, "  set-distracting-restriction [--user USER_ID] [--flag FLAG ...]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4121
    const-string v3, "      PACKAGE [PACKAGE...]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4122
    const-string v3, "    Sets the specified restriction flags to given package(s) (for user)."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4123
    const-string v3, "    Flags are:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4124
    const-string v3, "      hide-notifications: Hides notifications from this package"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4125
    const-string v3, "      hide-from-suggestions: Hides this package from suggestions"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4126
    const-string v3, "        (by the launcher, etc.)"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4127
    const-string v3, "    Any existing flags are overwritten, which also means that if no flags are"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4128
    const-string v3, "    specified then all existing flags will be cleared."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4129
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4130
    const-string v3, "  grant [--user USER_ID] PACKAGE PERMISSION"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4131
    const-string v3, "  revoke [--user USER_ID] PACKAGE PERMISSION"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4132
    const-string v3, "    These commands either grant or revoke permissions to apps.  The permissions"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4133
    const-string v3, "    must be declared as used in the app\'s manifest, be runtime permissions"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4134
    const-string v4, "    (protection level dangerous), and the app targeting SDK greater than Lollipop MR1."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4135
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4136
    const-string v5, "  set-permission-flags [--user USER_ID] PACKAGE PERMISSION [FLAGS..]"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4137
    const-string v5, "  clear-permission-flags [--user USER_ID] PACKAGE PERMISSION [FLAGS..]"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4138
    const-string v5, "    These commands either set or clear permission flags on apps.  The permissions"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4139
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4140
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    The flags must be one or more of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4142
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4143
    const-string v3, "  reset-permissions"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4144
    const-string v3, "    Revert all runtime permissions to their default state."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4145
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4146
    const-string v3, "  set-permission-enforced PERMISSION [true|false]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4147
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4148
    const-string v3, "  get-privapp-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4149
    const-string v3, "    Prints all privileged permissions for a package."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4150
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4151
    const-string v3, "  get-privapp-deny-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4152
    const-string v3, "    Prints all privileged permissions that are denied for a package."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4153
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4154
    const-string v3, "  get-oem-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4155
    const-string v3, "    Prints all OEM permissions for a package."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4156
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4157
    const-string v3, "  trim-caches DESIRED_FREE_SPACE [internal|UUID]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4158
    const-string v3, "    Trim cache files to reach the given free space."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4159
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4160
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4161
    const-string v2, "    Lists the current users."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4162
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4163
    const-string v2, "  create-user [--profileOf USER_ID] [--managed] [--restricted] [--ephemeral]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4164
    const-string v2, "      [--guest] [--pre-create-only] [--user-type USER_TYPE] USER_NAME"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4165
    const-string v2, "    Create a new user with the given USER_NAME, printing the new user identifier"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4166
    const-string v2, "    of the user."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4168
    const-string v2, "    USER_TYPE is the name of a user type, e.g. android.os.usertype.profile.MANAGED."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4169
    const-string v2, "      If not specified, the default user type is android.os.usertype.full.SECONDARY."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4170
    const-string v2, "      --managed is shorthand for \'--user-type android.os.usertype.profile.MANAGED\'."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4171
    const-string v2, "      --restricted is shorthand for \'--user-type android.os.usertype.full.RESTRICTED\'."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4172
    const-string v2, "      --guest is shorthand for \'--user-type android.os.usertype.full.GUEST\'."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4173
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4174
    const-string v2, "  remove-user [--set-ephemeral-if-in-use | --wait] USER_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4175
    const-string v2, "    Remove the user with the given USER_IDENTIFIER, deleting all data"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4176
    const-string v2, "    associated with that user."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4177
    const-string v2, "      --set-ephemeral-if-in-use: If the user is currently running and"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4178
    const-string v2, "        therefore cannot be removed immediately, mark the user as ephemeral"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4179
    const-string v2, "        so that it will be automatically removed when possible (after user"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4180
    const-string v2, "        switch or reboot)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4181
    const-string v2, "      --wait: Wait until user is removed. Ignored if set-ephemeral-if-in-use"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4182
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4183
    const-string v2, "  set-user-restriction [--user USER_ID] RESTRICTION VALUE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4184
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4185
    const-string v2, "  get-max-users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4186
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4187
    const-string v2, "  get-max-running-users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4188
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4189
    const-string v2, "  compile [-m MODE | -r REASON] [-f] [-c] [--split SPLIT_NAME]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4190
    const-string v2, "          [--reset] [--check-prof (true | false)] (-a | TARGET-PACKAGE)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4191
    const-string v2, "    Trigger compilation of TARGET-PACKAGE or all packages if \"-a\".  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4192
    const-string v2, "      -a: compile all packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4193
    const-string v2, "      -c: clear profile data before compiling"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4194
    const-string v2, "      -f: force compilation even if not needed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4195
    const-string v2, "      -m: select compilation mode"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4196
    const-string v2, "          MODE is one of the dex2oat compiler filters:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4197
    const-string v2, "            assume-verified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4198
    const-string v2, "            extract"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4199
    const-string v2, "            verify"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4200
    const-string v2, "            quicken"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4201
    const-string v2, "            space-profile"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4202
    const-string v2, "            space"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4203
    const-string v2, "            speed-profile"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4204
    const-string v2, "            speed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4205
    const-string v2, "            everything"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4206
    const-string v2, "      -r: select compilation reason"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4207
    const-string v2, "          REASON is one of:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4208
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_547
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_569

    .line 4209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "            "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4208
    add-int/lit8 v2, v2, 0x1

    goto :goto_547

    .line 4211
    .end local v2    # "i":I
    :cond_569
    const-string v2, "      --reset: restore package to its post-install state"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4212
    const-string v2, "      --check-prof (true | false): look at profiles when doing dexopt?"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4213
    const-string v2, "      --secondary-dex: compile app secondary dex files"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4214
    const-string v2, "      --split SPLIT: compile only the given split name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4215
    const-string v2, "      --compile-layouts: compile layout resources for faster inflation"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4216
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4217
    const-string v2, "  force-dex-opt PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4218
    const-string v2, "    Force immediate execution of dex opt for the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4219
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4220
    const-string v2, "  delete-dexopt PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4221
    const-string v2, "    Delete dex optimization results for the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4222
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4223
    const-string v2, "  bg-dexopt-job"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4224
    const-string v2, "    Execute the background optimizations immediately."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4225
    const-string v2, "    Note that the command only runs the background optimizer logic. It may"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4226
    const-string v2, "    overlap with the actual job but the job scheduler will not be able to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4227
    const-string v2, "    cancel it. It will also run even if the device is not in the idle"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4228
    const-string v2, "    maintenance mode."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4229
    const-string v2, "  cancel-bg-dexopt-job"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4230
    const-string v2, "    Cancels currently running background optimizations immediately."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4231
    const-string v2, "    This cancels optimizations run from bg-dexopt-job or from JobScjeduler."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4232
    const-string v2, "    Note that cancelling currently running bg-dexopt-job command requires"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4233
    const-string v2, "    running this command from separate adb shell."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4234
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4235
    const-string v2, "  reconcile-secondary-dex-files TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4236
    const-string v2, "    Reconciles the package secondary dex files with the generated oat files."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4237
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4238
    const-string v2, "  dump-profiles [--dump-classes-and-methods] TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4239
    const-string v2, "    Dumps method/class profile files to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4240
    const-string v2, "    /data/misc/profman/TARGET-PACKAGE-primary.prof.txt."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4242
    const-string v2, "      --dump-classes-and-methods: passed along to the profman binary to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4243
    const-string v2, "        switch to the format used by \'profman --create-profile-from\'."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4244
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4245
    const-string v2, "  snapshot-profile TARGET-PACKAGE [--code-path path]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4246
    const-string v2, "    Take a snapshot of the package profiles to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4247
    const-string v2, "    /data/misc/profman/TARGET-PACKAGE[-code-path].prof"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4249
    const-string v2, "    If TARGET-PACKAGE=android it will take a snapshot of the boot image"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4250
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4251
    const-string v2, "  set-home-activity [--user USER_ID] TARGET-COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4252
    const-string v2, "    Set the default home activity (aka launcher)."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4253
    const-string v2, "    TARGET-COMPONENT can be a package name (com.package.my) or a full"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4254
    const-string v2, "    component (com.package.my/component.name). However, only the package name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4255
    const-string v2, "    matters: the actual component used will be determined automatically from"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4256
    const-string v2, "    the package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4257
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4258
    const-string v2, "  set-installer PACKAGE INSTALLER"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4259
    const-string v2, "    Set installer package name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4260
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4261
    const-string v2, "  get-instantapp-resolver"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4262
    const-string v2, "    Return the name of the component that is the current instant app installer."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4263
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4264
    const-string v2, "  set-harmful-app-warning [--user <USER_ID>] <PACKAGE> [<WARNING>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4265
    const-string v2, "    Mark the app as harmful with the given warning message."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4266
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4267
    const-string v2, "  get-harmful-app-warning [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4268
    const-string v2, "    Return the harmful app warning message for the given app, if present"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4269
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4270
    const-string v2, "  uninstall-system-updates [<PACKAGE>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4271
    const-string v2, "    Removes updates to the given system application and falls back to its"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4272
    const-string v2, "    /system version. Does nothing if the given package is not a system app."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4273
    const-string v2, "    If no package is specified, removes updates to all system applications."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4274
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4275
    const-string v2, "  get-moduleinfo [--all | --installed] [module-name]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4276
    const-string v2, "    Displays module info. If module-name is specified only that info is shown"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4277
    const-string v2, "    By default, without any argument only installed modules are shown."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4278
    const-string v2, "      --all: show all module info"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4279
    const-string v2, "      --installed: show only installed modules"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4280
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4281
    const-string v2, "  log-visibility [--enable|--disable] <PACKAGE>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4282
    const-string v2, "    Turns on debug logging when visibility is blocked for the given package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4283
    const-string v2, "      --enable: turn on debug logging (default)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4284
    const-string v2, "      --disable: turn off debug logging"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4285
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4286
    const-string v2, "  set-silent-updates-policy [--allow-unlimited-silent-updates <INSTALLER>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4287
    const-string v2, "                            [--throttle-time <SECONDS>] [--reset]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4288
    const-string v2, "    Sets the policies of the silent updates."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4289
    const-string v2, "      --allow-unlimited-silent-updates: allows unlimited silent updated"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4290
    const-string v2, "        installation requests from the installer without the throttle time."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4291
    const-string v2, "      --throttle-time: update the silent updates throttle time in seconds."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4292
    const-string v2, "      --reset: restore the installer and throttle time to the default, and"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4293
    const-string v2, "        clear tracks of silent updates in the system."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4294
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4295
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->printHelp(Ljava/io/PrintWriter;)V

    .line 4296
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4297
    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4298
    return-void
.end method

.method public runCreateUser()I
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2809
    const/4 v0, -0x1

    .line 2810
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 2811
    .local v1, "flags":I
    const/4 v2, 0x0

    .line 2813
    .local v2, "userType":Ljava/lang/String;
    const/4 v3, 0x0

    move/from16 v22, v1

    move v1, v0

    move-object v0, v2

    move/from16 v2, v22

    .line 2814
    .local v0, "userType":Ljava/lang/String;
    .local v1, "userId":I
    .local v2, "flags":I
    .local v3, "preCreateOnly":Z
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .local v10, "opt":Ljava/lang/String;
    const/4 v11, 0x1

    if-eqz v4, :cond_d0

    .line 2815
    const/4 v4, 0x0

    .line 2816
    .local v4, "newUserType":Ljava/lang/String;
    const-string v5, "--profileOf"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 2817
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    const-string/jumbo v7, "runCreateUser"

    move-object/from16 v12, p0

    invoke-direct {v12, v5, v6, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v1

    goto :goto_7d

    .line 2819
    :cond_2e
    move-object/from16 v12, p0

    const-string v5, "--managed"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 2820
    const-string v4, "android.os.usertype.profile.MANAGED"

    goto :goto_7d

    .line 2821
    :cond_3b
    const-string v5, "--restricted"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 2822
    const-string v4, "android.os.usertype.full.RESTRICTED"

    goto :goto_7d

    .line 2823
    :cond_46
    const-string v5, "--guest"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 2824
    const-string v4, "android.os.usertype.full.GUEST"

    goto :goto_7d

    .line 2825
    :cond_51
    const-string v5, "--demo"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 2826
    const-string v4, "android.os.usertype.full.DEMO"

    goto :goto_7d

    .line 2827
    :cond_5c
    const-string v5, "--ephemeral"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 2828
    or-int/lit16 v2, v2, 0x100

    goto :goto_7d

    .line 2829
    :cond_67
    const-string v5, "--pre-create-only"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 2830
    const/4 v3, 0x1

    goto :goto_7d

    .line 2831
    :cond_71
    const-string v5, "--user-type"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 2832
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2838
    :goto_7d
    if-eqz v4, :cond_b3

    .line 2839
    if-eqz v0, :cond_b2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b2

    .line 2840
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: more than one user type was specified ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2842
    return v11

    .line 2844
    :cond_b2
    move-object v0, v4

    .line 2846
    .end local v4    # "newUserType":Ljava/lang/String;
    :cond_b3
    goto/16 :goto_a

    .line 2834
    .restart local v4    # "newUserType":Ljava/lang/String;
    :cond_b5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: unknown option "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    return v11

    .line 2847
    .end local v4    # "newUserType":Ljava/lang/String;
    :cond_d0
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v13

    .line 2848
    .local v13, "arg":Ljava/lang/String;
    if-nez v13, :cond_e4

    if-nez v3, :cond_e4

    .line 2849
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no user name specified."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2850
    return v11

    .line 2852
    :cond_e4
    if-eqz v13, :cond_f1

    if-eqz v3, :cond_f1

    .line 2853
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Warning: name is ignored for pre-created users"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2856
    :cond_f1
    move-object v14, v13

    .line 2857
    .local v14, "name":Ljava/lang/String;
    const/4 v15, 0x0

    .line 2858
    .local v15, "info":Landroid/content/pm/UserInfo;
    nop

    .line 2859
    const-string/jumbo v4, "user"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 2858
    invoke-static {v4}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v9

    .line 2860
    .local v9, "um":Landroid/os/IUserManager;
    nop

    .line 2861
    const-string v4, "account"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 2860
    invoke-static {v4}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    move-result-object v8

    .line 2862
    .local v8, "accm":Landroid/accounts/IAccountManager;
    if-nez v0, :cond_112

    .line 2863
    invoke-static {v2}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_113

    .line 2862
    :cond_112
    move-object v7, v0

    .line 2865
    .end local v0    # "userType":Ljava/lang/String;
    .local v7, "userType":Ljava/lang/String;
    :goto_113
    const-wide/32 v5, 0x40000

    const-string/jumbo v0, "shell_runCreateUser"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2867
    const/16 v16, 0x0

    :try_start_11e
    invoke-static {v7}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    move-result v0
    :try_end_122
    .catch Landroid/os/ServiceSpecificException; {:try_start_11e .. :try_end_122} :catch_198
    .catchall {:try_start_11e .. :try_end_122} :catchall_18e

    if-eqz v0, :cond_148

    .line 2869
    if-ltz v1, :cond_128

    move v0, v1

    goto :goto_12a

    :cond_128
    move/from16 v0, v16

    .line 2870
    .local v0, "parentUserId":I
    :goto_12a
    :try_start_12a
    invoke-interface {v9, v14, v0}, Landroid/os/IUserManager;->createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v4

    move-object v15, v4

    .line 2871
    nop

    .line 2872
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-nez v4, :cond_13a

    const-string/jumbo v4, "root"

    goto :goto_13c

    :cond_13a
    const-string v4, "com.android.shell"

    .line 2871
    :goto_13c
    invoke-interface {v8, v0, v1, v4}, Landroid/accounts/IAccountManager;->addSharedAccountsFromParentUser(IILjava/lang/String;)V

    .line 2873
    .end local v0    # "parentUserId":I
    move-wide/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto :goto_188

    :cond_148
    if-gez v1, :cond_174

    .line 2874
    if-eqz v3, :cond_151

    .line 2875
    invoke-interface {v9, v7}, Landroid/os/IUserManager;->preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_155

    .line 2876
    :cond_151
    invoke-interface {v9, v14, v7, v2}, Landroid/os/IUserManager;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_155
    .catch Landroid/os/ServiceSpecificException; {:try_start_12a .. :try_end_155} :catch_16a
    .catchall {:try_start_12a .. :try_end_155} :catchall_15f

    :goto_155
    move-object v15, v0

    move-wide/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto :goto_188

    .line 2883
    :catchall_15f
    move-exception v0

    move-wide/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_1e6

    .line 2880
    :catch_16a
    move-exception v0

    move-wide/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto :goto_1a1

    .line 2878
    :cond_174
    const/4 v0, 0x0

    move-object v4, v9

    move-wide/from16 v17, v5

    move-object v5, v14

    move-object v6, v7

    move-object/from16 v19, v7

    .end local v7    # "userType":Ljava/lang/String;
    .local v19, "userType":Ljava/lang/String;
    move v7, v2

    move-object/from16 v20, v8

    .end local v8    # "accm":Landroid/accounts/IAccountManager;
    .local v20, "accm":Landroid/accounts/IAccountManager;
    move v8, v1

    move-object/from16 v21, v9

    .end local v9    # "um":Landroid/os/IUserManager;
    .local v21, "um":Landroid/os/IUserManager;
    move-object v9, v0

    :try_start_183
    invoke-interface/range {v4 .. v9}, Landroid/os/IUserManager;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_187
    .catch Landroid/os/ServiceSpecificException; {:try_start_183 .. :try_end_187} :catch_18c
    .catchall {:try_start_183 .. :try_end_187} :catchall_1e5

    move-object v15, v0

    .line 2883
    :goto_188
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 2884
    goto :goto_1bc

    .line 2880
    :catch_18c
    move-exception v0

    goto :goto_1a1

    .line 2883
    .end local v19    # "userType":Ljava/lang/String;
    .end local v20    # "accm":Landroid/accounts/IAccountManager;
    .end local v21    # "um":Landroid/os/IUserManager;
    .restart local v7    # "userType":Ljava/lang/String;
    .restart local v8    # "accm":Landroid/accounts/IAccountManager;
    .restart local v9    # "um":Landroid/os/IUserManager;
    :catchall_18e
    move-exception v0

    move-wide/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .end local v7    # "userType":Ljava/lang/String;
    .end local v8    # "accm":Landroid/accounts/IAccountManager;
    .end local v9    # "um":Landroid/os/IUserManager;
    .restart local v19    # "userType":Ljava/lang/String;
    .restart local v20    # "accm":Landroid/accounts/IAccountManager;
    .restart local v21    # "um":Landroid/os/IUserManager;
    goto :goto_1e6

    .line 2880
    .end local v19    # "userType":Ljava/lang/String;
    .end local v20    # "accm":Landroid/accounts/IAccountManager;
    .end local v21    # "um":Landroid/os/IUserManager;
    .restart local v7    # "userType":Ljava/lang/String;
    .restart local v8    # "accm":Landroid/accounts/IAccountManager;
    .restart local v9    # "um":Landroid/os/IUserManager;
    :catch_198
    move-exception v0

    move-wide/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 2881
    .end local v7    # "userType":Ljava/lang/String;
    .end local v8    # "accm":Landroid/accounts/IAccountManager;
    .end local v9    # "um":Landroid/os/IUserManager;
    .local v0, "e":Landroid/os/ServiceSpecificException;
    .restart local v19    # "userType":Ljava/lang/String;
    .restart local v20    # "accm":Landroid/accounts/IAccountManager;
    .restart local v21    # "um":Landroid/os/IUserManager;
    :goto_1a1
    :try_start_1a1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1bb
    .catchall {:try_start_1a1 .. :try_end_1bb} :catchall_1e5

    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_188

    .line 2886
    :goto_1bc
    if-eqz v15, :cond_1db

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success: created user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2888
    return v16

    .line 2890
    :cond_1db
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v4, "Error: couldn\'t create User."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2891
    return v11

    .line 2883
    :catchall_1e5
    move-exception v0

    :goto_1e6
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 2884
    throw v0
.end method

.method public runForceDexOpt()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1976
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->forceDexOpt(Ljava/lang/String;)V

    .line 1977
    const/4 v0, 0x0

    return v0
.end method

.method public runGetMaxRunningUsers()I
    .registers 5

    .line 3043
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 3044
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 3045
    .local v0, "activityManagerInternal":Landroid/app/ActivityManagerInternal;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum supported running users: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3046
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMaxRunningUsers()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3045
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    const/4 v1, 0x0

    return v1
.end method

.method public runGetMaxUsers()I
    .registers 4

    .line 3037
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum supported users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3038
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3037
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    const/4 v0, 0x0

    return v0
.end method

.method public runMovePackage()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1740
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1741
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1742
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: package name not specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    return v1

    .line 1745
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1746
    .local v2, "volumeUuid":Ljava/lang/String;
    const-string v3, "internal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1747
    const/4 v2, 0x0

    .line 1750
    :cond_1e
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v0, v2}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1752
    .local v3, "moveId":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v4

    .line 1753
    .local v4, "status":I
    :goto_2a
    invoke-static {v4}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 1754
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 1755
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v4

    goto :goto_2a

    .line 1758
    :cond_3c
    const/16 v5, -0x64

    if-ne v4, v5, :cond_4b

    .line 1759
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v5, "Success"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1760
    const/4 v1, 0x0

    return v1

    .line 1762
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1763
    return v1
.end method

.method public runMovePrimaryStorage()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1768
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1769
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1770
    const/4 v0, 0x0

    .line 1773
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v1

    .line 1775
    .local v1, "moveId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    .line 1776
    .local v2, "status":I
    :goto_19
    invoke-static {v2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1777
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1778
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    goto :goto_19

    .line 1781
    :cond_2b
    const/16 v3, -0x64

    if-ne v2, v3, :cond_3a

    .line 1782
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Success"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1783
    const/4 v3, 0x0

    return v3

    .line 1785
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1786
    const/4 v3, 0x1

    return v3
.end method

.method public runRemoveUser()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2899
    const/4 v0, 0x0

    .line 2900
    .local v0, "setEphemeralIfInUse":Z
    const/4 v1, 0x0

    .line 2902
    .local v1, "wait":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "arg":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_55

    .line 2903
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v6, -0x1

    sparse-switch v2, :sswitch_data_94

    :cond_13
    goto :goto_31

    :sswitch_14
    const-string v2, "--wait"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v4, v5

    goto :goto_32

    :sswitch_1e
    const-string v2, "-w"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v4, 0x2

    goto :goto_32

    :sswitch_28
    const-string v2, "--set-ephemeral-if-in-use"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_32

    :goto_31
    move v4, v6

    :goto_32
    packed-switch v4, :pswitch_data_a2

    .line 2912
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2913
    return v6

    .line 2909
    :pswitch_50
    const/4 v1, 0x1

    .line 2910
    goto :goto_54

    .line 2905
    :pswitch_52
    const/4 v0, 0x1

    .line 2906
    nop

    .line 2913
    :goto_54
    goto :goto_2

    .line 2917
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2918
    .end local v3    # "arg":Ljava/lang/String;
    .local v2, "arg":Ljava/lang/String;
    if-nez v2, :cond_65

    .line 2919
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no user id specified."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2920
    return v5

    .line 2922
    :cond_65
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 2923
    .local v3, "userId":I
    nop

    .line 2924
    const-string/jumbo v6, "user"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 2923
    invoke-static {v6}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v6

    .line 2925
    .local v6, "um":Landroid/os/IUserManager;
    if-eqz v0, :cond_7c

    .line 2926
    invoke-direct {p0, v6, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->removeUserWhenPossible(Landroid/os/IUserManager;I)I

    move-result v4

    return v4

    .line 2928
    :cond_7c
    if-eqz v1, :cond_83

    invoke-direct {p0, v6, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->removeUserAndWait(Landroid/os/IUserManager;I)Z

    move-result v7

    goto :goto_87

    :cond_83
    invoke-direct {p0, v6, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->removeUser(Landroid/os/IUserManager;I)Z

    move-result v7

    .line 2929
    .local v7, "success":Z
    :goto_87
    if-eqz v7, :cond_93

    .line 2930
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v8, "Success: removed user"

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2931
    return v4

    .line 2934
    :cond_93
    return v5

    :sswitch_data_94
    .sparse-switch
        -0x4149182c -> :sswitch_28
        0x5ea -> :sswitch_1e
        0x4f7bc715 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_52
        :pswitch_50
        :pswitch_50
    .end packed-switch
.end method

.method public runSetUserRestriction()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3011
    const/4 v0, 0x0

    .line 3012
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 3013
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3014
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 3017
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 3018
    .local v2, "restriction":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 3020
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 3021
    const/4 v4, 0x1

    .local v4, "value":Z
    goto :goto_32

    .line 3022
    .end local v4    # "value":Z
    :cond_29
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 3023
    const/4 v4, 0x0

    .line 3028
    .restart local v4    # "value":Z
    :goto_32
    const/16 v5, -0x2710

    .line 3029
    const-string/jumbo v6, "runSetUserRestriction"

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v5

    .line 3030
    .local v5, "translatedUserId":I
    nop

    .line 3031
    const-string/jumbo v6, "user"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 3030
    invoke-static {v6}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v6

    .line 3032
    .local v6, "um":Landroid/os/IUserManager;
    invoke-interface {v6, v2, v4, v5}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 3033
    const/4 v7, 0x0

    return v7

    .line 3025
    .end local v4    # "value":Z
    .end local v5    # "translatedUserId":I
    .end local v6    # "um":Landroid/os/IUserManager;
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: valid value not specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    const/4 v4, 0x1

    return v4
.end method
