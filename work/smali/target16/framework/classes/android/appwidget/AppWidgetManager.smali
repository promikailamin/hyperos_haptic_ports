.class public Landroid/appwidget/AppWidgetManager;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_APPWIDGET_BIND:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_BIND"

.field public static final whitelist ACTION_APPWIDGET_CONFIGURE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_CONFIGURE"

.field public static final whitelist ACTION_APPWIDGET_DELETED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DELETED"

.field public static final whitelist ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field public static final whitelist ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field public static final blacklist ACTION_APPWIDGET_ENABLE_AND_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLE_AND_UPDATE"

.field public static final whitelist ACTION_APPWIDGET_HOST_RESTORED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_HOST_RESTORED"

.field public static final whitelist ACTION_APPWIDGET_OPTIONS_CHANGED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

.field public static final whitelist ACTION_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_PICK"

.field public static final whitelist ACTION_APPWIDGET_RESTORED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_RESTORED"

.field public static final whitelist ACTION_APPWIDGET_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE"

.field public static final greylist-max-o ACTION_KEYGUARD_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

.field public static final blacklist EVENT_CATEGORY_APPWIDGET:Ljava/lang/String; = "android.appwidget"

.field static final blacklist EVENT_TYPE_WIDGET_INTERACTION:Ljava/lang/String; = "widget_interaction"

.field public static final whitelist EXTRA_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final whitelist EXTRA_APPWIDGET_IDS:Ljava/lang/String; = "appWidgetIds"

.field public static final whitelist EXTRA_APPWIDGET_OLD_IDS:Ljava/lang/String; = "appWidgetOldIds"

.field public static final whitelist EXTRA_APPWIDGET_OPTIONS:Ljava/lang/String; = "appWidgetOptions"

.field public static final whitelist EXTRA_APPWIDGET_PREVIEW:Ljava/lang/String; = "appWidgetPreview"

.field public static final whitelist EXTRA_APPWIDGET_PROVIDER:Ljava/lang/String; = "appWidgetProvider"

.field public static final whitelist EXTRA_APPWIDGET_PROVIDER_PROFILE:Ljava/lang/String; = "appWidgetProviderProfile"

.field public static final greylist-max-o EXTRA_CATEGORY_FILTER:Ljava/lang/String; = "categoryFilter"

.field public static final whitelist EXTRA_CUSTOM_EXTRAS:Ljava/lang/String; = "customExtras"

.field public static final whitelist EXTRA_CUSTOM_INFO:Ljava/lang/String; = "customInfo"

.field public static final greylist-max-o EXTRA_CUSTOM_SORT:Ljava/lang/String; = "customSort"

.field static final blacklist EXTRA_EVENT_CLICKED_VIEWS:Ljava/lang/String; = "android.appwidget.extra.EVENT_CLICKED_VIEWS"

.field static final blacklist EXTRA_EVENT_DURATION_MS:Ljava/lang/String; = "android.appwidget.extra.EVENT_DURATION_MS"

.field static final blacklist EXTRA_EVENT_END:Ljava/lang/String; = "android.appwidget.extra.EVENT_END"

.field static final blacklist EXTRA_EVENT_POSITION_RECT:Ljava/lang/String; = "android.appwidget.extra.EVENT_POSITION_RECT"

.field static final blacklist EXTRA_EVENT_SCROLLED_VIEWS:Ljava/lang/String; = "android.appwidget.extra.EVENT_SCROLLED_VIEWS"

.field static final blacklist EXTRA_EVENT_START:Ljava/lang/String; = "android.appwidget.extra.EVENT_START"

.field public static final whitelist EXTRA_HOST_ID:Ljava/lang/String; = "hostId"

.field public static final whitelist INVALID_APPWIDGET_ID:I = 0x0

.field private static final blacklist MAX_ADAPTER_CONVERSION_WAITING_TIME_MS:J = 0x4e20L

.field public static final whitelist META_DATA_APPWIDGET_PROVIDER:Ljava/lang/String; = "android.appwidget.provider"

.field public static final whitelist OPTION_APPWIDGET_HOST_CATEGORY:Ljava/lang/String; = "appWidgetCategory"

.field public static final whitelist OPTION_APPWIDGET_MAX_HEIGHT:Ljava/lang/String; = "appWidgetMaxHeight"

