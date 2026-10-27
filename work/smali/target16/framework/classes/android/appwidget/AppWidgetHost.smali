.class public Landroid/appwidget/AppWidgetHost;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;,
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

.field static final blacklist HANDLE_VIEW_UPDATE_DEFERRED:I = 0x6

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

.field private final blacklist mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateAppWidgetDeferred(Landroid/appwidget/AppWidgetHost;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetDeferred(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 5

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$InteractionHandler;Landroid/os/Looper;)V

    .line 195
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;ILandroid/widget/RemoteViews$InteractionHandler;Landroid/os/Looper;)V
    .registers 6

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    .line 212
    iput p2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    .line 213
    iput-object p3, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 214
    new-instance p2, Landroid/appwidget/AppWidgetHost$UpdateHandler;

    invoke-direct {p2, p0, p4}, Landroid/appwidget/AppWidgetHost$UpdateHandler;-><init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    .line 215
    new-instance p2, Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object p3, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p3}, Landroid/appwidget/AppWidgetHost$Callbacks;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 217
    invoke-static {p1}, Landroid/appwidget/AppWidgetHost;->bindService(Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method private static greylist-max-o bindService(Landroid/content/Context;)V
    .registers 4

    .line 221
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_3
    sget-boolean v1, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    if-eqz v1, :cond_9

    .line 223
    monitor-exit v0

    return-void

    .line 225
    :cond_9
    const/4 v1, 0x1

    sput-boolean v1, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 227
    const-string v2, "android.software.app_widgets"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x111017e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_27

    .line 229
    monitor-exit v0

    return-void

    .line 231
    :cond_27
    const-string p0, "appwidget"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 232
    invoke-static {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object p0

    sput-object p0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 233
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public static whitelist deleteAllHosts()V
    .registers 3

    .line 464
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 465
    return-void

    .line 468
    :cond_5
    :try_start_5
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAllHosts()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 472
    nop

    .line 473
    return-void

    .line 470
    :catch_c
    move-exception v0

    .line 471
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
    .registers 4

    .line 199
    nop

    .line 200
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 201
    :try_start_4
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    .line 202
    monitor-exit v0

    .line 203
    return-object p1

    .line 202
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw p1
.end method

.method private blacklist updateAppWidgetDeferred(I)V
    .registers 4

    .line 647
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object v0

    .line 648
    if-nez v0, :cond_20

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAppWidgetDeferred: null listener for id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppWidgetHost"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void

    .line 652
    :cond_20
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->updateAppWidgetDeferred(Ljava/lang/String;I)V

    .line 653
    return-void
.end method


# virtual methods
.method public whitelist allocateAppWidgetId()I
    .registers 4

    .line 304
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 305
    const/4 v0, -0x1

    return v0

    .line 308
    :cond_6
    :try_start_6
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->allocateAppWidgetId(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v0

    .line 310
    :catch_11
    move-exception v0

    .line 311
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist clearViews()V
    .registers 3

    .line 659
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->reportAllWidgetEvents()V

    .line 660
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 661
    :try_start_6
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 662
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public final whitelist createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 5

    .line 481
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 482
    const/4 p1, 0x0

    return-object p1

    .line 484
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p1

    .line 485
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 486
    invoke-virtual {p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 487
    invoke-virtual {p0, p2, p1}, Landroid/appwidget/AppWidgetHost;->setListener(ILandroid/appwidget/AppWidgetHost$AppWidgetHostListener;)V

    .line 489
    return-object p1
.end method

.method public whitelist deleteAppWidgetId(I)V
    .registers 4

    .line 424
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 425
    return-void

    .line 427
    :cond_5
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->removeListener(I)V

    .line 429
    :try_start_8
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAppWidgetId(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    .line 432
    nop

    .line 433
    return-void

    .line 430
    :catch_11
    move-exception p1

    .line 431
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "system server dead?"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist deleteHost()V
    .registers 4

    .line 444
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 445
    return-void

    .line 448
    :cond_5
    :try_start_5
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteHost(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    .line 452
    nop

    .line 453
    return-void

    .line 450
    :catch_10
    move-exception v0

    .line 451
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist dispatchOnAppWidgetRemoved(I)V
    .registers 2

    .line 579
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->removeListener(I)V

    .line 580
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->onAppWidgetRemoved(I)V

    .line 581
    return-void
.end method

.method public whitelist getAppWidgetIds()[I
    .registers 4

    .line 410
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_8

    .line 411
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 414
    :cond_8
    :try_start_8
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIdsForHost(Ljava/lang/String;I)[I

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    .line 415
    :catch_13
    move-exception v0

    .line 416
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final blacklist getIntentSenderForConfigureActivity(II)Landroid/content/IntentSender;
    .registers 5

    .line 329
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_6

    .line 330
    const/4 p1, 0x0

    return-object p1

    .line 335
    :cond_6
    :try_start_6
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_18

    .line 339
    nop

    .line 341
    if-eqz p1, :cond_12

    .line 344
    return-object p1

    .line 342
    :cond_12
    new-instance p1, Landroid/content/ActivityNotFoundException;

    invoke-direct {p1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw p1

    .line 337
    :catch_18
    move-exception p1

    .line 338
    new-instance p2, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "system server dead?"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist onAppWidgetRemoved(I)V
    .registers 2

    .line 589
    return-void
.end method

.method protected whitelist onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 4

    .line 498
    new-instance p2, Landroid/appwidget/AppWidgetHostView;

    iget-object p3, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-direct {p2, p1, p3}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-object p2
.end method

.method protected whitelist onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 4

    .line 505
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object p1

    .line 510
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    .line 511
    if-eqz p1, :cond_e

    .line 512
    invoke-interface {p1, p2}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->onUpdateProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 514
    :cond_e
    return-void
.end method

.method protected whitelist onProvidersChanged()V
    .registers 1

    .line 597
    return-void
.end method

.method public blacklist removeListener(I)V
    .registers 4

    .line 626
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->reportEventForWidget(I)V

    .line 627
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 628
    :try_start_6
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 629
    monitor-exit v0

    .line 630
    return-void

    .line 629
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public blacklist reportAllWidgetEvents()V
    .registers 6

    .line 671
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-eqz v0, :cond_5f

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5f

    .line 675
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 676
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v1

    .line 677
    const/4 v2, 0x0

    move v3, v2

    :goto_15
    :try_start_15
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 678
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    invoke-interface {v4}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->collectWidgetEvent()Landroid/appwidget/AppWidgetEvent;

    move-result-object v4

    .line 679
    if-eqz v4, :cond_2e

    .line 680
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 683
    :cond_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_5c

    .line 684
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 685
    return-void

    .line 687
    :cond_39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Landroid/appwidget/AppWidgetEvent;

    .line 688
    nop

    :goto_40
    if-ge v2, v1, :cond_4d

    .line 689
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetEvent;

    aput-object v4, v3, v2

    .line 688
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 693
    :cond_4d
    :try_start_4d
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->reportWidgetEvents(Ljava/lang/String;[Landroid/appwidget/AppWidgetEvent;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_54} :catch_56

    .line 696
    nop

    .line 697
    return-void

    .line 694
    :catch_56
    move-exception v0

    .line 695
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 683
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0

    .line 672
    :cond_5f
    :goto_5f
    return-void
.end method

.method public blacklist reportEventForWidget(I)V
    .registers 4

    .line 705
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2e

    .line 708
    :cond_b
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object p1

    .line 709
    if-nez p1, :cond_12

    .line 710
    return-void

    .line 712
    :cond_12
    invoke-interface {p1}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->collectWidgetEvent()Landroid/appwidget/AppWidgetEvent;

    move-result-object p1

    .line 713
    if-nez p1, :cond_19

    .line 714
    return-void

    .line 716
    :cond_19
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/appwidget/AppWidgetEvent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 719
    :try_start_1f
    sget-object p1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/android/internal/appwidget/IAppWidgetService;->reportWidgetEvents(Ljava/lang/String;[Landroid/appwidget/AppWidgetEvent;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_28

    .line 722
    nop

    .line 723
    return-void

    .line 720
    :catch_28
    move-exception p1

    .line 721
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 706
    :cond_2e
    :goto_2e
    return-void
.end method

.method public blacklist setAppWidgetHidden()V
    .registers 4

    .line 386
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 387
    return-void

    .line 390
    :cond_5
    :try_start_5
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->setAppWidgetHidden(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_13

    .line 393
    nop

    .line 394
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->reportAllWidgetEvents()V

    .line 395
    return-void

    .line 391
    :catch_13
    move-exception v0

    .line 392
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 2

    .line 403
    iput-object p1, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 404
    return-void
.end method

.method public blacklist setListener(ILandroid/appwidget/AppWidgetHost$AppWidgetHostListener;)V
    .registers 5

    .line 607
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 608
    :try_start_3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 609
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_21

    .line 610
    nop

    .line 612
    :try_start_a
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_17

    .line 615
    nop

    .line 616
    invoke-interface {p2, p1}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 617
    return-void

    .line 613
    :catch_17
    move-exception p1

    .line 614
    new-instance p2, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "system server dead?"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 609
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public final whitelist startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    .registers 15

    .line 368
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 369
    return-void

    .line 372
    :cond_5
    :try_start_5
    invoke-virtual {p0, p2, p3}, Landroid/appwidget/AppWidgetHost;->getIntentSenderForConfigureActivity(II)Landroid/content/IntentSender;

    move-result-object v2

    .line 374
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5 .. :try_end_13} :catch_15

    .line 377
    nop

    .line 378
    return-void

    .line 375
    :catch_15
    move-exception v0

    .line 376
    new-instance p1, Landroid/content/ActivityNotFoundException;

    invoke-direct {p1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw p1
.end method

.method public whitelist startListening()V
    .registers 7

    .line 241
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 242
    return-void

    .line 245
    :cond_5
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 246
    :try_start_8
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 247
    new-array v2, v1, [I

    .line 248
    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v1, :cond_1f

    .line 249
    iget-object v5, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v4

    .line 248
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 251
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_70

    .line 254
    :try_start_20
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v5, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v4, v5, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_30} :catch_66

    .line 259
    nop

    .line 261
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 262
    nop

    :goto_36
    if-ge v3, v1, :cond_65

    .line 263
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/PendingHostUpdate;

    .line 264
    iget v4, v2, Landroid/appwidget/PendingHostUpdate;->type:I

    packed-switch v4, :pswitch_data_74

    goto :goto_62

    .line 275
    :pswitch_44
    iget v2, v2, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    invoke-virtual {p0, v2}, Landroid/appwidget/AppWidgetHost;->dispatchOnAppWidgetRemoved(I)V

    goto :goto_62

    .line 272
    :pswitch_4a
    iget v4, v2, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget v2, v2, Landroid/appwidget/PendingHostUpdate;->viewId:I

    invoke-virtual {p0, v4, v2}, Landroid/appwidget/AppWidgetHost;->viewDataChanged(II)V

    .line 273
    goto :goto_62

    .line 269
    :pswitch_52
    iget v4, v2, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v2, v2, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v4, v2}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 270
    goto :goto_62

    .line 266
    :pswitch_5a
    iget v4, v2, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v2, v2, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v4, v2}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    .line 267
    nop

    .line 262
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 279
    :cond_65
    return-void

    .line 257
    :catch_66
    move-exception v0

    .line 258
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 251
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_52
        :pswitch_4a
        :pswitch_44
    .end packed-switch
.end method

.method public whitelist stopListening()V
    .registers 4

    .line 286
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_5

    .line 287
    return-void

    .line 290
    :cond_5
    :try_start_5
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->stopListening(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_13

    .line 294
    nop

    .line 295
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->reportAllWidgetEvents()V

    .line 296
    return-void

    .line 292
    :catch_13
    move-exception v0

    .line 293
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method greylist-max-o updateAppWidgetView(ILandroid/widget/RemoteViews;)V
    .registers 3

    .line 633
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object p1

    .line 634
    if-eqz p1, :cond_9

    .line 635
    invoke-interface {p1, p2}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 637
    :cond_9
    return-void
.end method

.method greylist-max-o viewDataChanged(II)V
    .registers 3

    .line 640
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object p1

    .line 641
    if-eqz p1, :cond_9

    .line 642
    invoke-interface {p1, p2}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->onViewDataChanged(I)V

    .line 644
    :cond_9
    return-void
.end method
