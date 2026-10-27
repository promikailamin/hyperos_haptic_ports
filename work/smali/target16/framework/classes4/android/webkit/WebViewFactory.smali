.class public final Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactory$StartupTimestamps;,
        Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    }
.end annotation


# static fields
.field private static final greylist-max-o CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.chromium.WebViewChromiumFactoryProviderForT"

.field private static final greylist-max-o CHROMIUM_WEBVIEW_FACTORY_METHOD:Ljava/lang/String; = "create"

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist LIBLOAD_ADDRESS_SPACE_NOT_RESERVED:I = 0x2

.field public static final whitelist LIBLOAD_FAILED_JNI_CALL:I = 0x7

.field public static final whitelist LIBLOAD_FAILED_LISTING_WEBVIEW_PACKAGES:I = 0x4

.field static final blacklist LIBLOAD_FAILED_OTHER:I = 0xb

.field public static final whitelist LIBLOAD_FAILED_TO_FIND_NAMESPACE:I = 0xa

.field public static final whitelist LIBLOAD_FAILED_TO_LOAD_LIBRARY:I = 0x6

.field public static final whitelist LIBLOAD_FAILED_TO_OPEN_RELRO_FILE:I = 0x5

.field public static final whitelist LIBLOAD_FAILED_WAITING_FOR_RELRO:I = 0x3

.field public static final whitelist LIBLOAD_FAILED_WAITING_FOR_WEBVIEW_REASON_UNKNOWN:I = 0x8

.field public static final whitelist LIBLOAD_SUCCESS:I = 0x0

.field public static final whitelist LIBLOAD_WRONG_PACKAGE_NAME:I = 0x1

.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static greylist-max-o WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

.field private static greylist-max-o sDataDirectorySuffix:Ljava/lang/String;

.field private static greylist sPackageInfo:Landroid/content/pm/PackageInfo;

.field private static greylist sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final greylist-max-o sProviderLock:Ljava/lang/Object;

.field static final blacklist sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

.field private static greylist-max-o sWebViewDisabled:Z

.field private static greylist-max-o sWebViewSupported:Ljava/lang/Boolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    .line 185
    new-instance v0, Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-direct {v0}, Landroid/webkit/WebViewFactory$StartupTimestamps;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    .line 612
    const-string v0, "webviewupdate"

    sput-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o disableWebView()V
    .registers 3

    .line 223
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-nez v1, :cond_c

    .line 228
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/WebViewFactory;->sWebViewDisabled:Z

    .line 229
    monitor-exit v0

    .line 230
    return-void

    .line 225
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t disable WebView: WebView already initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method static greylist-max-o getDataDirectorySuffix()Ljava/lang/String;
    .registers 2

    .line 253
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sDataDirectorySuffix:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 255
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static whitelist getLoadedPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 2

    .line 268
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    monitor-exit v0

    return-object v1

    .line 270
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static greylist getProvider()Landroid/webkit/WebViewFactoryProvider;
    .registers 8

    .line 335
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v1, :cond_b

    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    monitor-exit v0

    return-object v1

    .line 340
    :cond_b
    sget-object v1, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/webkit/WebViewFactory$StartupTimestamps;->mWebViewLoadStart:J

    .line 341
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 342
    if-eqz v1, :cond_98

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_98

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_98

    const/16 v2, 0x403

    if-eq v1, v2, :cond_98

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_98

    .line 349
    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 354
    sget-boolean v1, Landroid/webkit/WebViewFactory;->sWebViewDisabled:Z

    if-nez v1, :cond_8a

    .line 359
    const-string v1, "WebViewFactory.getProvider()"

    const-wide/16 v2, 0x10

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_a0

    .line 361
    :try_start_3e
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProviderClass()Ljava/lang/Class;

    move-result-object v1

    .line 362
    const-string v4, "create"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/webkit/WebViewDelegate;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 365
    const-string v4, "WebViewFactoryProvider invocation"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_55} :catch_78
    .catchall {:try_start_3e .. :try_end_55} :catchall_76

    .line 367
    :try_start_55
    new-instance v4, Landroid/webkit/WebViewDelegate;

    invoke-direct {v4}, Landroid/webkit/WebViewDelegate;-><init>()V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 368
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebViewFactoryProvider;

    sput-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    .line 370
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_69
    .catchall {:try_start_55 .. :try_end_69} :catchall_71

    .line 372
    :try_start_69
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_78
    .catchall {:try_start_69 .. :try_end_6c} :catchall_76

    .line 378
    :try_start_6c
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_a0

    .line 370
    return-object v1

    .line 372
    :catchall_71
    move-exception v1

    :try_start_72
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 373
    throw v1
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_76} :catch_78
    .catchall {:try_start_72 .. :try_end_76} :catchall_76

    .line 378
    :catchall_76
    move-exception v1

    goto :goto_86

    .line 374
    :catch_78
    move-exception v1

    .line 375
    :try_start_79
    const-string v4, "WebViewFactory"

    const-string v5, "error instantiating provider"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    new-instance v4, Landroid/util/AndroidRuntimeException;

    invoke-direct {v4, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_86
    .catchall {:try_start_79 .. :try_end_86} :catchall_76

    .line 378
    :goto_86
    :try_start_86
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 379
    throw v1

    .line 355
    :cond_8a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WebView.disableWebView() was called: WebView is disabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_92
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 345
    :cond_98
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "For security reasons, WebView is not allowed in privileged processes"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 380
    :catchall_a0
    move-exception v1

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_86 .. :try_end_a2} :catchall_a0

    throw v1