.field public static final whitelist OPTION_APPWIDGET_MAX_WIDTH:Ljava/lang/String; = "appWidgetMaxWidth"

.field public static final whitelist OPTION_APPWIDGET_MIN_HEIGHT:Ljava/lang/String; = "appWidgetMinHeight"

.field public static final whitelist OPTION_APPWIDGET_MIN_WIDTH:Ljava/lang/String; = "appWidgetMinWidth"

.field public static final whitelist OPTION_APPWIDGET_RESTORE_COMPLETED:Ljava/lang/String; = "appWidgetRestoreCompleted"

.field public static final whitelist OPTION_APPWIDGET_SIZES:Ljava/lang/String; = "appWidgetSizes"

.field private static final blacklist TAG:Ljava/lang/String; = "AppWidgetManager"

.field private static blacklist sUpdateExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private blacklist mHasPostedLegacyLists:Z

.field private blacklist mMaxBitmapMemory:I

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist mService:Lcom/android/internal/appwidget/IAppWidgetService;

.field private final blacklist mServiceCollectionCache:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;


# direct methods
.method public static synthetic blacklist $r8$lambda$5idQmZj0fPc4LpEWinoqSHpsASo(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$notifyCollectionWidgetChange$11(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7-wYzqPxdX2e5BMAv3u0YBBJ7f4(Landroid/appwidget/AppWidgetManager;[II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$notifyAppWidgetViewDataChanged$10([II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$H2l8plE_i5S9l2XncjALPeevjgY(Landroid/appwidget/AppWidgetManager;[ILandroid/widget/RemoteViews;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$partiallyUpdateAppWidget$8([ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TUh60cN_k9NzMDqe5i8Ws3ITn5A(Landroid/appwidget/AppWidgetManager;Landroid/widget/RemoteViews;[ILcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetManager;->lambda$tryAdapterConversion$6(Landroid/widget/RemoteViews;[ILcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WKLPyaeqLNLNb3560d7QJuq2DwQ(Landroid/appwidget/AppWidgetManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager;->lambda$new$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lPlpQtAaadvrn3Q_eUeP74kjW2E(Landroid/appwidget/AppWidgetManager;[ILandroid/widget/RemoteViews;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$updateAppWidget$7([ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lxPom2T7xrHdJn3J44yULXD7Ilk(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$updateAppWidget$9(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateExecutorService(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .registers 2

    invoke-static {p0, p1}, Landroid/appwidget/AppWidgetManager;->createExecutorService(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/appwidget/IAppWidgetService;)V
    .registers 5

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetManager;->mMaxBitmapMemory:I

    .line 622
    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    .line 643
    iput-object p1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    .line 644
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    .line 645
    iput-object p2, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 646
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 647
    new-instance p2, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    const-wide/16 v0, 0x1388

    invoke-direct {p2, p1, v0, v1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;-><init>(Landroid/content/Context;J)V

    iput-object p2, p0, Landroid/appwidget/AppWidgetManager;->mServiceCollectionCache:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    .line 648
    iget-object p1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez p1, :cond_2a

    .line 649
    return-void

    .line 653
    :cond_2a
    :try_start_2a
    iget-object p1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getMaxBitmapMemory()I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Landroid/appwidget/AppWidgetManager;->mMaxBitmapMemory:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3a} :catch_3b

    .line 656
    goto :goto_43

    .line 654
    :catch_3b
    move-exception p1

    .line 655
    const-string p2, "AppWidgetManager"

    const-string v0, "Error setting the maximum bitmap memory"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    :goto_43
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda9;-><init>(Landroid/appwidget/AppWidgetManager;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 674
    return-void
.end method

.method private greylist bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 11

    .line 1474
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1475
    const/4 p1, 0x0

    return p1

    .line 1478
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return p1

    .line 1480
    :catch_13
    move-exception v0

    move-object p1, v0

    .line 1481
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private static blacklist createExecutorService(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .registers 3

    .line 1694
    new-instance v0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist createUpdateExecutorIfNull()Ljava/util/concurrent/Executor;
    .registers 2

    .line 1686
    sget-object v0, Landroid/appwidget/AppWidgetManager;->sUpdateExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_e

    .line 1687
    const-string/jumbo v0, "widget_manager_update_helper_thread"

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/appwidget/AppWidgetManager;->createExecutorService(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Landroid/appwidget/AppWidgetManager;->sUpdateExecutor:Ljava/util/concurrent/Executor;

    .line 1690
    :cond_e
    sget-object v0, Landroid/appwidget/AppWidgetManager;->sUpdateExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
    .registers 2

    .line 632
    const-string v0, "appwidget"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetManager;

    return-object p0
.end method

.method static synthetic blacklist lambda$createExecutorService$13(ILjava/lang/Runnable;)V
    .registers 3

    .line 1695
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0, p0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1696
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1697
    return-void
.end method

.method static synthetic blacklist lambda$createExecutorService$14(ILjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    .line 1694
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Runnable;)V

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/content/ComponentName;
    .registers 1

    .line 662
    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/content/ComponentName;)Z
    .registers 2

    .line 664
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 665
    const-class v0, Landroid/appwidget/AppWidgetProvider;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    .line 666
    :catch_f
    move-exception p0

    .line 667
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$new$2(I)[Landroid/content/ComponentName;
    .registers 1

    .line 669
    new-array p0, p0, [Landroid/content/ComponentName;

    return-object p0
.end method

.method private synthetic blacklist lambda$new$3()V
    .registers 4

    .line 659
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 661
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda5;-><init>()V

    .line 662
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda7;-><init>()V

    .line 669
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    .line 659
    invoke-interface {v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyProviderInheritance([Landroid/content/ComponentName;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    .line 672
    goto :goto_3f

    .line 670
    :catch_37
    move-exception v0

    .line 671
    const-string v1, "AppWidgetManager"

    const-string v2, "Notify service of inheritance info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    :goto_3f
    return-void
.end method

.method private synthetic blacklist lambda$notifyAppWidgetViewDataChanged$10([II)V
    .registers 3

    .line 974
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->notifyCollectionWidgetChange([II)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyCollectionWidgetChange$11(ILandroid/widget/RemoteViews;)V
    .registers 5

    .line 1004
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1008
    goto :goto_10

    .line 1006
    :catch_c
    move-exception p1

    .line 1007
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1009
    :goto_10
    return-void
.end method

.method static synthetic blacklist lambda$notifyCollectionWidgetChange$12(Ljava/lang/Throwable;)Ljava/lang/Void;
    .registers 3

    .line 1010
    const-string v0, "AppWidgetManager"

    const-string v1, "Error notifying changes in RemoteViews"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1011
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic blacklist lambda$partiallyUpdateAppWidget$8([ILandroid/widget/RemoteViews;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic blacklist lambda$tryAdapterConversion$4(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;)V
    .registers 2

    .line 695
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 698
    goto :goto_8

    .line 696
    :catch_4
    move-exception p0

    .line 697
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 699
    :goto_8
    return-void
.end method

.method static synthetic blacklist lambda$tryAdapterConversion$5(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Void;
    .registers 3

    .line 700
    const-string v0, "AppWidgetManager"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic blacklist lambda$tryAdapterConversion$6(Landroid/widget/RemoteViews;[ILcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V
    .registers 8

    .line 687
    const-string v0, "AppWidgetManager"

    :try_start_2
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->shouldSkipListConversion(Landroid/widget/RemoteViews;[I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 688
    const-string p2, "Skipping legacy list conversion, pending config activity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->replaceAllIntentsWithEmptyList()V

    goto :goto_2b

    .line 691
    :cond_11
    iget p2, p0, Landroid/appwidget/AppWidgetManager;->mMaxBitmapMemory:I

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mServiceCollectionCache:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1}, Landroid/widget/RemoteViews;->collectAllIntents(IZLandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p2

    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p3, p1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;)V

    .line 693
    invoke-virtual {p2, v1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance p2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda15;

    invoke-direct {p2, p4}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda15;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_2c

    .line 706
    :goto_2b
    goto :goto_30

    .line 704
    :catch_2c
    move-exception p1

    .line 705
    invoke-static {v0, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 707
    :goto_30
    return-void
.end method

.method private synthetic blacklist lambda$updateAppWidget$7([ILandroid/widget/RemoteViews;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateAppWidget$9(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 913
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private blacklist notifyCollectionWidgetChange([II)V
    .registers 11

    .line 990
    const-string v0, "AppWidgetManager"

    :try_start_2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_4e

    aget v3, p1, v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_4f

    .line 992
    :try_start_8
    iget-object v4, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v5, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->isFirstConfigActivityPending(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 993
    const-string v3, "Skipping collection notify, pending config activity"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    goto :goto_4b

    .line 996
    :cond_18
    iget-object v4, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v5, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 997
    if-eqz v4, :cond_44

    invoke-virtual {v4, p2}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result v5

    if-nez v5, :cond_29

    goto :goto_44

    .line 1000
    :cond_29
    iget v5, p0, Landroid/appwidget/AppWidgetManager;->mMaxBitmapMemory:I

    iget-object v6, p0, Landroid/appwidget/AppWidgetManager;->mServiceCollectionCache:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/RemoteViews;->collectAllIntents(IZLandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    new-instance v6, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v3, v4}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;-><init>(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V

    .line 1002
    invoke-virtual {v5, v6}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    new-instance v4, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda3;-><init>()V

    .line 1009
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_43} :catch_45

    .line 1015
    goto :goto_4b

    .line 998
    :cond_44
    :goto_44
    goto :goto_4b

    .line 1013
    :catch_45
    move-exception v3

    .line 1014
    :try_start_46
    const-string v4, "Error notifying changes in RemoteViews"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4b} :catch_4f

    .line 990
    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1019
    :cond_4e
    goto :goto_55

    .line 1017
    :catch_4f
    move-exception p1

    .line 1018
    const-string p2, "Error notifying changes for all widgets"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1020
    :goto_55
    return-void
.end method

.method private blacklist shouldSkipListConversion(Landroid/widget/RemoteViews;[I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 724
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 725
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    aget p2, p2, v1

    .line 726
    invoke-interface {p1, v0, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->isFirstConfigActivityPending(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    nop

    .line 724
    :goto_1a
    return v1
.end method

.method private blacklist tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;[ILjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer<",
            "Landroid/widget/RemoteViews;",
            ">;",
            "Landroid/widget/RemoteViews;",
            "[I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 679
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->remoteAdapterConversion()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 680
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    if-nez v0, :cond_15

    if-eqz p2, :cond_13

    .line 681
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    .line 683
    :cond_18
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->remoteAdapterConversion()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    if-eqz v0, :cond_48

    if-eqz p2, :cond_48

    .line 684
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-direct {v3, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    .line 685
    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v5, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetManager;Landroid/widget/RemoteViews;[ILcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V

    .line 708
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_44

    .line 709
    invoke-static {}, Landroid/appwidget/AppWidgetManager;->createUpdateExecutorIfNull()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 710
    return-void

    .line 712
    :cond_44
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 713
    goto :goto_4d

    .line 683
    :cond_48
    move-object v5, p1

    .line 715
    :try_start_49
    invoke-interface {v5, p2}, Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_4e

    .line 718
    nop

    .line 720
    :goto_4d
    return-void

    .line 716
    :catch_4e
    move-exception v0

    move-object p1, v0

    .line 717
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public greylist bindAppWidgetId(ILandroid/content/ComponentName;)V
    .registers 4

    .line 1218
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 1219
    return-void

    .line 1221
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 1222
    return-void
.end method

.method public greylist-max-r bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 5

    .line 1241
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 1242
    return-void

    .line 1244
    :cond_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    .line 1245
    return-void
.end method

.method public whitelist bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    .registers 5

    .line 1264
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1265
    const/4 p1, 0x0

    return p1

    .line 1267
    :cond_6
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public whitelist bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 5

    .line 1291
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1292
    const/4 p1, 0x0

    return p1

    .line 1294
    :cond_6
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public whitelist bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 6

    .line 1319
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1320
    const/4 p1, 0x0

    return p1

    .line 1322
    :cond_6
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-r bindRemoteViewsService(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/IServiceConnection;I)Z
    .registers 15

    .line 1427
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1428
    const/4 p1, 0x0

    return p1

    .line 1431
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1432
    invoke-virtual {p1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    .line 1433
    invoke-static {p5}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v7

    .line 1431
    move v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/appwidget/IAppWidgetService;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;J)Z

    move-result p1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1f} :catch_20

    return p1

    .line 1434
    :catch_20
    move-exception v0

    move-object p1, v0

    .line 1435
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAppWidgetIds(Landroid/content/ComponentName;)[I
    .registers 3

    .line 1447
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_8

    .line 1448
    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1

    .line 1451
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object p1

    .line 1452
    :catch_f
    move-exception p1

    .line 1453
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 6

    .line 1185
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    const-string v1, "AppWidgetManager"

    if-nez v0, :cond_1e

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service wasn\'t initialized, appWidgetId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/4 p1, 0x0

    return-object p1

    .line 1190
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1191
    if-eqz v0, :cond_2e

    .line 1193
    iget-object p1, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    goto :goto_50

    .line 1195
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App widget provider info is null. PackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appWidgetId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_50} :catch_51

    .line 1198
    :goto_50
    return-object v0

    .line 1199
    :catch_51
    move-exception p1

    .line 1200
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAppWidgetOptions(I)Landroid/os/Bundle;
    .registers 4

    .line 794
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_7

    .line 795
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1

    .line 798
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    return-object p1

    .line 799
    :catch_10
    move-exception p1

    .line 800
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getInstalledProviders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1104
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_9

    .line 1105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1107
    :cond_9
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getInstalledProviders(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_9

    .line 1126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1128
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1088
    if-eqz p1, :cond_11

    .line 1093
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_b

    .line 1094
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1096
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1089
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "A non-null package must be passed to this method. If you want all widgets regardless of package, see getInstalledProvidersForProfile(UserHandle)"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1153
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_9

    .line 1154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1157
    :cond_9
    if-nez p2, :cond_11

    .line 1158
    iget-object p2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    .line 1162
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 1163
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 1162
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProvidersForProfile(IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1164
    if-nez p1, :cond_22

    .line 1165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1167
    :cond_22
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1169
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p3, v0}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    .line 1170
    goto :goto_2a

    .line 1171
    :cond_3c
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_40} :catch_41

    return-object p1

    .line 1172
    :catch_41
    move-exception p1

    .line 1173
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1062
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_9

    .line 1063
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1065
    :cond_9
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getWidgetPreview(Landroid/content/ComponentName;Landroid/os/UserHandle;I)Landroid/widget/RemoteViews;
    .registers 6

    .line 1622
    if-nez p2, :cond_8

    .line 1623
    :try_start_2
    iget-object p2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    .line 1625
    :cond_8
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->getWidgetPreview(Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/widget/RemoteViews;

    move-result-object p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_15

    return-object p1

    .line 1627
    :catch_15
    move-exception p1

    .line 1628
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o hasBindAppWidgetPermission(Ljava/lang/String;)Z
    .registers 4

    .line 1356
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1357
    const/4 p1, 0x0

    return p1

    .line 1360
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/appwidget/IAppWidgetService;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return p1

    .line 1361
    :catch_13
    move-exception p1

    .line 1362
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .registers 4

    .line 1336
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1337
    const/4 p1, 0x0

    return p1

    .line 1340
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 1341
    :catch_d
    move-exception p1

    .line 1342
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o isBoundWidgetPackage(Ljava/lang/String;I)Z
    .registers 4

    .line 1461
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 1462
    const/4 p1, 0x0

    return p1

    .line 1465
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 1466
    :catch_d
    move-exception p1

    .line 1467
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isRequestPinAppWidgetSupported()Z
    .registers 2

    .line 1491
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0}, Lcom/android/internal/appwidget/IAppWidgetService;->isRequestPinAppWidgetSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1492
    :catch_7
    move-exception v0

    .line 1493
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist noteAppWidgetTapped(I)V
    .registers 4

    .line 1561
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->noteAppWidgetTapped(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1564
    nop

    .line 1565
    return-void

    .line 1562
    :catch_9
    move-exception p1

    .line 1563
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist notifyAppWidgetViewDataChanged(II)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1041
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 1042
    return-void

    .line 1044
    :cond_5
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 1045
    return-void
.end method

.method public whitelist notifyAppWidgetViewDataChanged([II)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 966
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 967
    return-void

    .line 970
    :cond_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->remoteAdapterConversion()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 971
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    .line 972
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_25

    .line 973
    invoke-static {}, Landroid/appwidget/AppWidgetManager;->createUpdateExecutorIfNull()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda10;-><init>(Landroid/appwidget/AppWidgetManager;[II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_31

    .line 976
    :cond_25
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->notifyCollectionWidgetChange([II)V

    goto :goto_31

    .line 980
    :cond_29
    :try_start_29
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_32

    .line 983
    nop

    .line 985
    :goto_31
    return-void

    .line 981
    :catch_32
    move-exception p1

    .line 982
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V
    .registers 4

    .line 889
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 890
    return-void

    .line 892
    :cond_5
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 893
    return-void
.end method

.method public whitelist partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V
    .registers 5

    .line 855
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 856
    return-void

    .line 859
    :cond_5
    new-instance v0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda11;-><init>(Landroid/appwidget/AppWidgetManager;[I)V

    const-string v1, "Error partially updating app widget views in background"

    invoke-direct {p0, v0, p2, p1, v1}, Landroid/appwidget/AppWidgetManager;->tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;[ILjava/lang/String;)V

    .line 862
    return-void
.end method

.method public whitelist queryAppWidgetEvents(JJ)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetEvent;",
            ">;"
        }
    .end annotation

    .line 1676
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/appwidget/IAppWidgetService;->queryAppWidgetEvents(Ljava/lang/String;JJ)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1678
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    goto :goto_15

    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-object p1

    .line 1679
    :catch_16
    move-exception v0

    move-object p1, v0

    .line 1680
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeWidgetPreview(Landroid/content/ComponentName;I)V
    .registers 4

    .line 1645
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->removeWidgetPreview(Landroid/content/ComponentName;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1648
    nop

    .line 1649
    return-void

    .line 1646
    :catch_7
    move-exception p1

    .line 1647
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o requestPinAppWidget(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z
    .registers 4

    .line 1503
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/appwidget/AppWidgetManager;->requestPinAppWidget(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result p1

    return p1
.end method

.method public whitelist requestPinAppWidget(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .registers 6

    .line 1546
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    .line 1547
    if-nez p3, :cond_8

    const/4 p3, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p3

    .line 1546
    :goto_c
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->requestPinAppWidget(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return p1

    .line 1548
    :catch_11
    move-exception p1

    .line 1549
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .registers 5

    .line 1397
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 1398
    return-void

    .line 1401
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 1404
    nop

    .line 1405
    return-void

    .line 1402
    :catch_c
    move-exception p1

    .line 1403
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .registers 4

    .line 1377
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 1378
    return-void

    .line 1380
    :cond_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V

    .line 1381
    return-void
.end method

.method public blacklist setConfigActivityComplete(I)V
    .registers 3

    .line 1654
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->setConfigActivityComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1657
    goto :goto_e

    .line 1655
    :catch_6
    move-exception p1

    .line 1656
    const-string p1, "AppWidgetManager"

    const-string v0, "Error notifying config activity completed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :goto_e
    return-void
.end method

.method public whitelist setWidgetPreview(Landroid/content/ComponentName;ILandroid/widget/RemoteViews;)Z
    .registers 5

    .line 1597
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->setWidgetPreview(Landroid/content/ComponentName;ILandroid/widget/RemoteViews;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1598
    :catch_7
    move-exception p1

    .line 1599
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist updateAppWidget(ILandroid/widget/RemoteViews;)V
    .registers 4

    .line 824
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 825
    return-void

    .line 827
    :cond_5
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 828
    return-void
.end method

.method public whitelist updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 5

    .line 909
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 910
    return-void

    .line 913
    :cond_5
    new-instance v0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;-><init>(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    const-string v1, "Error updating app widget view using provider in background"

    invoke-direct {p0, v0, p2, p1, v1}, Landroid/appwidget/AppWidgetManager;->tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;[ILjava/lang/String;)V

    .line 915
    return-void
.end method

.method public whitelist updateAppWidget([ILandroid/widget/RemoteViews;)V
    .registers 5

    .line 749
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 750
    return-void

    .line 753
    :cond_5
    new-instance v0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda13;-><init>(Landroid/appwidget/AppWidgetManager;[I)V

    const-string v1, "Error updating app widget views in background"

    invoke-direct {p0, v0, p2, p1, v1}, Landroid/appwidget/AppWidgetManager;->tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;[ILjava/lang/String;)V

    .line 755
    return-void
.end method

.method public whitelist updateAppWidgetOptions(ILandroid/os/Bundle;)V
    .registers 5

    .line 772
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 773
    return-void

    .line 776
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    .line 779
    nop

    .line 780
    return-void

    .line 777
    :catch_e
    move-exception p1

    .line 778
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 4

    .line 937
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 938
    return-void

    .line 941
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 944
    nop

    .line 945
    return-void

    .line 942
    :catch_c
    move-exception p1

    .line 943
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
