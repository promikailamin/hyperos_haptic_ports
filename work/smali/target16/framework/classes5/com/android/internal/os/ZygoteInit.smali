.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# static fields
.field private static final blacklist ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final blacklist LOGGING_DEBUG:Z

.field private static final blacklist LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final blacklist LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final blacklist PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final blacklist PROPERTY_DISABLE_GRAPHICS_DRIVER_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final blacklist ROOT_GID:I = 0x0

.field private static final blacklist ROOT_UID:I = 0x0

.field private static final blacklist SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final blacklist TAG:Ljava/lang/String; = "Zygote"

.field private static final blacklist UNPRIVILEGED_GID:I = 0x270f

.field private static final blacklist UNPRIVILEGED_UID:I = 0x270f

.field private static blacklist sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

.field private static blacklist sPreloadComplete:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 94
    const-string v0, "Zygote"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    return-void
.end method

.method private static blacklist beginPreload()V
    .registers 2

    .line 184
    const-string v0, "Zygote"

    const-string v1, "Calling ZygoteHooks.beginPreload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Ldalvik/system/ZygoteHooks;->onBeginPreload()V

    .line 187
    return-void
.end method

.method private static blacklist cacheNonBootClasspathClassLoaders()V
    .registers 16

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    new-instance v1, Landroid/content/pm/SharedLibraryInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v2, "/system/framework/android.hidl.base-V1.0-java.jar"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v2, Landroid/content/pm/SharedLibraryInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v3, "/system/framework/android.hidl.manager-V1.0-java.jar"

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v3, Landroid/content/pm/SharedLibraryInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v4, "/system/framework/android.test.base.jar"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v14}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v4, Landroid/content/pm/SharedLibraryInfo;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v5, "/system/framework/org.apache.http.legacy.jar"

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v15}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/framework/com.android.media.remotedisplay.jar"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 436
    new-instance v2, Landroid/content/pm/SharedLibraryInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v3, "/system/framework/com.android.media.remotedisplay.jar"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_6a
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/framework/com.android.location.provider.jar"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 444
    new-instance v2, Landroid/content/pm/SharedLibraryInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v3, "/system/framework/com.android.location.provider.jar"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_8b
    sget-boolean v1, Landroid/view/WindowManager;->HAS_WINDOW_EXTENSIONS_ON_DEVICE:Z

    if-eqz v1, :cond_ea

    .line 455
    new-instance v1, Ljava/io/File;

    .line 456
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "framework"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 457
    new-instance v2, Landroid/content/pm/SharedLibraryInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/androidx.window.extensions.jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v4, "androidx.window.extensions"

    const/4 v5, 0x0

    const-string v6, "androidx.window.extensions"

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v3, Landroid/content/pm/SharedLibraryInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/androidx.window.sidecar.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v5, "androidx.window.sidecar"

    const/4 v6, 0x0

    const-string v7, "androidx.window.sidecar"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v14}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_ea
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ApplicationLoaders;->createAndCacheNonBootclasspathSystemClassLoaders(Ljava/util/List;)V

    .line 472
    return-void
.end method