.end method

.method private static greylist-max-r getProviderClass()Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .line 533
    const-string v0, "WebViewFactory"

    .line 534
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 537
    :try_start_5
    const-string v1, "WebViewFactory.getWebViewContextAndSetProvider()"

    const-wide/16 v2, 0x10

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_c
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_5 .. :try_end_c} :catch_e1

    .line 540
    :try_start_c
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewContextAndSetProvider()Landroid/content/Context;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_dc

    .line 542
    :try_start_10
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 543
    nop

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    .line 545
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 544
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v4, "WebViewFactory.getChromiumProviderClass()"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_57
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_10 .. :try_end_57} :catch_e1

    .line 549
    :try_start_57
    sget-object v4, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/webkit/WebViewFactory$StartupTimestamps;->mAddAssetsStart:J

    .line 550
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 551
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 550
    invoke-static {v4, v5}, Landroid/content/res/Resources;->registerResourcePaths(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 552
    sget-object v4, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    sget-object v5, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/webkit/WebViewFactory$StartupTimestamps;->mGetClassLoaderStart:J

    iput-wide v6, v4, Landroid/webkit/WebViewFactory$StartupTimestamps;->mAddAssetsEnd:J

    .line 554
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 555
    const-string v4, "WebViewFactory.loadNativeLibrary()"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 556
    sget-object v4, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    sget-object v5, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    .line 557
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/webkit/WebViewFactory$StartupTimestamps;->mNativeLoadStart:J

    iput-wide v6, v4, Landroid/webkit/WebViewFactory$StartupTimestamps;->mGetClassLoaderEnd:J

    .line 558
    sget-object v4, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 559
    invoke-static {v4}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v4

    .line 558
    invoke-static {v1, v4}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I

    .line 560
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 561
    const-string v4, "Class.forName()"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 562
    sget-object v4, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    sget-object v5, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/webkit/WebViewFactory$StartupTimestamps;->mProviderClassForNameStart:J

    iput-wide v6, v4, Landroid/webkit/WebViewFactory$StartupTimestamps;->mNativeLoadEnd:J
    :try_end_aa
    .catch Ljava/lang/ClassNotFoundException; {:try_start_57 .. :try_end_aa} :catch_cc
    .catchall {:try_start_57 .. :try_end_aa} :catchall_ca

    .line 565
    :try_start_aa
    invoke-static {v1}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_ae
    .catchall {:try_start_aa .. :try_end_ae} :catchall_bd

    .line 567
    :try_start_ae
    sget-object v4, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/webkit/WebViewFactory$StartupTimestamps;->mProviderClassForNameEnd:J

    .line 568
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_b9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ae .. :try_end_b9} :catch_cc
    .catchall {:try_start_ae .. :try_end_b9} :catchall_ca

    .line 574
    :try_start_b9
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_bc
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_b9 .. :try_end_bc} :catch_e1

    .line 565
    return-object v1

    .line 567
    :catchall_bd
    move-exception v1

    :try_start_be
    sget-object v4, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/webkit/WebViewFactory$StartupTimestamps;->mProviderClassForNameEnd:J

    .line 568
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 569
    throw v1
    :try_end_ca
    .catch Ljava/lang/ClassNotFoundException; {:try_start_be .. :try_end_ca} :catch_cc
    .catchall {:try_start_be .. :try_end_ca} :catchall_ca

    .line 574
    :catchall_ca
    move-exception v1

    goto :goto_d8

    .line 570
    :catch_cc
    move-exception v1

    .line 571
    :try_start_cd
    const-string v4, "error loading provider"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    new-instance v4, Landroid/util/AndroidRuntimeException;

    invoke-direct {v4, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_d8
    .catchall {:try_start_cd .. :try_end_d8} :catchall_ca

    .line 574
    :goto_d8
    :try_start_d8
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 575
    throw v1

    .line 542
    :catchall_dc
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 543
    throw v1
    :try_end_e1
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_d8 .. :try_end_e1} :catch_e1

    .line 576
    :catch_e1
    move-exception v1

    .line 577
    const-string v2, "Chromium WebView package does not exist"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    new-instance v0, Landroid/util/AndroidRuntimeException;

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method static blacklist getStartupTimestamps()Landroid/webkit/WebViewFactory$StartupTimestamps;
    .registers 1

    .line 189
    sget-object v0, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    return-object v0
