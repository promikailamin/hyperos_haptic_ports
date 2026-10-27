.class public Landroid/app/Instrumentation;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Instrumentation$Idler;,
        Landroid/app/Instrumentation$ActivityGoing;,
        Landroid/app/Instrumentation$ActivityWaiter;,
        Landroid/app/Instrumentation$SyncRunnable;,
        Landroid/app/Instrumentation$EmptyRunnable;,
        Landroid/app/Instrumentation$InstrumentationThread;,
        Landroid/app/Instrumentation$ActivityResult;,
        Landroid/app/Instrumentation$ActivityMonitor;,
        Landroid/app/Instrumentation$UiAutomationFlags;
    }
.end annotation


# static fields
.field private static final blacklist CONNECT_TIMEOUT_MILLIS:J = 0x1388L

.field private static final blacklist LOG_WM_ON_APPLICATION_CREATE_CALLED:I = 0xfb7d2

.field public static final whitelist REPORT_KEY_IDENTIFIER:Ljava/lang/String; = "id"

.field public static final whitelist REPORT_KEY_STREAMRESULT:Ljava/lang/String; = "stream"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Instrumentation"


# instance fields
.field private greylist-max-o mActivityMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Instrumentation$ActivityMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAnimationCompleteLock:Ljava/lang/Object;

.field private greylist-max-o mAppContext:Landroid/content/Context;

.field private greylist-max-o mAutomaticPerformanceSnapshots:Z

.field private greylist-max-o mComponent:Landroid/content/ComponentName;

.field private greylist-max-o mInstrContext:Landroid/content/Context;

.field private greylist-max-o mMessageQueue:Landroid/os/MessageQueue;

.field private greylist-max-o mPerfMetrics:Landroid/os/Bundle;

.field private greylist-max-o mPerformanceCollector:Landroid/os/PerformanceCollector;

.field private greylist-max-o mRunner:Ljava/lang/Thread;

.field private final greylist-max-o mSync:Ljava/lang/Object;

.field private greylist-max-o mThread:Landroid/app/ActivityThread;

.field private greylist-max-o mUiAutomation:Landroid/app/UiAutomation;