.method static blacklist childZygoteInit([Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 3

    .line 994
    new-instance v0, Lcom/android/internal/os/RuntimeInit$Arguments;

    invoke-direct {v0, p0}, Lcom/android/internal/os/RuntimeInit$Arguments;-><init>([Ljava/lang/String;)V

    .line 995
    iget-object p0, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/os/RuntimeInit;->findStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static blacklist createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;
    .registers 10

    .line 676
    const-string v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 679
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 681
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v2

    move-object v1, p0

    move v5, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist endPreload()V
    .registers 2

    .line 190
    invoke-static {}, Ldalvik/system/ZygoteHooks;->onEndPreload()V

    .line 192
    const-string v0, "Zygote"

    const-string v1, "Called ZygoteHooks.endPreload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method private static blacklist forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .registers 13

    .line 693
    sget v0, Landroid/system/OsConstants;->CAP_IPC_LOCK:I

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sget v0, Landroid/system/OsConstants;->CAP_KILL:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_NET_RAW:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_SYS_PTRACE:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_WAKE_ALARM:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    shl-long v0, v1, v0

    or-long/2addr v0, v3

    .line 707
    new-instance v2, Landroid/system/StructCapUserHeader;

    sget v3, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/system/StructCapUserHeader;-><init>(II)V

    .line 711
    :try_start_45
    invoke-static {v2}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v2
    :try_end_49
    .catch Landroid/system/ErrnoException; {:try_start_45 .. :try_end_49} :catch_16c

    .line 714
    nop

    .line 715
    aget-object v3, v2, v4

    iget v3, v3, Landroid/system/StructCapUserData;->effective:I

    invoke-static {v3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    aget-object v2, v2, v5

    iget v2, v2, Landroid/system/StructCapUserData;->effective:I

    .line 716
    invoke-static {v2}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v5

    const/16 v2, 0x20

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    and-long/2addr v0, v2

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--capabilities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "--target-sdk-version=10000"

    const-string v8, "com.android.server.SystemServer"

    const-string v1, "--setuid=1000"

    const-string v2, "--setgid=1000"

    const-string v3, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1024,1032,1065,3001,3002,3003,3005,3006,3007,3009,3010,3011,3012"

    const-string v5, "--nice-name=system_server"

    const-string v6, "--runtime-args"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 735
    :try_start_90
    new-instance v1, Lcom/android/internal/os/ZygoteCommandBuffer;

    invoke-direct {v1, v0}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>([Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/IllegalArgumentException; {:try_start_90 .. :try_end_95} :catch_164

    .line 737
    :try_start_95
    invoke-static {v1}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v0
    :try_end_99
    .catch Ljava/io/EOFException; {:try_start_95 .. :try_end_99} :catch_15a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_95 .. :try_end_99} :catch_164

    .line 740
    nop

    .line 741
    :try_start_9a
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 742
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 743
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 745
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result v1

    if-eqz v1, :cond_111

    .line 746
    const-string/jumbo v1, "persist.arm64.memtag.system_server"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 747
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_b6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9a .. :try_end_b6} :catch_164

    const-string v3, "async"

    if-eqz v2, :cond_c1

    .line 751
    :try_start_ba
    const-string/jumbo v1, "persist.arm64.memtag.default"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 753
    :cond_c1
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 754
    iget v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_11f

    .line 755
    :cond_cf
    const-string/jumbo v2, "sync"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 756
    iget v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v2, 0x180000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_11f

    .line 757
    :cond_e0
    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11f

    .line 759
    iget v2, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeCurrentTaggingLevel()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 760
    const-string v2, "Zygote"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown memory tag level for the system server: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11f

    .line 762
    :cond_111
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 765
    iget v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_120

    .line 762
    :cond_11f
    :goto_11f
    nop

    .line 770
    :goto_120
    iget v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 772
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v1

    if-eqz v1, :cond_133

    .line 773
    iget v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 777
    :cond_133
    iget v1, v0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v2, v0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v3, v0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    iget v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    iget-wide v8, v0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    const/4 v5, 0x0

    invoke-static/range {v1 .. v9}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I

    move-result v1
    :try_end_144
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ba .. :try_end_144} :catch_164

    .line 786
    nop

    .line 789
    if-nez v1, :cond_158

    .line 790
    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_150

    .line 791
    invoke-static {p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    .line 794
    :cond_150
    invoke-virtual {p2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 795
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteArguments;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0

    .line 798
    :cond_158
    const/4 p0, 0x0

    return-object p0

    .line 738
    :catch_15a
    move-exception v0

    move-object p0, v0

    .line 739
    :try_start_15c
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Unexpected argument error for forking system server"

    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_164
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15c .. :try_end_164} :catch_164

    .line 784
    :catch_164
    move-exception v0

    move-object p0, v0

    .line 785
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 712
    :catch_16c
    move-exception v0

    move-object p0, v0

    .line 713
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to capget()"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static blacklist gcAndFinalize()V
    .registers 0

    .line 479
    invoke-static {}, Ldalvik/system/ZygoteHooks;->gcAndFinalize()V

    .line 480
    return-void
.end method

.method private static blacklist getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 569
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_14

    .line 570
    const-string v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_14

    .line 572
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    .line 576
    :cond_14
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static blacklist handleSystemServerProcess(Lcom/android/internal/os/ZygoteArguments;)Ljava/lang/Runnable;
    .registers 13

    .line 487
    sget v0, Landroid/system/OsConstants;->S_IRWXG:I

    sget v1, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/system/Os;->umask(I)I

    .line 489
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 490
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 493
    :cond_11
    const-string v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    const/4 v2, 0x1

    const-string v3, "1"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "Zygote"

    if-eqz v1, :cond_5f

    .line 497
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_2e

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_5f

    .line 499
    :cond_2e
    :try_start_2e
    const-string v0, "Preparing system server profile"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v0, "STANDALONE_SYSTEMSERVER_JARS"

    .line 501
    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_48

    .line 503
    const-string v7, ":"

    new-array v8, v5, [Ljava/lang/CharSequence;

    aput-object v1, v8, v4

    aput-object v0, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 504
    :cond_48
    move-object v0, v1

    .line 505
    :goto_49
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->prepareSystemServerProfile(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4c} :catch_59

    .line 507
    :try_start_4c
    const-string v0, "debug.tracing.profile_system_server"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_51} :catch_52
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_51} :catch_59

    .line 510
    goto :goto_58

    .line 508
    :catch_52
    move-exception v0

    .line 509
    :try_start_53
    const-string v7, "Failed to set debug.tracing.profile_system_server"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_59

    .line 513
    :goto_58
    goto :goto_5f

    .line 511
    :catch_59
    move-exception v0

    .line 512
    const-string v7, "Failed to set up system server profile"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    :cond_5f
    :goto_5f
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileBootClasspath()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 522
    :try_start_65
    const-string v0, "debug.tracing.profile_boot_classpath"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_6a} :catch_6b

    .line 525
    goto :goto_71

    .line 523
    :catch_6b
    move-exception v0

    .line 524
    const-string v3, "Failed to set debug.tracing.profile_boot_classpath"

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-eqz v0, :cond_a0

    .line 529
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    .line 533
    if-eqz v1, :cond_89

    .line 534
    array-length v3, v0

    add-int/2addr v3, v5

    new-array v3, v3, [Ljava/lang/String;

    .line 535
    const-string v6, "-cp"

    aput-object v6, v3, v4

    .line 536
    aput-object v1, v3, v2

    .line 537
    array-length v1, v0

    invoke-static {v0, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    move-object v11, v3

    goto :goto_8a

    .line 533
    :cond_89
    move-object v11, v0

    .line 541
    :goto_8a
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget v8, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    .line 543
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v9

    .line 541
    const/4 v10, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 545
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected return from WrapperInit.execApplication"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 547
    :cond_a0
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_ad

    .line 549
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 555
    :cond_ad
    iget v1, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object v2, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object p0, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist hasSecondZygote(Ljava/lang/String;)Z
    .registers 2

    .line 940
    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static blacklist isExperimentEnabled(Ljava/lang/String;)Z
    .registers 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dalvik.vm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persist.device_config.runtime_native_boot."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static blacklist isPreloadComplete()Z
    .registers 1

    .line 950
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    return v0
.end method

.method static blacklist lazyPreload()V
    .registers 4

    .line 177
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 178
    const-string v0, "Zygote"

    const-string v1, "Lazily preloading resources."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "ZygoteInitTiming_lazy"

    const-wide/16 v2, 0x4000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 181
    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 17

    .line 815
    move-object/from16 v0, p0

    const-string v1, "--socket-name="

    const-string v2, "--abi-list="

    const-string v3, "Zygote"

    .line 819
    invoke-static {}, Ldalvik/system/ZygoteHooks;->startZygoteNoThreadCreation()V

    .line 823
    const/4 v4, 0x0

    :try_start_c
    invoke-static {v4, v4}, Landroid/system/Os;->setpgid(II)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_f} :catch_13c

    .line 826
    nop

    .line 831
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 832
    const-string v8, "1"

    const-string/jumbo v9, "sys.boot_completed"

    .line 833
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 832
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 835
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v9

    if-eqz v9, :cond_2a

    const-string v9, "Zygote64Timing"

    goto :goto_2c

    :cond_2a
    const-string v9, "Zygote32Timing"

    .line 836
    :goto_2c
    new-instance v10, Landroid/util/TimingsTraceLog;

    const-wide/16 v11, 0x4000

    invoke-direct {v10, v9, v11, v12}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 838
    const-string v9, "ZygoteInit"

    invoke-virtual {v10, v9}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 839
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->preForkInit()V
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_12d

    .line 841
    nop

    .line 842
    nop

    .line 843
    nop

    .line 844
    nop

    .line 845
    const-string/jumbo v9, "zygote"

    move v12, v4

    move-object v14, v9

    const/4 v13, 0x1

    const/4 v15, 0x0

    :goto_46
    :try_start_46
    array-length v5, v0

    if-ge v13, v5, :cond_a5

    .line 846
    const-string/jumbo v5, "start-system-server"

    aget-object v11, v0, v13

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 847
    const/4 v12, 0x1

    goto :goto_87

    .line 848
    :cond_56
    const-string v5, "--enable-lazy-preload"

    aget-object v11, v0, v13

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 849
    const/4 v4, 0x1

    goto :goto_87

    .line 850
    :cond_62
    aget-object v5, v0, v13

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 851
    aget-object v5, v0, v13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_87

    .line 852
    :cond_75
    aget-object v5, v0, v13

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 853
    aget-object v5, v0, v13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 845
    :goto_87
    add-int/lit8 v13, v13, 0x1

    goto :goto_46

    .line 855
    :cond_8a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command line argument: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 859
    :cond_a5
    invoke-virtual {v14, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 860
    if-nez v8, :cond_c3

    .line 861
    const/16 v1, 0xf0

    if-eqz v0, :cond_b5

    .line 862
    const/16 v2, 0x11

    invoke-static {v1, v2, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    goto :goto_c3

    .line 865
    :cond_b5
    const-string/jumbo v2, "zygote_secondary"

    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 866
    const/16 v2, 0x12

    invoke-static {v1, v2, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 872
    :cond_c3
    :goto_c3
    if-eqz v15, :cond_125

    .line 878
    if-nez v4, :cond_e6

    .line 879
    const-string v1, "ZygotePreload"

    invoke-virtual {v10, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 880
    nop

    .line 881
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 880
    const/16 v4, 0xbcc

    invoke-static {v4, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 882
    invoke-static {v10}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 883
    nop

    .line 884
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 883
    const/16 v4, 0xbd6

    invoke-static {v4, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 885
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 889
    :cond_e6
    const-string v1, "PostZygoteInitGC"

    invoke-virtual {v10, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 890
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    .line 891
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 893
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 895
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->initNativeState(Z)V

    .line 897
    invoke-static {}, Ldalvik/system/ZygoteHooks;->stopZygoteNoThreadCreation()V

    .line 899
    new-instance v1, Lcom/android/internal/os/ZygoteServer;

    invoke-direct {v1, v0}, Lcom/android/internal/os/ZygoteServer;-><init>(Z)V
    :try_end_ff
    .catchall {:try_start_46 .. :try_end_ff} :catchall_12d

    .line 901
    if-eqz v12, :cond_112

    .line 902
    :try_start_101
    invoke-static {v15, v14, v1}, Lcom/android/internal/os/ZygoteInit;->forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v0

    .line 906
    if-eqz v0, :cond_112

    .line 907
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_10a
    .catchall {:try_start_101 .. :try_end_10a} :catchall_10f

    .line 921
    nop

    .line 922
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 908
    return-void

    .line 917
    :catchall_10f
    move-exception v0

    move-object v5, v1

    goto :goto_12f

    .line 912
    :cond_112
    :try_start_112
    const-string v0, "Accepting command socket connections"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-virtual {v1, v15}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_11b
    .catchall {:try_start_112 .. :try_end_11b} :catchall_10f

    .line 921
    nop

    .line 922
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 928
    if-eqz v0, :cond_124

    .line 929
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 931
    :cond_124
    return-void

    .line 873
    :cond_125
    :try_start_125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No ABI list supplied."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12d
    .catchall {:try_start_125 .. :try_end_12d} :catchall_12d

    .line 917
    :catchall_12d
    move-exception v0

    const/4 v5, 0x0

    .line 918
    :goto_12f
    :try_start_12f
    const-string v1, "System zygote died with fatal exception"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 919
    throw v0
    :try_end_135
    .catchall {:try_start_12f .. :try_end_135} :catchall_135

    .line 921
    :catchall_135
    move-exception v0

    if-eqz v5, :cond_13b

    .line 922
    invoke-virtual {v5}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 924
    :cond_13b
    throw v0

    .line 824
    :catch_13c
    move-exception v0

    .line 825
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to setpgid(0,0)"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist maybePreloadGraphicsDriver()V
    .registers 2

    .line 222
    const-string/jumbo v0, "ro.zygote.disable_gl_preload"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 223
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadGraphicsDriver()V

    .line 225
    :cond_d
    return-void
.end method

.method private static native blacklist nativePreloadAppProcessHALs()V
.end method

.method static native blacklist nativePreloadGraphicsDriver()V
.end method

.method private static native blacklist nativeZygoteInit()V
.end method

.method private static blacklist prefetchStandaloneSystemServerJars()V
    .registers 5

    .line 584
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 589
    return-void

    .line 591
    :cond_7
    const-string v0, "STANDALONE_SYSTEMSERVER_JARS"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 593
    return-void

    .line 595
    :cond_14
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_41

    aget-object v3, v0, v2

    .line 597
    nop

    .line 598
    :try_start_21
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 597
    invoke-static {v3, v4}, Lcom/android/internal/os/SystemServerClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    :try_end_28
    .catch Ljava/lang/Error; {:try_start_21 .. :try_end_28} :catch_29

    .line 605
    goto :goto_3e

    .line 599
    :catch_29
    move-exception v4

    .line 602
    nop

    .line 604
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 603
    const-string v4, "Failed to prefetch standalone system server jar \"%s\": %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 602
    const-string v4, "Zygote"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 607
    :cond_41
    return-void
.end method

.method static blacklist preload(Landroid/util/TimingsTraceLog;)V
    .registers 5

    .line 128
    const-string v0, "begin preload"

    const-string v1, "Zygote"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "BeginPreload"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->beginPreload()V

    .line 131
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 132
    const-string v0, "PreloadClasses"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 134
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 135
    const-string v0, "CacheNonBootClasspathClassLoaders"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->cacheNonBootClasspathClassLoaders()V

    .line 137
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 138
    const-string v0, "PreloadResources"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Landroid/content/res/Resources;->preloadResources()V

    .line 140
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 141
    const-string p0, "PreloadAppProcessHALs"

    const-wide/16 v2, 0x4000

    invoke-static {v2, v3, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadAppProcessHALs()V

    .line 143
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 144
    const-string p0, "PreloadGraphicsDriver"

    invoke-static {v2, v3, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->maybePreloadGraphicsDriver()V

    .line 146
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 147
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    .line 148
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    .line 152
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/net/http/Flags;->preloadHttpengineInZygote()Z

    move-result p0

    if-eqz p0, :cond_72

    .line 154
    :try_start_57
    invoke-static {}, Landroid/net/http/HttpEngine;->preload()V
    :try_end_5a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 164
    goto :goto_72

    .line 155
    :catch_5b
    move-exception p0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpEngine.preload() threw "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_72
    :goto_72
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 169
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->endPreload()V

    .line 170
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->warmUpJcaProviders()V

    .line 171
    const-string p0, "end preload"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    .line 174
    return-void
.end method

.method private static blacklist preloadClasses()V
    .registers 18

    .line 285
    const-string v1, "Failed to restore root"

    const-string v2, "ResetJitCounters"

    const-string v3, "PreloadDexCaches"

    const-string v4, "Zygote"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    .line 289
    :try_start_c
    new-instance v6, Ljava/io/FileInputStream;

    const-string v0, "/system/etc/preloaded-classes"

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_13} :catch_1ea

    .line 293
    nop

    .line 295
    const-string v0, "Preloading classes..."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 299
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v0

    .line 300
    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v9

    .line 305
    nop

    .line 306
    const/4 v11, 0x0

    if-nez v0, :cond_3f

    if-nez v9, :cond_3f

    .line 308
    const/16 v0, 0x270f

    :try_start_2d
    invoke-static {v11, v0}, Landroid/system/Os;->setregid(II)V

    .line 309
    invoke-static {v11, v0}, Landroid/system/Os;->setreuid(II)V
    :try_end_33
    .catch Landroid/system/ErrnoException; {:try_start_2d .. :try_end_33} :catch_36

    .line 312
    nop

    .line 314
    const/4 v9, 0x1

    goto :goto_40

    .line 310
    :catch_36
    move-exception v0

    .line 311
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to drop root"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 318
    :cond_3f
    move v9, v11

    :goto_40
    const-wide/16 v12, 0x4000

    :try_start_42
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v15, 0x100

    invoke-direct {v14, v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 321
    nop

    .line 322
    move v15, v11

    .line 324
    :goto_50
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_54} :catch_186
    .catchall {:try_start_42 .. :try_end_54} :catchall_184

    if-eqz v0, :cond_10d

    .line 326
    :try_start_56
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 327
    const-string v0, "#"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fd

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 328
    move-wide/from16 v16, v12

    goto/16 :goto_ff

    .line 331
    :cond_6e
    invoke-static {v12, v13, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_71} :catch_108
    .catchall {:try_start_56 .. :try_end_71} :catchall_103

    .line 338
    const/4 v0, 0x0

    move-wide/from16 v16, v12

    const/4 v12, 0x1

    :try_start_75
    invoke-static {v10, v12, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_78
    .catch Ljava/lang/ClassNotFoundException; {:try_start_75 .. :try_end_78} :catch_cf
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_75 .. :try_end_78} :catch_ad
    .catchall {:try_start_75 .. :try_end_78} :catchall_7c

    .line 339
    add-int/lit8 v15, v15, 0x1

    .line 359
    :cond_7a
    :goto_7a
    goto/16 :goto_f6

    .line 350
    :catchall_7c
    move-exception v0

    .line 351
    :try_start_7d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error preloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    instance-of v7, v0, Ljava/lang/Error;

    if-nez v7, :cond_aa

    .line 354
    instance-of v7, v0, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_a4

    .line 355
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 357
    :cond_a4
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 353
    :cond_aa
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 348
    :catch_ad
    move-exception v0

    .line 349
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problem preloading "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ": "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 340
    :catch_cf
    move-exception v0

    .line 341
    const-string v0, "$$Lambda$"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 342
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    if-eqz v0, :cond_7a

    .line 343
    add-int/lit8 v11, v11, 0x1

    goto :goto_7a

    .line 346
    :cond_df
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Class not found for preloading: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 360
    :goto_f6
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    move-wide/from16 v12, v16

    goto/16 :goto_50

    .line 327
    :cond_fd
    move-wide/from16 v16, v12

    .line 324
    :goto_ff
    move-wide/from16 v12, v16

    goto/16 :goto_50

    .line 371
    :catchall_103
    move-exception v0

    move-wide/from16 v16, v12

    goto/16 :goto_1bb

    .line 368
    :catch_108
    move-exception v0

    move-wide/from16 v16, v12

    goto/16 :goto_187

    .line 363
    :cond_10d
    move-wide/from16 v16, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "...preloaded "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " classes in "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "ms."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    if-eqz v0, :cond_156

    if-eqz v11, :cond_156

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unresolved lambda preloads: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_156} :catch_186
    .catchall {:try_start_7d .. :try_end_156} :catchall_184

    .line 371
    :cond_156
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 374
    move-wide/from16 v6, v16

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 375
    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 376
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 381
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileBootClasspath()Z

    move-result v0

    if-eqz v0, :cond_173

    .line 382
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 383
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 384
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 388
    :cond_173
    if-eqz v9, :cond_1ba

    .line 390
    const/4 v2, 0x0

    :try_start_176
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 391
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_17c
    .catch Landroid/system/ErrnoException; {:try_start_176 .. :try_end_17c} :catch_17d

    goto :goto_1b2

    .line 392
    :catch_17d
    move-exception v0

    .line 393
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 371
    :catchall_184
    move-exception v0

    goto :goto_1bb

    .line 368
    :catch_186
    move-exception v0

    .line 369
    :goto_187
    :try_start_187
    const-string v7, "Error reading /system/etc/preloaded-classes."

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18c
    .catchall {:try_start_187 .. :try_end_18c} :catchall_184

    .line 371
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 374
    const-wide/16 v6, 0x4000

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 375
    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 376
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 381
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileBootClasspath()Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 382
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 383
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 384
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 388
    :cond_1a9
    if-eqz v9, :cond_1ba

    .line 390
    const/4 v2, 0x0

    :try_start_1ac
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 391
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_1b2
    .catch Landroid/system/ErrnoException; {:try_start_1ac .. :try_end_1b2} :catch_1b3

    .line 394
    :goto_1b2
    goto :goto_1ba

    .line 392
    :catch_1b3
    move-exception v0

    .line 393
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 397
    :cond_1ba
    :goto_1ba
    return-void

    .line 371
    :goto_1bb
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 374
    const-wide/16 v6, 0x4000

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 375
    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 376
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 381
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileBootClasspath()Z

    move-result v3

    if-eqz v3, :cond_1d8

    .line 382
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 383
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 384
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 388
    :cond_1d8
    if-eqz v9, :cond_1e9

    .line 390
    const/4 v2, 0x0

    :try_start_1db
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 391
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_1e1
    .catch Landroid/system/ErrnoException; {:try_start_1db .. :try_end_1e1} :catch_1e2

    .line 394
    goto :goto_1e9

    .line 392
    :catch_1e2
    move-exception v0

    .line 393
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 396
    :cond_1e9
    :goto_1e9
    throw v0

    .line 290
    :catch_1ea
    move-exception v0

    .line 291
    const-string v0, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method private static blacklist preloadSharedLibraries()V
    .registers 2

    .line 196
    const-string v0, "Zygote"

    const-string v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v0, "android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 198
    const-string v0, "jnigraphics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->perfettoSdkTracingV3()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 200
    const-string/jumbo v0, "perfetto_framework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 205
    :cond_1d
    const-string v0, "config.disable_renderscript"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 206
    const-string v0, "compiler_rt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 208
    :cond_2b
    return-void
.end method

.method private static blacklist preloadTextResources()V
    .registers 0

    .line 228
    invoke-static {}, Landroid/text/Hyphenator;->init()V

    .line 229
    invoke-static {}, Landroid/widget/TextView;->preloadFontCache()V

    .line 230
    return-void
.end method

.method private static blacklist prepareSystemServerProfile(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 617
    return-void

    .line 619
    :cond_7
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 621
    nop

    .line 622
    const-string v0, "installd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v1

    .line 624
    nop

    .line 625
    nop

    .line 626
    nop

    .line 629
    const/16 v0, 0x3e8

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/4 v0, 0x0

    aget-object v6, p0, v0

    .line 626
    const-string v2, "android"

    const/4 v3, 0x0

    const-string/jumbo v5, "primary.prof"

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 634
    invoke-static {v0, v2}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 636
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 637
    invoke-static {v0, v2}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 639
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 640
    const/4 v3, 0x1

    invoke-static {v2, v1, v0, p0, v3}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 646
    return-void
.end method

.method public static blacklist setApiDenylistExemptions([Ljava/lang/String;)V
    .registers 2

    .line 652
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiExemptions([Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method public static blacklist setHiddenApiAccessLogSampleRate(I)V
    .registers 2

    .line 656
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiAccessLogSamplingRate(I)V

    .line 657
    return-void
.end method

.method public static blacklist setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V
    .registers 1

    .line 664
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    invoke-static {p0}, Ldalvik/system/VMRuntime;->setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V

    .line 665
    return-void
.end method

.method private static blacklist shouldProfileBootClasspath()Z
    .registers 1

    .line 275
    const-string/jumbo v0, "profilebootclasspath"

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->isExperimentEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static blacklist shouldProfileSystemServer()Z
    .registers 1

    .line 271
    const-string/jumbo v0, "profilesystemserver"

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->isExperimentEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist waitForSecondaryZygote(Ljava/lang/String;)V
    .registers 2

    .line 944
    const-string/jumbo v0, "zygote"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 945
    const-string/jumbo v0, "zygote_secondary"

    goto :goto_e

    :cond_d
    nop

    .line 946
    :goto_e
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Ljava/lang/String;)V

    .line 947
    return-void
.end method

.method private static blacklist warmUpJcaProviders()V
    .registers 10

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 240
    const-string v2, "Starting installation of AndroidKeyStoreProvider"

    const-wide/16 v3, 0x4000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 243
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreProvider;->install()V

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed AndroidKeyStoreProvider in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v2, "Zygote"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 249
    const-string v0, "Starting warm up of JCA providers"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 251
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v7, v0

    const/4 v8, 0x0

    :goto_43
    if-ge v8, v7, :cond_4d

    aget-object v9, v0, v8

    .line 252
    invoke-virtual {v9}, Ljava/security/Provider;->warmUpServiceProvision()V

    .line 251
    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    .line 254
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warmed up JCA providers in "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 257
    return-void
.end method

.method public static blacklist zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .registers 7

    .line 979
    const-wide/16 v0, 0x40

    const-string v2, "ZygoteInit"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 980
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    .line 982
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 983
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativeZygoteInit()V

    .line 984
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method