.end method

.method public static greylist getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .registers 1

    .line 617
    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 618
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0

    .line 620
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist-max-o getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;
    .registers 1

    .line 626
    sget-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    .line 627
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 626
    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method private static greylist getWebViewContextAndSetProvider()Landroid/content/Context;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 443
    const-string v0, "Failed to load WebView provider: "

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    .line 445
    nop

    .line 446
    :try_start_7
    const-string v2, "WebViewUpdateService.waitForAndGetProvider()"

    const-wide/16 v3, 0x10

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_f3

    .line 449
    :try_start_e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 450
    const-class v2, Landroid/webkit/WebViewUpdateManager;

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebViewUpdateManager;

    .line 451
    invoke-virtual {v2}, Landroid/webkit/WebViewUpdateManager;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v2

    goto :goto_29

    .line 453
    :cond_21
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v2

    invoke-interface {v2}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v2
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_ee

    .line 456
    :goto_29
    :try_start_29
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 457
    nop

    .line 458
    iget v5, v2, Landroid/webkit/WebViewProviderResponse;->status:I

    const/4 v6, 0x3

    if-eqz v5, :cond_54

    iget v5, v2, Landroid/webkit/WebViewProviderResponse;->status:I

    if-ne v5, v6, :cond_37

    goto :goto_54

    .line 460
    :cond_37
    new-instance v1, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Landroid/webkit/WebViewProviderResponse;->status:I

    .line 461
    invoke-static {v2}, Landroid/webkit/WebViewFactory;->getWebViewPreparationErrorReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_54
    :goto_54
    const-string v5, "ActivityManager.addPackageDependency()"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_59} :catch_f3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_59} :catch_f3

    .line 467
    :try_start_59
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v7, v2, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v7}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_e9

    .line 470
    :try_start_64
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 471
    nop

    .line 473
    nop

    .line 474
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 475
    const-string v7, "PackageManager.getPackageInfo()"

    invoke-static {v3, v4, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_72} :catch_f3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_64 .. :try_end_72} :catch_f3

    .line 477
    :try_start_72
    iget-object v7, v2, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x24c0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_e4

    .line 488
    :try_start_7c
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 489
    nop

    .line 491
    invoke-static {v5}, Landroid/webkit/WebViewFactory;->isInstalledPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_d2

    .line 499
    invoke-static {v5}, Landroid/webkit/WebViewFactory;->isEnabledPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 508
    iget-object v2, v2, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v2, v5}, Landroid/webkit/WebViewFactory;->verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    .line 510
    iget-object v2, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 512
    const-string v7, "initialApplication.createApplicationContext"

    invoke-static {v3, v4, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 514
    sget-object v7, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/webkit/WebViewFactory$StartupTimestamps;->mCreateContextStart:J
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_a0} :catch_f3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7c .. :try_end_a0} :catch_f3

    .line 517
    :try_start_a0
    invoke-virtual {v1, v2, v6}, Landroid/app/Application;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v1

    .line 520
    sput-object v5, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_a6
    .catchall {:try_start_a0 .. :try_end_a6} :catchall_b3

    .line 521
    nop

    .line 523
    :try_start_a7
    sget-object v2, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/webkit/WebViewFactory$StartupTimestamps;->mCreateContextEnd:J

    .line 524
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 521
    return-object v1

    .line 523
    :catchall_b3
    move-exception v1

    sget-object v2, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/webkit/WebViewFactory$StartupTimestamps;->mCreateContextEnd:J

    .line 524
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 525
    throw v1

    .line 500
    :cond_c0
    new-instance v1, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    const-string v2, "Current WebView Package (%s) is not enabled for the current user"

    iget-object v3, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 501
    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_d2
    new-instance v1, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    const-string v2, "Current WebView Package (%s) is not installed for the current user"

    iget-object v3, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 493
    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :catchall_e4
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 489
    throw v1

    .line 470
    :catchall_e9
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 471
    throw v1

    .line 456
    :catchall_ee
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 457
    throw v1
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_f3} :catch_f3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a7 .. :try_end_f3} :catch_f3

    .line 526
    :catch_f3
    move-exception v1

    .line 527
    new-instance v2, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 2

    .line 262
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    .line 263
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.android.webview.WebViewLibrary"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 264
    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static greylist-max-o getWebViewPreparationErrorReason(I)Ljava/lang/String;
    .registers 1

    .line 193
    sparse-switch p0, :sswitch_data_10

    .line 201
    const-string p0, "Unknown"

    return-object p0

    .line 199
    :sswitch_6
    const-string p0, "Crashed for unknown reason"

    return-object p0

    .line 197
    :sswitch_9
    const-string p0, "No WebView installed"

    return-object p0

    .line 195
    :sswitch_c
    const-string p0, "Time out waiting for Relro files being created"

    return-object p0

    nop

    :sswitch_data_10
    .sparse-switch
        0x3 -> :sswitch_c
        0x4 -> :sswitch_9
        0x8 -> :sswitch_6
    .end sparse-switch