.field private greylist-max-o mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private greylist-max-o mWaitingActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Instrumentation$ActivityWaiter;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutomaticPerformanceSnapshots(Landroid/app/Instrumentation;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSync(Landroid/app/Instrumentation;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaitingActivities(Landroid/app/Instrumentation;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 113
    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mAnimationCompleteLock:Ljava/lang/Object;

    .line 131
    return-void
.end method

.method private greylist-max-o addValue(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 1709
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1710
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1711
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_13

    .line 1712
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1714
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_13
    goto :goto_23

    .line 1715
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1716
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1717
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1719
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_23
    return-void
.end method

.method private greylist-max-o checkInstrumenting(Ljava/lang/String;)V
    .registers 5
    .param p1, "method"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 147
    return-void

    .line 144
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be called outside of instrumented processes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-p checkStartActivityResult(ILjava/lang/Object;)V
    .registers 5
    .param p0, "res"    # I
    .param p1, "intent"    # Ljava/lang/Object;

    .line 2244
    invoke-static {p0}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2245
    return-void

    .line 2248
    :cond_7
    packed-switch p0, :pswitch_data_f8

    .line 2287
    :pswitch_a
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2278
    :pswitch_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session calling startAssistantActivity does not match active session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2281
    :pswitch_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start assistant activity on a hidden session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2251
    :pswitch_3d
    instance-of v0, p1, Landroid/content/Intent;

    if-eqz v0, :cond_74

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 2252
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find explicit activity class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 2254
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; have you declared this activity in your AndroidManifest.xml, or does your intent not match its declared <intent-filter>?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2257
    :cond_74
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Activity found to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2263
    :pswitch_8d
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "FORWARD_RESULT_FLAG used while also requesting a result"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2260
    :pswitch_95
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2266
    :pswitch_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PendingIntent is not an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2284
    :pswitch_b6
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity could not be started for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2269
    :pswitch_cf
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting under voice control not allowed for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2272
    :pswitch_e8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session calling startVoiceActivity does not match active session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2275
    :pswitch_f0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start voice activity on a hidden session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_f8
    .packed-switch -0x64
        :pswitch_f0
        :pswitch_e8
        :pswitch_a
        :pswitch_cf
        :pswitch_b6
        :pswitch_ae
        :pswitch_95
        :pswitch_8d
        :pswitch_3d
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
    .end packed-switch
.end method

.method private greylist-max-o getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1368
    const-string v0, "Instrumentation"

    if-nez p1, :cond_c

    .line 1369
    const-string v1, "No pkg specified, disabling AppComponentFactory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    sget-object v0, Landroid/app/AppComponentFactory;->DEFAULT:Landroid/app/AppComponentFactory;

    return-object v0

    .line 1372
    :cond_c
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    if-nez v1, :cond_1d

    .line 1373
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Uninitialized ActivityThread, likely app-created Instrumentation, disabling AppComponentFactory"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1375
    sget-object v0, Landroid/app/AppComponentFactory;->DEFAULT:Landroid/app/AppComponentFactory;

    return-object v0

    .line 1377
    :cond_1d
    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 1379
    .local v0, "apk":Landroid/app/LoadedApk;
    if-nez v0, :cond_2c

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iget-object v0, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1380
    :cond_2c
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Application;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1271
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1272
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 1273
    return-object v0
.end method

.method private blacklist notifyStartActivityResult(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "result"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1389
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiui/window/MiuiEmbeddingWindowStub;->onStartActivityResult(ILandroid/os/Bundle;)V

    .line 1391
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-nez v0, :cond_c

    .line 1392
    return-void

    .line 1394
    :cond_c
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1395
    :try_start_f
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1396
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v1, :cond_37

    .line 1397
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1398
    .local v3, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {v3}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1399
    if-nez p2, :cond_31

    .line 1400
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    move-object p2, v4

    .line 1402
    :cond_31
    invoke-virtual {v3, p1, p2}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivityResult(ILandroid/os/Bundle;)V

    .line 1396
    .end local v3    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1405
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_37
    monitor-exit v0

    .line 1406
    return-void

    .line 1405
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_f .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private greylist-max-o postPerformCreate(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1425
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v0, :cond_28

    .line 1426
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1427
    :try_start_7
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1428
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_23

    .line 1429
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1430
    .local v3, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, p1, p1, v4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1428
    nop

    .end local v3    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1432
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_23
    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v1

    .line 1434
    :cond_28
    :goto_28
    return-void
.end method

.method private greylist-max-o prePerformCreate(Landroid/app/Activity;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1409
    iget-object v0, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-eqz v0, :cond_38

    .line 1410
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1411
    :try_start_7
    iget-object v1, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1412
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_33

    .line 1413
    iget-object v3, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityWaiter;

    .line 1414
    .local v3, "aw":Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, v3, Landroid/app/Instrumentation$ActivityWaiter;->intent:Landroid/content/Intent;

    .line 1415
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1416
    iput-object p1, v3, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    .line 1417
    iget-object v5, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v6, Landroid/app/Instrumentation$ActivityGoing;

    invoke-direct {v6, p0, v3}, Landroid/app/Instrumentation$ActivityGoing;-><init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V

    invoke-virtual {v5, v6}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1412
    .end local v3    # "aw":Landroid/app/Instrumentation$ActivityWaiter;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1420
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_33
    monitor-exit v0

    goto :goto_38

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw v1

    .line 1422
    :cond_38
    :goto_38
    return-void
.end method

.method private blacklist syncInputTransactionsAndInjectEventIntoSelf(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    const/16 v0, 0x2002

    .line 1195
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    move v0, v1

    goto :goto_14

    :cond_13
    :goto_13
    move v0, v2

    .line 1196
    .local v0, "syncBefore":Z
    :goto_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1b

    move v1, v2

    .line 1199
    .local v1, "syncAfter":Z
    :cond_1b
    if-eqz v0, :cond_24

    .line 1200
    :try_start_1d
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 1201
    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V

    .line 1205
    :cond_24
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v4, 0x2

    .line 1206
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 1205
    invoke-virtual {v3, p1, v4, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;II)Z

    .line 1208
    if-eqz v1, :cond_39

    .line 1209
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 1210
    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_39} :catch_3a

    .line 1214
    :cond_39
    goto :goto_3e

    .line 1212
    :catch_3a
    move-exception v2

    .line 1213
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1215
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3e
    return-void
.end method

.method private final greylist-max-o validateNotAppThread()V
    .registers 3

    .line 2293
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_b

    .line 2297
    return-void

    .line 2294
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method can not be called from the main application thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist waitForEnterAnimationComplete(Landroid/app/Activity;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 444
    iget-object v0, p0, Landroid/app/Instrumentation;->mAnimationCompleteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 445
    const-wide/16 v1, 0x1388

    .line 450
    .local v1, "timeout":J
    :goto_5
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_23

    :try_start_b
    iget-boolean v3, p1, Landroid/app/Activity;->mEnterAnimationComplete:Z

    if-nez v3, :cond_23

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 452
    .local v3, "startTime":J
    iget-object v5, p0, Landroid/app/Instrumentation;->mAnimationCompleteLock:Ljava/lang/Object;

    invoke-virtual {v5, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_1c} :catch_21
    .catchall {:try_start_b .. :try_end_1c} :catchall_1f

    sub-long/2addr v5, v3

    .line 454
    .local v5, "totalTime":J
    sub-long/2addr v1, v5

    .line 455
    .end local v3    # "startTime":J
    .end local v5    # "totalTime":J
    goto :goto_5

    .line 458
    .end local v1    # "timeout":J
    :catchall_1f
    move-exception v1

    goto :goto_26

    .line 456
    .restart local v1    # "timeout":J
    :catch_21
    move-exception v3

    goto :goto_24

    .line 457
    :cond_23
    nop

    .line 458
    .end local v1    # "timeout":J
    :goto_24
    :try_start_24
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_1f

    throw v1
.end method


# virtual methods
.method public whitelist acquireLooperManager(Landroid/os/Looper;)Landroid/os/TestLooperManager;
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 2400
    const-string v0, "acquireLooperManager"

    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->checkInstrumenting(Ljava/lang/String;)V

    .line 2401
    new-instance v0, Landroid/os/TestLooperManager;

    invoke-direct {v0, p1}, Landroid/os/TestLooperManager;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public whitelist addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .line 879
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 880
    .local v0, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 881
    return-object v0
.end method

.method public whitelist addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .line 902
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 903
    .local v0, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 904
    return-object v0
.end method

.method public whitelist addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 4
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .line 852
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_3
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-nez v1, :cond_e

    .line 854
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    .line 856
    :cond_e
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    monitor-exit v0

    .line 858
    return-void

    .line 857
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist addResults(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "results"    # Landroid/os/Bundle;

    .line 246
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 248
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_4
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 251
    nop

    .line 252
    return-void

    .line 249
    :catch_f
    move-exception v1

    .line 250
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method final greylist-max-o basicInit(Landroid/app/ActivityThread;)V
    .registers 2
    .param p1, "thread"    # Landroid/app/ActivityThread;

    .line 2238
    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 2239
    return-void
.end method

.method public whitelist callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .line 1444
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->prePerformCreate(Landroid/app/Activity;)V

    .line 1445
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;)V

    .line 1446
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->postPerformCreate(Landroid/app/Activity;)V

    .line 1447
    return-void
.end method

.method public whitelist callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1458
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->prePerformCreate(Landroid/app/Activity;)V

    .line 1459
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1460
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->postPerformCreate(Landroid/app/Activity;)V

    .line 1461
    return-void
.end method

.method public whitelist callActivityOnDestroy(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1480
    invoke-virtual {p1}, Landroid/app/Activity;->performDestroy()V

    .line 1481
    return-void
.end method

.method public whitelist callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1545
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performNewIntent(Landroid/content/Intent;)V

    .line 1546
    return-void
.end method

.method public greylist-max-r callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Lcom/android/internal/content/ReferrerIntent;

    .line 1553
    iget-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1555
    .local v0, "oldReferrer":Ljava/lang/String;
    if-eqz p2, :cond_b

    .line 1556
    :try_start_4
    iget-object v1, p2, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    goto :goto_b

    .line 1560
    :catchall_9
    move-exception v1

    goto :goto_1b

    .line 1558
    :cond_b
    :goto_b
    if-eqz p2, :cond_13

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {p0, p1, v1}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_9

    .line 1560
    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1561
    nop

    .line 1562
    return-void

    .line 1560
    :goto_1b
    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1561
    throw v1
.end method

.method public whitelist callActivityOnPause(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1646
    invoke-virtual {p1}, Landroid/app/Activity;->performPause()V

    .line 1647
    return-void
.end method

.method public whitelist callActivityOnPictureInPictureRequested(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1666
    invoke-virtual {p1}, Landroid/app/Activity;->onPictureInPictureRequested()Z

    .line 1667
    return-void
.end method

.method public whitelist callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1519
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1520
    return-void
.end method

.method public whitelist callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1534
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1535
    return-void
.end method

.method public whitelist callActivityOnRestart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1581
    invoke-virtual {p1}, Landroid/app/Activity;->onRestart()V

    .line 1582
    return-void
.end method

.method public whitelist callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1492
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1493
    return-void
.end method

.method public whitelist callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;

    .line 1506
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1507
    return-void
.end method

.method public whitelist callActivityOnResume(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1591
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Activity;->mResumed:Z

    .line 1592
    invoke-virtual {p1}, Landroid/app/Activity;->onResume()V

    .line 1594
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v0, :cond_2e

    .line 1595
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1596
    :try_start_d
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1597
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_29

    .line 1598
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1599
    .local v3, "am":Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, p1, p1, v4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1597
    nop

    .end local v3    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1601
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_29
    monitor-exit v0

    goto :goto_2e

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2b

    throw v1

    .line 1603
    :cond_2e
    :goto_2e
    return-void
.end method

.method public whitelist callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 1624
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1625
    return-void
.end method

.method public whitelist callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;
    .param p3, "outPersistentState"    # Landroid/os/PersistableBundle;

    .line 1636
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1637
    return-void
.end method

.method public whitelist callActivityOnStart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1571
    invoke-virtual {p1}, Landroid/app/Activity;->onStart()V

    .line 1572
    return-void
.end method

.method public whitelist callActivityOnStop(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1612
    invoke-virtual {p1}, Landroid/app/Activity;->onStop()V

    .line 1613
    return-void
.end method

.method public whitelist callActivityOnUserLeaving(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1656
    invoke-virtual {p1}, Landroid/app/Activity;->performUserLeaving()V

    .line 1657
    return-void
.end method

.method public whitelist callApplicationOnCreate(Landroid/app/Application;)V
    .registers 11
    .param p1, "app"    # Landroid/app/Application;

    .line 1290
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1291
    .local v0, "startTime":J
    invoke-virtual {p1}, Landroid/app/Application;->onCreate()V

    .line 1292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 1293
    .local v2, "took":J
    const/4 v4, 0x0

    .line 1295
    .local v4, "pkg":Ljava/lang/String;
    :try_start_d
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_16

    const-string v5, "empty"

    goto :goto_1a

    :cond_16
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_1c

    :goto_1a
    move-object v4, v5

    .line 1298
    goto :goto_24

    .line 1296
    :catch_1c
    move-exception v5

    .line 1297
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Instrumentation"

    const-string v7, "Can not get package name."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_24
    const-wide/16 v5, 0xc8

    cmp-long v5, v2, v5

    if-lez v5, :cond_4e

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 1300
    const v5, 0xfb7d2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1303
    :cond_4e
    return-void
.end method

.method public whitelist checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .registers 5
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;
    .param p2, "minHits"    # I

    .line 921
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 922
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_6
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->getHits()I

    move-result v1

    if-ge v1, p2, :cond_f

    .line 924
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 926
    :cond_f
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 927
    monitor-exit v0

    .line 928
    const/4 v0, 0x1

    return v0

    .line 927
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public whitelist endPerformanceSnapshot()V
    .registers 2

    .line 295
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_e

    .line 296
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    invoke-virtual {v0}, Landroid/os/PerformanceCollector;->endSnapshot()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 298
    :cond_e
    return-void
.end method

.method public greylist execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 15
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "options"    # Landroid/os/Bundle;

    .line 1890
    nop

    .line 1891
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 1890
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 1892
    return-void
.end method

.method public greylist-max-r execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)I
    .registers 24
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "options"    # Landroid/os/Bundle;
    .param p7, "userId"    # I

    .line 1910
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x17a

    invoke-static {v3, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 1911
    move-object/from16 v13, p2

    check-cast v13, Landroid/app/IApplicationThread;

    .line 1914
    .local v13, "whoThread":Landroid/app/IApplicationThread;
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    const/4 v14, 0x0

    aget-object v3, v12, v14

    move-object/from16 v4, p6

    invoke-interface {v0, v2, v3, v4}, Lmiui/window/MiuiEmbeddingWindowStub;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1916
    .end local p6    # "options":Landroid/os/Bundle;
    .local v3, "options":Landroid/os/Bundle;
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v0, :cond_7d

    .line 1917
    iget-object v4, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1918
    :try_start_27
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1919
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2e
    if-ge v5, v0, :cond_77

    .line 1920
    iget-object v6, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1921
    .local v6, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v7, 0x0

    .line 1922
    .local v7, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v8

    if-eqz v8, :cond_51

    .line 1923
    if-nez v3, :cond_4a

    .line 1924
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    move-object v3, v8

    .line 1926
    :cond_4a
    aget-object v8, v12, v14

    invoke-virtual {v6, v2, v8, v3}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    move-object v7, v8

    .line 1928
    :cond_51
    const/16 v8, -0x60

    if-eqz v7, :cond_5d

    .line 1929
    iget v9, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1930
    monitor-exit v4

    return v8

    .line 1931
    :cond_5d
    const/4 v9, 0x0

    aget-object v10, v12, v14

    invoke-virtual {v6, v2, v9, v10}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 1932
    iget v9, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1933
    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v9

    if-eqz v9, :cond_77

    .line 1934
    monitor-exit v4

    return v8

    .line 1919
    .end local v6    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v7    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 1939
    .end local v0    # "N":I
    .end local v5    # "i":I
    :cond_77
    monitor-exit v4

    move-object v15, v3

    goto :goto_7e

    :catchall_7a
    move-exception v0

    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_27 .. :try_end_7c} :catchall_7a

    throw v0

    .line 1916
    :cond_7d
    move-object v15, v3

    .line 1942
    .end local v3    # "options":Landroid/os/Bundle;
    .local v15, "options":Landroid/os/Bundle;
    :goto_7e
    :try_start_7e
    array-length v0, v12

    new-array v0, v0, [Ljava/lang/String;

    .line 1943
    .local v0, "resolvedTypes":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_82
    array-length v4, v12

    if-ge v3, v4, :cond_9e

    .line 1944
    aget-object v4, v12, v3

    invoke-virtual {v4, v2}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 1945
    aget-object v4, v12, v3

    invoke-virtual {v4, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1946
    aget-object v4, v12, v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 1943
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 1948
    .end local v3    # "i":I
    :cond_9e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    .line 1949
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 1948
    move-object v4, v13

    move-object/from16 v7, p5

    move-object v8, v0

    move-object/from16 v9, p3

    move-object v10, v15

    move/from16 v11, p7

    invoke-interface/range {v3 .. v11}, Landroid/app/IActivityTaskManager;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v3

    .line 1951
    .local v3, "result":I
    invoke-direct {v1, v3, v15}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 1952
    aget-object v4, v12, v14

    invoke-static {v3, v4}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_bf} :catch_c0

    .line 1953
    return v3

    .line 1954
    .end local v0    # "resolvedTypes":[Ljava/lang/String;
    .end local v3    # "result":I
    :catch_c0
    move-exception v0

    .line 1955
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failure from system"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public greylist execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 27
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .line 1829
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v15, p5

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x179

    invoke-static {v4, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 1830
    move-object/from16 v16, p2

    check-cast v16, Landroid/app/IApplicationThread;

    .line 1831
    .local v16, "whoThread":Landroid/app/IApplicationThread;
    const/4 v0, 0x0

    if-eqz v3, :cond_1d

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v4

    goto :goto_1e

    :cond_1d
    move-object v4, v0

    :goto_1e
    move-object v14, v4

    .line 1832
    .local v14, "referrer":Landroid/net/Uri;
    if-eqz v14, :cond_26

    .line 1833
    const-string v4, "android.intent.extra.REFERRER"

    invoke-virtual {v15, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1837
    :cond_26
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v4

    move-object/from16 v5, p7

    invoke-interface {v4, v2, v15, v5}, Lmiui/window/MiuiEmbeddingWindowStub;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 1839
    .end local p7    # "options":Landroid/os/Bundle;
    .local v4, "options":Landroid/os/Bundle;
    iget-object v5, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v5, :cond_8c

    .line 1840
    iget-object v5, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 1841
    :try_start_37
    iget-object v6, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 1842
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3e
    if-ge v7, v6, :cond_86

    .line 1843
    iget-object v8, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1844
    .local v8, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v9, 0x0

    .line 1845
    .local v9, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v10

    if-eqz v10, :cond_5f

    .line 1846
    if-nez v4, :cond_5a

    .line 1847
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    move-object v4, v10

    .line 1849
    :cond_5a
    invoke-virtual {v8, v2, v15, v4}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v10

    move-object v9, v10

    .line 1851
    :cond_5f
    if-eqz v9, :cond_69

    .line 1852
    iget v0, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1853
    monitor-exit v5

    return-object v9

    .line 1854
    :cond_69
    invoke-virtual {v8, v2, v0, v15}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_83

    .line 1855
    iget v10, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1856
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v10

    if-eqz v10, :cond_86

    .line 1857
    if-ltz p6, :cond_81

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    :cond_81
    monitor-exit v5

    return-object v0

    .line 1842
    .end local v8    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v9    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_83
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 1862
    .end local v6    # "N":I
    .end local v7    # "i":I
    :cond_86
    monitor-exit v5

    move-object v13, v4

    goto :goto_8d

    :catchall_89
    move-exception v0

    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_37 .. :try_end_8b} :catchall_89

    throw v0

    .line 1839
    :cond_8c
    move-object v13, v4

    .line 1865
    .end local v4    # "options":Landroid/os/Bundle;
    .local v13, "options":Landroid/os/Bundle;
    :goto_8d
    :try_start_8d
    invoke-virtual {v15, v2}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 1866
    invoke-virtual {v15, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1867
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    .line 1868
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 1869
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_a7} :catch_df

    .line 1870
    if-eqz v3, :cond_b3

    :try_start_a9
    iget-object v5, v3, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ab} :catch_ad

    move-object v11, v5

    goto :goto_b4

    .line 1873
    :catch_ad
    move-exception v0

    move-object v5, v13

    move-object/from16 v17, v14

    move-object v2, v15

    goto :goto_e4

    .line 1870
    :cond_b3
    move-object v11, v0

    :goto_b4
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1867
    move-object/from16 v5, v16

    move-object/from16 v8, p5

    move-object/from16 v10, p3

    move/from16 v12, p6

    move-object/from16 p7, v13

    .end local v13    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    move/from16 v13, v17

    move-object/from16 v17, v14

    .end local v14    # "referrer":Landroid/net/Uri;
    .local v17, "referrer":Landroid/net/Uri;
    move-object/from16 v14, v18

    move-object v2, v15

    move-object/from16 v15, p7

    :try_start_cb
    invoke-interface/range {v4 .. v15}, Landroid/app/IActivityTaskManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v4
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_cf} :catch_db

    .line 1871
    .local v4, "result":I
    move-object/from16 v5, p7

    .end local p7    # "options":Landroid/os/Bundle;
    .local v5, "options":Landroid/os/Bundle;
    :try_start_d1
    invoke-direct {v1, v4, v5}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 1872
    invoke-static {v4, v2}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_d7} :catch_d9

    .line 1875
    .end local v4    # "result":I
    nop

    .line 1876
    return-object v0

    .line 1873
    :catch_d9
    move-exception v0

    goto :goto_e4

    .end local v5    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    :catch_db
    move-exception v0

    move-object/from16 v5, p7

    .end local p7    # "options":Landroid/os/Bundle;
    .restart local v5    # "options":Landroid/os/Bundle;
    goto :goto_e4

    .end local v5    # "options":Landroid/os/Bundle;
    .end local v17    # "referrer":Landroid/net/Uri;
    .restart local v13    # "options":Landroid/os/Bundle;
    .restart local v14    # "referrer":Landroid/net/Uri;
    :catch_df
    move-exception v0

    move-object v5, v13

    move-object/from16 v17, v14

    move-object v2, v15

    .line 1874
    .end local v13    # "options":Landroid/os/Bundle;
    .end local v14    # "referrer":Landroid/net/Uri;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v5    # "options":Landroid/os/Bundle;
    .restart local v17    # "referrer":Landroid/net/Uri;
    :goto_e4
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Failure from system"

    invoke-direct {v4, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public greylist execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 25
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .line 1990
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p5

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x179

    invoke-static {v3, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 1991
    move-object/from16 v16, p2

    check-cast v16, Landroid/app/IApplicationThread;

    .line 1994
    .local v16, "whoThread":Landroid/app/IApplicationThread;
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    move-object/from16 v3, p7

    invoke-interface {v0, v2, v15, v3}, Lmiui/window/MiuiEmbeddingWindowStub;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1996
    .end local p7    # "options":Landroid/os/Bundle;
    .local v3, "options":Landroid/os/Bundle;
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    const/4 v14, 0x0

    if-eqz v0, :cond_7a

    .line 1997
    iget-object v4, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1998
    :try_start_25
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1999
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2c
    if-ge v5, v0, :cond_74

    .line 2000
    iget-object v6, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2001
    .local v6, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v7, 0x0

    .line 2002
    .local v7, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 2003
    if-nez v3, :cond_48

    .line 2004
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    move-object v3, v8

    .line 2006
    :cond_48
    invoke-virtual {v6, v2, v15, v3}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    move-object v7, v8

    .line 2008
    :cond_4d
    if-eqz v7, :cond_57

    .line 2009
    iget v8, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2010
    monitor-exit v4

    return-object v7

    .line 2011
    :cond_57
    invoke-virtual {v6, v2, v14, v15}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 2012
    iget v8, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2013
    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v8

    if-eqz v8, :cond_74

    .line 2014
    if-ltz p6, :cond_6f

    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v14

    :cond_6f
    monitor-exit v4

    return-object v14

    .line 1999
    .end local v6    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v7    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 2019
    .end local v0    # "N":I
    .end local v5    # "i":I
    :cond_74
    monitor-exit v4

    move-object v13, v3

    goto :goto_7b

    :catchall_77
    move-exception v0

    monitor-exit v4
    :try_end_79
    .catchall {:try_start_25 .. :try_end_79} :catchall_77

    throw v0

    .line 1996
    :cond_7a
    move-object v13, v3

    .line 2022
    .end local v3    # "options":Landroid/os/Bundle;
    .local v13, "options":Landroid/os/Bundle;
    :goto_7b
    :try_start_7b
    invoke-virtual {v15, v2}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2023
    invoke-virtual {v15, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2024
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    .line 2025
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 2026
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_95} :catch_bb

    const/4 v12, 0x0

    const/4 v0, 0x0

    .line 2024
    move-object/from16 v4, v16

    move-object/from16 v7, p5

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p6

    move-object/from16 p7, v13

    .end local v13    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    move-object v13, v0

    move-object v0, v14

    move-object/from16 v14, p7

    :try_start_a7
    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityTaskManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v3
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_ab} :catch_b7

    .line 2028
    .local v3, "result":I
    move-object/from16 v4, p7

    .end local p7    # "options":Landroid/os/Bundle;
    .local v4, "options":Landroid/os/Bundle;
    :try_start_ad
    invoke-direct {v1, v3, v4}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2029
    invoke-static {v3, v15}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_b3} :catch_b5

    .line 2032
    .end local v3    # "result":I
    nop

    .line 2033
    return-object v0

    .line 2030
    :catch_b5
    move-exception v0

    goto :goto_bd

    .end local v4    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    :catch_b7
    move-exception v0

    move-object/from16 v4, p7

    .end local p7    # "options":Landroid/os/Bundle;
    .restart local v4    # "options":Landroid/os/Bundle;
    goto :goto_bd

    .end local v4    # "options":Landroid/os/Bundle;
    .restart local v13    # "options":Landroid/os/Bundle;
    :catch_bb
    move-exception v0

    move-object v4, v13

    .line 2031
    .end local v13    # "options":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "options":Landroid/os/Bundle;
    :goto_bd
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Failure from system"

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public greylist execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 27
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "resultWho"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "user"    # Landroid/os/UserHandle;

    .line 2066
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p5

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x179

    invoke-static {v3, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 2067
    move-object/from16 v16, p2

    check-cast v16, Landroid/app/IApplicationThread;

    .line 2070
    .local v16, "whoThread":Landroid/app/IApplicationThread;
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    move-object/from16 v3, p7

    invoke-interface {v0, v2, v15, v3}, Lmiui/window/MiuiEmbeddingWindowStub;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 2072
    .end local p7    # "options":Landroid/os/Bundle;
    .local v3, "options":Landroid/os/Bundle;
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    const/4 v14, 0x0

    if-eqz v0, :cond_7a

    .line 2073
    iget-object v4, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 2074
    :try_start_25
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2075
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2c
    if-ge v5, v0, :cond_74

    .line 2076
    iget-object v6, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2077
    .local v6, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v7, 0x0

    .line 2078
    .local v7, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 2079
    if-nez v3, :cond_48

    .line 2080
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    move-object v3, v8

    .line 2082
    :cond_48
    invoke-virtual {v6, v2, v15, v3}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    move-object v7, v8

    .line 2084
    :cond_4d
    if-eqz v7, :cond_57

    .line 2085
    iget v8, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2086
    monitor-exit v4

    return-object v7

    .line 2087
    :cond_57
    invoke-virtual {v6, v2, v14, v15}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 2088
    iget v8, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2089
    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v8

    if-eqz v8, :cond_74

    .line 2090
    if-ltz p6, :cond_6f

    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v14

    :cond_6f
    monitor-exit v4

    return-object v14

    .line 2075
    .end local v6    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v7    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 2095
    .end local v0    # "N":I
    .end local v5    # "i":I
    :cond_74
    monitor-exit v4

    move-object v13, v3

    goto :goto_7b

    :catchall_77
    move-exception v0

    monitor-exit v4
    :try_end_79
    .catchall {:try_start_25 .. :try_end_79} :catchall_77

    throw v0

    .line 2072
    :cond_7a
    move-object v13, v3

    .line 2098
    .end local v3    # "options":Landroid/os/Bundle;
    .local v13, "options":Landroid/os/Bundle;
    :goto_7b
    :try_start_7b
    invoke-virtual {v15, v2}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2099
    invoke-virtual {v15, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2100
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    .line 2101
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 2102
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v0, 0x0

    .line 2103
    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_9b} :catch_c2

    .line 2100
    move-object/from16 v4, v16

    move-object/from16 v7, p5

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p6

    move-object/from16 p7, v13

    .end local v13    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    move-object v13, v0

    move-object v0, v14

    move-object/from16 v14, p7

    move-object v2, v15

    move/from16 v15, v17

    :try_start_ae
    invoke-interface/range {v3 .. v15}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v3
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_b2} :catch_be

    .line 2104
    .local v3, "result":I
    move-object/from16 v4, p7

    .end local p7    # "options":Landroid/os/Bundle;
    .local v4, "options":Landroid/os/Bundle;
    :try_start_b4
    invoke-direct {v1, v3, v4}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2105
    invoke-static {v3, v2}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_ba} :catch_bc

    .line 2108
    .end local v3    # "result":I
    nop

    .line 2109
    return-object v0

    .line 2106
    :catch_bc
    move-exception v0

    goto :goto_c5

    .end local v4    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    :catch_be
    move-exception v0

    move-object/from16 v4, p7

    .end local p7    # "options":Landroid/os/Bundle;
    .restart local v4    # "options":Landroid/os/Bundle;
    goto :goto_c5

    .end local v4    # "options":Landroid/os/Bundle;
    .restart local v13    # "options":Landroid/os/Bundle;
    :catch_c2
    move-exception v0

    move-object v4, v13

    move-object v2, v15

    .line 2107
    .end local v13    # "options":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "options":Landroid/os/Bundle;
    :goto_c5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Failure from system"

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public greylist-max-r execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;
    .registers 28
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "ignoreTargetSecurity"    # Z
    .param p9, "userId"    # I

    .line 2121
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v15, p5

    move-object/from16 v17, p2

    check-cast v17, Landroid/app/IApplicationThread;

    .line 2124
    .local v17, "whoThread":Landroid/app/IApplicationThread;
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    move-object/from16 v4, p7

    invoke-interface {v0, v2, v15, v4}, Lmiui/window/MiuiEmbeddingWindowStub;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 2126
    .end local p7    # "options":Landroid/os/Bundle;
    .local v4, "options":Landroid/os/Bundle;
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    const/4 v14, 0x0

    if-eqz v0, :cond_73

    .line 2127
    iget-object v5, v1, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 2128
    :try_start_1e
    iget-object v0, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2129
    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_25
    if-ge v6, v0, :cond_6d

    .line 2130
    iget-object v7, v1, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2131
    .local v7, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v8, 0x0

    .line 2132
    .local v8, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v7}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v9

    if-eqz v9, :cond_46

    .line 2133
    if-nez v4, :cond_41

    .line 2134
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    move-object v4, v9

    .line 2136
    :cond_41
    invoke-virtual {v7, v2, v15, v4}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v9

    move-object v8, v9

    .line 2138
    :cond_46
    if-eqz v8, :cond_50

    .line 2139
    iget v9, v7, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v7, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2140
    monitor-exit v5

    return-object v8

    .line 2141
    :cond_50
    invoke-virtual {v7, v2, v14, v15}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 2142
    iget v9, v7, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v7, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2143
    invoke-virtual {v7}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 2144
    if-ltz p6, :cond_68

    invoke-virtual {v7}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v14

    :cond_68
    monitor-exit v5

    return-object v14

    .line 2129
    .end local v7    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v8    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_6a
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 2149
    .end local v0    # "N":I
    .end local v6    # "i":I
    :cond_6d
    monitor-exit v5

    move-object v13, v4

    goto :goto_74

    :catchall_70
    move-exception v0

    monitor-exit v5
    :try_end_72
    .catchall {:try_start_1e .. :try_end_72} :catchall_70

    throw v0

    .line 2126
    :cond_73
    move-object v13, v4

    .line 2152
    .end local v4    # "options":Landroid/os/Bundle;
    .local v13, "options":Landroid/os/Bundle;
    :goto_74
    :try_start_74
    invoke-virtual {v15, v2}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2153
    invoke-virtual {v15, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2154
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    .line 2155
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2156
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_8a} :catch_c5

    .line 2157
    if-eqz v3, :cond_94

    :try_start_8c
    iget-object v0, v3, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_8e} :catch_90

    move-object v10, v0

    goto :goto_95

    .line 2162
    :catch_90
    move-exception v0

    move-object v5, v13

    move-object v6, v15

    goto :goto_c8

    .line 2157
    :cond_94
    move-object v10, v14

    :goto_95
    const/4 v12, 0x0

    const/4 v0, 0x0

    .line 2155
    move-object/from16 v5, v17

    move-object/from16 v7, p5

    move-object/from16 v9, p3

    move/from16 v11, p6

    move-object/from16 p7, v13

    .end local v13    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    move-object v13, v0

    move-object v0, v14

    move-object/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    :try_start_a9
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v4
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ad} :catch_bf

    .line 2160
    .local v4, "result":I
    move-object/from16 v5, p7

    .end local p7    # "options":Landroid/os/Bundle;
    .local v5, "options":Landroid/os/Bundle;
    :try_start_af
    invoke-direct {v1, v4, v5}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b2} :catch_bb

    .line 2161
    move-object/from16 v6, p5

    :try_start_b4
    invoke-static {v4, v6}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_b7} :catch_b9

    .line 2164
    .end local v4    # "result":I
    nop

    .line 2165
    return-object v0

    .line 2162
    :catch_b9
    move-exception v0

    goto :goto_c8

    :catch_bb
    move-exception v0

    move-object/from16 v6, p5

    goto :goto_c8

    .end local v5    # "options":Landroid/os/Bundle;
    .restart local p7    # "options":Landroid/os/Bundle;
    :catch_bf
    move-exception v0

    move-object/from16 v6, p5

    move-object/from16 v5, p7

    .end local p7    # "options":Landroid/os/Bundle;
    .restart local v5    # "options":Landroid/os/Bundle;
    goto :goto_c8

    .end local v5    # "options":Landroid/os/Bundle;
    .restart local v13    # "options":Landroid/os/Bundle;
    :catch_c5
    move-exception v0

    move-object v5, v13

    move-object v6, v15

    .line 2163
    .end local v13    # "options":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v5    # "options":Landroid/os/Bundle;
    :goto_c8
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v7, "Failure from system"

    invoke-direct {v4, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public greylist-max-r execStartActivityFromAppTask(Landroid/content/Context;Landroid/os/IBinder;Landroid/app/IAppTask;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 16
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "appTask"    # Landroid/app/IAppTask;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "options"    # Landroid/os/Bundle;

    .line 2176
    invoke-virtual {p4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17c

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 2177
    move-object v0, p2

    check-cast v0, Landroid/app/IApplicationThread;

    .line 2180
    .local v0, "whoThread":Landroid/app/IApplicationThread;
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v1

    invoke-interface {v1, p1, p4, p5}, Lmiui/window/MiuiEmbeddingWindowStub;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p5

    .line 2182
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v1, :cond_6a

    .line 2183
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 2184
    :try_start_1b
    iget-object v2, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 2185
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v2, :cond_65

    .line 2186
    iget-object v4, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2187
    .local v4, "am":Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v5, 0x0

    .line 2188
    .local v5, "result":Landroid/app/Instrumentation$ActivityResult;
    invoke-virtual {v4}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 2189
    if-nez p5, :cond_3e

    .line 2190
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    move-object p5, v6

    .line 2192
    :cond_3e
    invoke-virtual {v4, p1, p4, p5}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v6

    move-object v5, v6

    .line 2194
    :cond_43
    if-eqz v5, :cond_4d

    .line 2195
    iget v6, v4, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2196
    monitor-exit v1

    return-void

    .line 2197
    :cond_4d
    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, p4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 2198
    iget v6, v4, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2199
    invoke-virtual {v4}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 2200
    monitor-exit v1

    return-void

    .line 2185
    .end local v4    # "am":Landroid/app/Instrumentation$ActivityMonitor;
    .end local v5    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 2205
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_65
    monitor-exit v1

    goto :goto_6a

    :catchall_67
    move-exception v2

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_1b .. :try_end_69} :catchall_67

    throw v2

    .line 2208
    :cond_6a
    :goto_6a
    :try_start_6a
    invoke-virtual {p4, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2209
    invoke-virtual {p4, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2210
    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2211
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 2212
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    .line 2210
    move-object v3, p3

    move-object v7, p4

    move-object v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/app/IAppTask;->startActivity(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    .line 2213
    .local v1, "result":I
    invoke-direct {p0, v1, p5}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2214
    invoke-static {v1, p4}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_91} :catch_93

    .line 2217
    .end local v1    # "result":I
    nop

    .line 2218
    return-void

    .line 2215
    :catch_93
    move-exception v1

    .line 2216
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failure from system"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist finish(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .line 265
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    if-eqz v0, :cond_7

    .line 266
    invoke-virtual {p0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    .line 268
    :cond_7
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    if-eqz v0, :cond_18

    .line 269
    if-nez p2, :cond_13

    .line 270
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p2, v0

    .line 272
    :cond_13
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 274
    :cond_18
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/app/UiAutomation;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 275
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->disconnect()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    .line 279
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishInstrumentation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instrumentation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread;->finishInstrumentation(ILandroid/os/Bundle;)V

    .line 281
    return-void
.end method

.method public whitelist getAllocCounts()Landroid/os/Bundle;
    .registers 5

    .line 1725
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1726
    .local v0, "results":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "global_alloc_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1727
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "global_alloc_size"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1728
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "global_freed_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1729
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "global_freed_size"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1730
    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "gc_invocation_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1731
    return-object v0
.end method

.method public whitelist getBinderCounts()Landroid/os/Bundle;
    .registers 5

    .line 1739
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1740
    .local v0, "results":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "sent_transactions"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1741
    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "received_transactions"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1742
    return-object v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 329
    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 320
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getProcessName()Ljava/lang/String;
    .registers 2

    .line 356
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTargetContext()Landroid/content/Context;
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getUiAutomation()Landroid/app/UiAutomation;
    .registers 2

    .line 2330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->getUiAutomation(I)Landroid/app/UiAutomation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUiAutomation(I)Landroid/app/UiAutomation;
    .registers 7
    .param p1, "flags"    # I

    .line 2368
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/app/UiAutomation;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 2370
    .local v0, "mustCreateNewAutomation":Z
    :goto_e
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_61

    .line 2371
    if-nez v0, :cond_20

    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1}, Landroid/app/UiAutomation;->getFlags()I

    move-result v1

    if-ne v1, p1, :cond_20

    .line 2372
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    return-object v1

    .line 2374
    :cond_20
    if-eqz v0, :cond_34

    .line 2375
    new-instance v1, Landroid/app/UiAutomation;

    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-direct {v1, v3, v4}, Landroid/app/UiAutomation;-><init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    iput-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    goto :goto_39

    .line 2378
    :cond_34
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1}, Landroid/app/UiAutomation;->disconnect()V

    .line 2380
    :goto_39
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1e

    if-gt v1, v3, :cond_4f

    .line 2381
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1, p1}, Landroid/app/UiAutomation;->connect(I)V

    .line 2382
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    return-object v1

    .line 2385
    :cond_4f
    :try_start_4f
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, p1, v3, v4}, Landroid/app/UiAutomation;->connectWithTimeout(IJ)V

    .line 2386
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;
    :try_end_58
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4f .. :try_end_58} :catch_59

    return-object v1

    .line 2387
    :catch_59
    move-exception v1

    .line 2388
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    iget-object v3, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v3}, Landroid/app/UiAutomation;->destroy()V

    .line 2389
    iput-object v2, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    .line 2392
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_61
    return-object v2
.end method

.method final greylist-max-o init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V
    .registers 8
    .param p1, "thread"    # Landroid/app/ActivityThread;
    .param p2, "instrContext"    # Landroid/content/Context;
    .param p3, "appContext"    # Landroid/content/Context;
    .param p4, "component"    # Landroid/content/ComponentName;
    .param p5, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p6, "uiAutomationConnection"    # Landroid/app/IUiAutomationConnection;

    .line 2224
    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 2225
    invoke-virtual {p1}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 2226
    iput-object p2, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 2227
    iput-object p3, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    .line 2228
    iput-object p4, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    .line 2229
    iput-object p5, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 2230
    iput-object p6, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 2231
    return-void
.end method

.method public whitelist invokeContextMenuAction(Landroid/app/Activity;II)Z
    .registers 9
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    .line 1031
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1037
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1038
    .local v0, "downEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1041
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 1043
    :try_start_11
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_19} :catch_31

    .line 1047
    nop

    .line 1049
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1050
    .local v1, "upEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1053
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 1077
    new-instance v2, Landroid/app/Instrumentation$1ContextMenuRunnable;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/app/Instrumentation$1ContextMenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 1078
    .local v2, "cmr":Landroid/app/Instrumentation$1ContextMenuRunnable;
    invoke-virtual {p0, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 1079
    iget-boolean v3, v2, Landroid/app/Instrumentation$1ContextMenuRunnable;->returnValue:Z

    return v3

    .line 1044
    .end local v1    # "upEvent":Landroid/view/KeyEvent;
    .end local v2    # "cmr":Landroid/app/Instrumentation$1ContextMenuRunnable;
    :catch_31
    move-exception v2

    .line 1045
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Instrumentation"

    const-string v4, "Could not sleep for long press timeout"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1046
    return v1
.end method

.method public whitelist invokeMenuActionSync(Landroid/app/Activity;II)Z
    .registers 6
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    .line 1015
    new-instance v0, Landroid/app/Instrumentation$1MenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1MenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 1016
    .local v0, "mr":Landroid/app/Instrumentation$1MenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 1017
    iget-boolean v1, v0, Landroid/app/Instrumentation$1MenuRunnable;->returnValue:Z

    return v1
.end method

.method public blacklist isInstrumenting()Z
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 158
    const/4 v0, 0x0

    return v0

    .line 160
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isProfiling()Z
    .registers 2

    .line 365
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    return v0
.end method

.method public whitelist newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .registers 34
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "application"    # Landroid/app/Application;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "info"    # Landroid/content/pm/ActivityInfo;
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "parent"    # Landroid/app/Activity;
    .param p9, "id"    # Ljava/lang/String;
    .param p10, "lastNonConfigurationInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1331
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1332
    .local v0, "activity":Landroid/app/Activity;
    const/16 v21, 0x0

    .line 1334
    .local v21, "aThread":Landroid/app/ActivityThread;
    if-nez p4, :cond_12

    .line 1335
    new-instance v1, Landroid/app/Application;

    invoke-direct {v1}, Landroid/app/Application;-><init>()V

    move-object/from16 v22, v1

    .end local p4    # "application":Landroid/app/Application;
    .local v1, "application":Landroid/app/Application;
    goto :goto_14

    .line 1334
    .end local v1    # "application":Landroid/app/Application;
    .restart local p4    # "application":Landroid/app/Application;
    :cond_12
    move-object/from16 v22, p4

    .line 1337
    .end local p4    # "application":Landroid/app/Application;
    .local v22, "application":Landroid/app/Application;
    :goto_14
    const/4 v6, 0x0

    move-object/from16 v13, p10

    check-cast v13, Landroid/app/Activity$NonConfigurationInstances;

    new-instance v1, Landroid/content/res/Configuration;

    move-object v14, v1

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v7, v22

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v20}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 1343
    return-object v0
.end method

.method public whitelist newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 6
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1362
    if-eqz p3, :cond_11

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1363
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 1364
    .local v0, "pkg":Ljava/lang/String;
    :goto_12
    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/AppComponentFactory;->instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public whitelist newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .registers 5
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1253
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;

    move-result-object v0

    .line 1254
    invoke-virtual {v0, p1, p2}, Landroid/app/AppComponentFactory;->instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v0

    .line 1255
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 1256
    return-object v0
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "arguments"    # Landroid/os/Bundle;

    .line 179
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 1

    .line 305
    return-void
.end method

.method public blacklist onEnterAnimationComplete()V
    .registers 3

    .line 463
    iget-object v0, p0, Landroid/app/Instrumentation;->mAnimationCompleteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_3
    iget-object v1, p0, Landroid/app/Instrumentation;->mAnimationCompleteLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 465
    monitor-exit v0

    .line 466
    return-void

    .line 465
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStart()V
    .registers 1

    .line 204
    return-void
.end method

.method public whitelist removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 4
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .line 976
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_3
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 978
    monitor-exit v0

    .line 979
    return-void

    .line 978
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist resetInTouchMode()V
    .registers 3

    .line 413
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 415
    .local v0, "defaultInTouchMode":Z
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 416
    return-void
.end method

.method public whitelist runOnMainSync(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runner"    # Ljava/lang/Runnable;

    .line 476
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 477
    new-instance v0, Landroid/app/Instrumentation$SyncRunnable;

    invoke-direct {v0, p1}, Landroid/app/Instrumentation$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 478
    .local v0, "sr":Landroid/app/Instrumentation$SyncRunnable;
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    invoke-virtual {v0}, Landroid/app/Instrumentation$SyncRunnable;->waitForComplete()V

    .line 480
    return-void
.end method

.method public whitelist sendCharacterSync(I)V
    .registers 2
    .param p1, "keyCode"    # I

    .line 1164
    invoke-virtual {p0, p1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 1165
    return-void
.end method

.method public whitelist sendKeyDownUpSync(I)V
    .registers 4
    .param p1, "keyCode"    # I

    .line 1150
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1151
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1152
    return-void
.end method

.method public whitelist sendKeySync(Landroid/view/KeyEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1120
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1122
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 1123
    .local v0, "downTime":J
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 1124
    .local v2, "eventTime":J
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    .line 1125
    .local v4, "source":I
    if-nez v4, :cond_13

    .line 1126
    const/16 v4, 0x101

    .line 1128
    :cond_13
    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_1d

    .line 1129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1131
    :cond_1d
    cmp-long v5, v0, v5

    if-nez v5, :cond_22

    .line 1132
    move-wide v0, v2

    .line 1134
    :cond_22
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 1135
    .local v5, "newEvent":Landroid/view/KeyEvent;
    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/KeyEvent;->setTime(JJ)V

    .line 1136
    invoke-virtual {v5, v4}, Landroid/view/KeyEvent;->setSource(I)V

    .line 1137
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/KeyEvent;->setFlags(I)V

    .line 1138
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1140
    return-void
.end method

.method public whitelist sendPointerSync(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1185
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_10

    .line 1187
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1190
    :cond_10
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->syncInputTransactionsAndInjectEventIntoSelf(Landroid/view/MotionEvent;)V

    .line 1191
    return-void
.end method

.method public whitelist sendStatus(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .line 231
    iget-object v0, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v0, :cond_e

    .line 233
    :try_start_4
    iget-object v1, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 237
    goto :goto_e

    .line 235
    :catch_a
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_e
    :goto_e
    return-void
.end method

.method public whitelist sendStringSync(Ljava/lang/String;)V
    .registers 9
    .param p1, "text"    # Ljava/lang/String;

    .line 1090
    if-nez p1, :cond_3

    .line 1091
    return-void

    .line 1093
    :cond_3
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1095
    .local v0, "keyCharacterMap":Landroid/view/KeyCharacterMap;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    .line 1097
    .local v1, "events":[Landroid/view/KeyEvent;
    if-eqz v1, :cond_27

    .line 1098
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    array-length v3, v1

    if-ge v2, v3, :cond_27

    .line 1104
    aget-object v3, v1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1098
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1107
    .end local v2    # "i":I
    :cond_27
    return-void
.end method

.method public whitelist sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1231
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1232
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1233
    const v0, 0x10004

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1235
    :cond_10
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1237
    return-void
.end method

.method public whitelist setAutomaticPerformanceSnapshots()V
    .registers 2

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 285
    new-instance v0, Landroid/os/PerformanceCollector;

    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    .line 286
    return-void
.end method

.method public whitelist setInTouchMode(Z)V
    .registers 3
    .param p1, "inTouch"    # Z

    .line 402
    :try_start_0
    const-string/jumbo v0, "window"

    .line 403
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 402
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 403
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setInTouchMode(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 406
    goto :goto_10

    .line 404
    :catch_f
    move-exception v0

    .line 407
    :goto_10
    return-void
.end method

.method public whitelist start()V
    .registers 4

    .line 187
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    if-nez v0, :cond_2a

    .line 190
    new-instance v0, Landroid/app/Instrumentation$InstrumentationThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/Instrumentation$InstrumentationThread;-><init>(Landroid/app/Instrumentation;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    .line 191
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 192
    return-void

    .line 188
    :cond_2a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Instrumentation already started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 504
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActivitySync(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Activity;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 533
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x178

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 534
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 537
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_f
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v1

    .line 540
    nop

    .line 541
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 540
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 542
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_b9

    .line 545
    iget-object v2, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "myProc":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 554
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 556
    new-instance v3, Landroid/app/Instrumentation$ActivityWaiter;

    invoke-direct {v3, p1}, Landroid/app/Instrumentation$ActivityWaiter;-><init>(Landroid/content/Intent;)V

    .line 558
    .local v3, "aw":Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-nez v4, :cond_51

    .line 559
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    .line 561
    :cond_51
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_5d
    .catchall {:try_start_f .. :try_end_5d} :catchall_d2

    .line 567
    :cond_5d
    :try_start_5d
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_62} :catch_63
    .catchall {:try_start_5d .. :try_end_62} :catchall_d2

    .line 569
    goto :goto_64

    .line 568
    :catch_63
    move-exception v4

    .line 570
    :goto_64
    :try_start_64
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 571
    iget-object v4, v3, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    move-object v1, v4

    .line 572
    .end local v2    # "myProc":Ljava/lang/String;
    .end local v3    # "aw":Landroid/app/Instrumentation$ActivityWaiter;
    .local v1, "activity":Landroid/app/Activity;
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_d2

    .line 575
    invoke-direct {p0, v1}, Landroid/app/Instrumentation;->waitForEnterAnimationComplete(Landroid/app/Activity;)V

    .line 579
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 580
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    const/4 v2, 0x1

    :try_start_79
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_80

    .line 581
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 582
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    return-object v1

    .line 579
    .restart local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :catchall_80
    move-exception v2

    :try_start_81
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_89

    :catchall_85
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_89
    throw v2

    .line 549
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "myProc":Ljava/lang/String;
    :cond_8a
    :try_start_8a
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent in process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resolved to different process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/Instrumentation;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "options":Landroid/os/Bundle;
    throw v3

    .line 543
    .end local v2    # "myProc":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/Instrumentation;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "options":Landroid/os/Bundle;
    :cond_b9
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve activity for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/Instrumentation;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "options":Landroid/os/Bundle;
    throw v2

    .line 572
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local p0    # "this":Landroid/app/Instrumentation;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "options":Landroid/os/Bundle;
    :catchall_d2
    move-exception v1

    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_8a .. :try_end_d4} :catchall_d2

    throw v1
.end method

.method public whitelist startAllocCounting()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1680
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1681
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1682
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1684
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    .line 1687
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 1688
    return-void
.end method

.method public whitelist startPerformanceSnapshot()V
    .registers 3

    .line 289
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_c

    .line 290
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PerformanceCollector;->beginSnapshot(Ljava/lang/String;)V

    .line 292
    :cond_c
    return-void
.end method

.method public whitelist startProfiling()V
    .registers 4

    .line 374
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 375
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProfileFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 379
    .end local v0    # "file":Ljava/io/File;
    :cond_23
    return-void
.end method

.method public whitelist stopAllocCounting()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1697
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1698
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1699
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1700
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 1701
    return-void
.end method

.method public whitelist stopProfiling()V
    .registers 2

    .line 385
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 386
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 388
    :cond_b
    return-void
.end method

.method public whitelist waitForIdle(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "recipient"    # Ljava/lang/Runnable;

    .line 426
    iget-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v1, Landroid/app/Instrumentation$Idler;

    invoke-direct {v1, p1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 427
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/Instrumentation$EmptyRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$EmptyRunnable-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    return-void
.end method

.method public whitelist waitForIdleSync()V
    .registers 5

    .line 436
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 437
    new-instance v0, Landroid/app/Instrumentation$Idler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    .line 438
    .local v0, "idler":Landroid/app/Instrumentation$Idler;
    iget-object v2, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-virtual {v2, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 439
    iget-object v2, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/app/Instrumentation$EmptyRunnable;

    invoke-direct {v3, v1}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$EmptyRunnable-IA;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    invoke-virtual {v0}, Landroid/app/Instrumentation$Idler;->waitForIdle()V

    .line 441
    return-void
.end method

.method public whitelist waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .registers 5
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .line 941
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivity()Landroid/app/Activity;

    move-result-object v0

    .line 942
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 943
    :try_start_7
    iget-object v2, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 944
    monitor-exit v1

    .line 945
    return-object v0

    .line 944
    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v2
.end method

.method public whitelist waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .registers 7
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;
    .param p2, "timeOut"    # J

    .line 960
    invoke-virtual {p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivityWithTimeout(J)Landroid/app/Activity;

    move-result-object v0

    .line 961
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 962
    :try_start_7
    iget-object v2, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 963
    monitor-exit v1

    .line 964
    return-object v0

    .line 963
    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v2
.end method
