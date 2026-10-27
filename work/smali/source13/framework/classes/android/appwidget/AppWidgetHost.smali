.class public Landroid/appwidget/AppWidgetHost;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHost$UpdateHandler;,
        Landroid/appwidget/AppWidgetHost$Callbacks;
    }
.end annotation


# static fields
.field static final blacklist HANDLE_APP_WIDGET_REMOVED:I = 0x5

.field static final greylist-max-o HANDLE_PROVIDERS_CHANGED:I = 0x3

.field static final greylist-max-o HANDLE_PROVIDER_CHANGED:I = 0x2

.field static final greylist-max-o HANDLE_UPDATE:I = 0x1

.field static final greylist-max-r HANDLE_VIEW_DATA_CHANGED:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "AppWidgetHost"

.field static greylist sService:Lcom/android/internal/appwidget/IAppWidgetService;

.field static greylist-max-o sServiceInitialized:Z

.field static final greylist-max-o sServiceLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

.field private greylist-max-o mContextOpPackageName:Ljava/lang/String;

.field private greylist-max-o mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final greylist mHandler:Landroid/os/Handler;

.field private final greylist-max-o mHostId:I

.field private blacklist mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private final greylist-max-o mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/appwidget/AppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$InteractionHandler;Landroid/os/Looper;)V

    .line 176
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;ILandroid/widget/RemoteViews$InteractionHandler;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    .line 184
    iput p2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    .line 185
    iput-object p3, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 186
    new-instance v0, Landroid/appwidget/AppWidgetHost$UpdateHandler;

    invoke-direct {v0, p0, p4}, Landroid/appwidget/AppWidgetHost$UpdateHandler;-><init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    .line 187
    new-instance v1, Landroid/appwidget/AppWidgetHost$Callbacks;

    invoke-direct {v1, v0}, Landroid/appwidget/AppWidgetHost$Callbacks;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 189
    invoke-static {p1}, Landroid/appwidget/AppWidgetHost;->bindService(Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method private static greylist-max-o bindService(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 193
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    sget-boolean v1, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    if-eqz v1, :cond_9

    .line 195
    monitor-exit v0

    return-void

    .line 197
    :cond_9
    const/4 v1, 0x1

    sput-boolean v1, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 199
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android.software.app_widgets"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_27

    .line 201
    monitor-exit v0

    return-void

    .line 203
    :cond_27
    const-string v2, "appwidget"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 204
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v3

    sput-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 205
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "b":Landroid/os/IBinder;
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public static whitelist deleteAllHosts()V
    .registers 3

    .line 396
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 397
    return-void

    .line 400
    :cond_5
    :try_start_5
    invoke-interface {v0}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAllHosts()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    .line 404
    nop

    .line 405
    return-void

    .line 402
    :catch_a
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist allocateAppWidgetId()I
    .registers 4

    .line 275
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 276
    const/4 v0, -0x1

    return v0

    .line 279
    :cond_6
    :try_start_6
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->allocateAppWidgetId(Ljava/lang/String;I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 281
    :catch_f
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist clearViews()V
    .registers 3

    .line 514
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v0

    .line 515
    :try_start_3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 516
    monitor-exit v0

    .line 517
    return-void

    .line 516
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final whitelist createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 413
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 414
    const/4 v0, 0x0

    return-object v0

    .line 416
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 417
    .local v0, "view":Landroid/appwidget/AppWidgetHostView;
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 418
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 419
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v1

    .line 420
    :try_start_15
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_32

    .line 424
    :try_start_1b
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_23} :catch_28

    .line 427
    .local v1, "views":Landroid/widget/RemoteViews;
    nop

    .line 428
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 430
    return-object v0

    .line 425
    .end local v1    # "views":Landroid/widget/RemoteViews;
    :catch_28
    move-exception v1

    .line 426
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 421
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public whitelist deleteAppWidgetId(I)V
    .registers 6
    .param p1, "appWidgetId"    # I

    .line 353
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 354
    return-void

    .line 356
    :cond_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v0

    .line 357
    :try_start_8
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_21

    .line 359
    :try_start_d
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAppWidgetId(Ljava/lang/String;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_17
    .catchall {:try_start_d .. :try_end_14} :catchall_21

    .line 363
    nop

    .line 364
    :try_start_15
    monitor-exit v0

    .line 365
    return-void

    .line 361
    :catch_17
    move-exception v1

    .line 362
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/appwidget/AppWidgetHost;
    .end local p1    # "appWidgetId":I
    throw v2

    .line 364
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/appwidget/AppWidgetHost;
    .restart local p1    # "appWidgetId":I
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist deleteHost()V
    .registers 4

    .line 376
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 377
    return-void

    .line 380
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteHost(Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    .line 384
    nop

    .line 385
    return-void

    .line 382
    :catch_e
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist dispatchOnAppWidgetRemoved(I)V
    .registers 4
    .param p1, "appWidgetId"    # I

    .line 468
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v0

    .line 469
    :try_start_3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 470
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 471
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->onAppWidgetRemoved(I)V

    .line 472
    return-void

    .line 470
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist getAppWidgetIds()[I
    .registers 4

    .line 339
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_8

    .line 340
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 343
    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIdsForHost(Ljava/lang/String;I)[I

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    return-object v0

    .line 344
    :catch_11
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist onAppWidgetRemoved(I)V
    .registers 2
    .param p1, "appWidgetId"    # I

    .line 480
    return-void
.end method

.method protected whitelist onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 439
    new-instance v0, Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-object v0
.end method

.method protected whitelist onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 7
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 447
    if-eqz p2, :cond_37

    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_37

    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_37

    .line 449
    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "resPath":Ljava/lang/String;
    const-string v1, "AppWidgetHost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProviderChanged appWidget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v0    # "resPath":Ljava/lang/String;
    :cond_37
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    .line 459
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v0

    .line 460
    :try_start_3f
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    .line 461
    .local v1, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_4e

    .line 462
    if-eqz v1, :cond_4d

    .line 463
    invoke-virtual {v1, p2}, Landroid/appwidget/AppWidgetHostView;->resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 465
    :cond_4d
    return-void

    .line 461
    .end local v1    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method protected whitelist onProvidersChanged()V
    .registers 1

    .line 488
    return-void
.end method

.method public blacklist setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 2
    .param p1, "interactionHandler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 332
    iput-object p1, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 333
    return-void
.end method

.method public final whitelist startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appWidgetId"    # I
    .param p3, "intentFlags"    # I
    .param p4, "requestCode"    # I
    .param p5, "options"    # Landroid/os/Bundle;

    .line 307
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 308
    return-void

    .line 311
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    move-result-object v0

    .line 313
    .local v0, "intentSender":Landroid/content/IntentSender;
    if-eqz v0, :cond_1a

    .line 314
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, v0

    move v3, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 323
    .end local v0    # "intentSender":Landroid/content/IntentSender;
    nop

    .line 324
    return-void

    .line 317
    .restart local v0    # "intentSender":Landroid/content/IntentSender;
    :cond_1a
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    .end local p0    # "this":Landroid/appwidget/AppWidgetHost;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "appWidgetId":I
    .end local p3    # "intentFlags":I
    .end local p4    # "requestCode":I
    .end local p5    # "options":Landroid/os/Bundle;
    throw v1
    :try_end_20
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5 .. :try_end_20} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_20

    .line 321
    .end local v0    # "intentSender":Landroid/content/IntentSender;
    .restart local p0    # "this":Landroid/appwidget/AppWidgetHost;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "appWidgetId":I
    .restart local p3    # "intentFlags":I
    .restart local p4    # "requestCode":I
    .restart local p5    # "options":Landroid/os/Bundle;
    :catch_20
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2a
    move-exception v0

    .line 320
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
.end method

.method public whitelist startListening()V
    .registers 8

    .line 213
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 214
    return-void

    .line 217
    :cond_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v0

    .line 218
    :try_start_8
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 219
    .local v1, "N":I
    new-array v2, v1, [I

    .line 220
    .local v2, "idsToUpdate":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_1e

    .line 221
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 223
    .end local v1    # "N":I
    .end local v3    # "i":I
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_6f

    .line 226
    :try_start_1f
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v4, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2f} :catch_65

    .line 231
    .local v0, "updates":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/PendingHostUpdate;>;"
    nop

    .line 233
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 234
    .restart local v1    # "N":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_35
    if-ge v3, v1, :cond_64

    .line 235
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/PendingHostUpdate;

    .line 236
    .local v4, "update":Landroid/appwidget/PendingHostUpdate;
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->type:I

    packed-switch v5, :pswitch_data_72

    goto :goto_61

    .line 247
    :pswitch_43
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHost;->dispatchOnAppWidgetRemoved(I)V

    goto :goto_61

    .line 244
    :pswitch_49
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget v6, v4, Landroid/appwidget/PendingHostUpdate;->viewId:I

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->viewDataChanged(II)V

    .line 245
    goto :goto_61

    .line 241
    :pswitch_51
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v6, v4, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 242
    goto :goto_61

    .line 238
    :pswitch_59
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v6, v4, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    .line 239
    nop

    .line 234
    .end local v4    # "update":Landroid/appwidget/PendingHostUpdate;
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 251
    .end local v3    # "i":I
    :cond_64
    return-void

    .line 229
    .end local v0    # "updates":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/PendingHostUpdate;>;"
    .end local v1    # "N":I
    :catch_65
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "idsToUpdate":[I
    :catchall_6f
    move-exception v1

    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v1

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_43
    .end packed-switch
.end method

.method public whitelist stopListening()V
    .registers 4

    .line 258
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 259
    return-void

    .line 262
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->stopListening(Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    .line 266
    nop

    .line 267
    return-void

    .line 264
    :catch_e
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method greylist-max-o updateAppWidgetView(ILandroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 492
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v0

    .line 493
    :try_start_3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    .line 494
    .local v1, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 495
    if-eqz v1, :cond_11

    .line 496
    invoke-virtual {v1, p2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 498
    :cond_11
    return-void

    .line 494
    .end local v1    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method greylist-max-o viewDataChanged(II)V
    .registers 5
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I

    .line 502
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    monitor-enter v0

    .line 503
    :try_start_3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    .line 504
    .local v1, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 505
    if-eqz v1, :cond_11

    .line 506
    invoke-virtual {v1, p2}, Landroid/appwidget/AppWidgetHostView;->viewDataChanged(I)V

    .line 508
    :cond_11
    return-void

    .line 504
    .end local v1    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method