.end method

.method public static greylist-max-o getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 278
    const-string v0, "com.android.webview.chromium.WebViewChromiumFactoryProviderForT"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist isEnabledPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 1

    .line 429
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 430
    :cond_4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    return p0
.end method

.method private static blacklist isInstalledPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 4

    .line 435
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 436
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-nez p0, :cond_16

    move v0, v1

    :cond_16
    return v0
.end method

.method static greylist-max-o isWebViewSupported()Z
    .registers 2

    .line 212
    sget-object v0, Landroid/webkit/WebViewFactory;->sWebViewSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    .line 213
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 214
    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 213
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebViewFactory;->sWebViewSupported:Ljava/lang/Boolean;

    .line 216
    :cond_18
    sget-object v0, Landroid/webkit/WebViewFactory;->sWebViewSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static whitelist loadWebViewNativeLibraryFromPackage(Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .registers 8

    .line 288
    const-string v0, "WebViewFactory"

    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 289
    return v2

    .line 292
    :cond_a
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    .line 293
    nop

    .line 295
    :try_start_f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 296
    const-class v3, Landroid/webkit/WebViewUpdateManager;

    invoke-virtual {v1, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebViewUpdateManager;

    .line 297
    invoke-virtual {v3}, Landroid/webkit/WebViewUpdateManager;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v3

    goto :goto_2a

    .line 299
    :cond_22
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v3
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_75

    .line 304
    :goto_2a
    nop

    .line 307
    iget v4, v3, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eqz v4, :cond_37

    iget v4, v3, Landroid/webkit/WebViewProviderResponse;->status:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_37

    .line 309
    iget p0, v3, Landroid/webkit/WebViewProviderResponse;->status:I

    return p0

    .line 311
    :cond_37
    iget-object v4, v3, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 312
    return v2

    .line 315
    :cond_42
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 318
    const/16 v4, 0x80

    :try_start_48
    invoke-virtual {v1, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 320
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_48 .. :try_end_52} :catch_5d

    .line 324
    nop

    .line 326
    invoke-static {p1, p0}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I

    move-result p0

    .line 329
    if-nez p0, :cond_5c

    iget p0, v3, Landroid/webkit/WebViewProviderResponse;->status:I

    return p0

    .line 330
    :cond_5c
    return p0

    .line 321
    :catch_5d
    move-exception p1

    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find package "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return v2

    .line 301
    :catch_75
    move-exception p0

    .line 302
    const-string p1, "error waiting for relro creation"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    const/16 p0, 0x8

    return p0
.end method

.method public static greylist-max-o onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .registers 4

    .line 599
    nop

    .line 601
    :try_start_1
    invoke-static {p0}, Landroid/webkit/WebViewLibraryLoader;->prepareNativeLibraries(Landroid/content/pm/PackageInfo;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    .line 605
    goto :goto_f

    .line 602
    :catchall_6
    move-exception v0

    .line 604
    const-string v1, "WebViewFactory"

    const-string v2, "error preparing webview native library"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 607
    :goto_f
    invoke-static {p0}, Landroid/webkit/WebViewZygote;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 609
    return v0
.end method

.method public static whitelist prepareWebViewInZygote()V
    .registers 3

    .line 588
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->reserveAddressSpaceInZygote()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 592
    goto :goto_c

    .line 589
    :catchall_4
    move-exception v0

    .line 591
    const-string v1, "WebViewFactory"

    const-string v2, "error preparing native loader"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    :goto_c
    return-void
.end method

.method static greylist-max-o setDataDirectorySuffix(Ljava/lang/String;)V
    .registers 5

    .line 236
    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-nez v1, :cond_32

    .line 241
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_13

    .line 245
    sput-object p0, Landroid/webkit/WebViewFactory;->sDataDirectorySuffix:Ljava/lang/String;

    .line 246
    monitor-exit v0

    .line 247
    return-void

    .line 242
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suffix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " contains a path separator"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set data directory suffix: WebView already initialized"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 246
    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method private static greylist-max-o signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .registers 7

    .line 387
    const/4 v0, 0x0

    if-nez p0, :cond_7

    .line 388
    if-nez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    .line 390
    :cond_7
    if-nez p1, :cond_a

    return v0

    .line 392
    :cond_a
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 393
    array-length v2, p0

    move v3, v0

    :goto_11
    if-ge v3, v2, :cond_1b

    aget-object v4, p0, v3

    .line 394
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 393
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 396
    :cond_1b
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 397
    array-length v2, p1

    :goto_21
    if-ge v0, v2, :cond_2b

    aget-object v3, p1, v0

    .line 398
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 400
    :cond_2b
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static greylist-max-o verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " actual: "

    if-eqz v0, :cond_77

    .line 411
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4e

    .line 416
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 420
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, p1}, Landroid/webkit/WebViewFactory;->signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 424
    return-void

    .line 421
    :cond_2b
    new-instance p0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    const-string p1, "Failed to verify WebView provider, signature mismatch"

    invoke-direct {p0, p1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 417
    :cond_33
    new-instance p0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to load an invalid WebView provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 412
    :cond_4e
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to verify WebView provider, version code is lower than expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 413
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 414
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_77
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to verify WebView provider, packageName mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
