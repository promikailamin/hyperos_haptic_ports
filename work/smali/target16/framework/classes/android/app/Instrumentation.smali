.class public Landroid/app/Instrumentation;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Instrumentation$InstrumentationThread;,
        Landroid/app/Instrumentation$Idler;,
        Landroid/app/Instrumentation$EmptyRunnable;,
        Landroid/app/Instrumentation$SyncRunnable;,
        Landroid/app/Instrumentation$ActivityWaiter;,
        Landroid/app/Instrumentation$ActivityMonitor;,
        Landroid/app/Instrumentation$ActivityResult;,
        Landroid/app/Instrumentation$ActivityGoing;,
        Landroid/app/Instrumentation$UiAutomationFlags;
    }
.end annotation


# static fields
.field private static final blacklist CONNECT_TIMEOUT_MILLIS:J = 0xea60L

.field static final blacklist DEBUG_FINISH_ACTIVITY:Z

.field public static final blacklist DEBUG_START_ACTIVITY:Z

.field public static final whitelist REPORT_KEY_IDENTIFIER:Ljava/lang/String; = "id"

.field public static final whitelist REPORT_KEY_STREAMRESULT:Ljava/lang/String; = "stream"

.field public static final greylist-max-o TAG:Ljava/lang/String; = "Instrumentation"

.field private static final blacklist VERBOSE:Z


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

.field private greylist-max-o mAppContext:Landroid/content/Context;

.field private greylist-max-o mAutomaticPerformanceSnapshots:Z

.field private greylist-max-o mComponent:Landroid/content/ComponentName;

.field private greylist-max-o mInstrContext:Landroid/content/Context;

.field private blacklist mMainHandler:Landroid/os/Handler;

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

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 118
    const-string v0, "Instrumentation"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/app/Instrumentation;->VERBOSE:Z

    .line 124
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 125
    const-string/jumbo v0, "persist.wm.debug.start_activity"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    sput-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    .line 126
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2b

    .line 127
    const-string/jumbo v0, "persist.wm.debug.finish_activity"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    sput-boolean v1, Landroid/app/Instrumentation;->DEBUG_FINISH_ACTIVITY:Z

    .line 126
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 140
    iput-object v0, p0, Landroid/app/Instrumentation;->mMainHandler:Landroid/os/Handler;

    .line 141
    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 157
    return-void
.end method

.method private greylist-max-o addValue(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5

    .line 1857
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1858
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1859
    if-eqz p1, :cond_13

    .line 1860
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1862
    :cond_13
    goto :goto_23

    .line 1863
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1864
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1865
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1867
    :goto_23
    return-void
.end method

.method private blacklist adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V
    .registers 5

    .line 523
    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_3a

    .line 524
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 525
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    .line 528
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 530
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    .line 532
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 535
    :cond_3a
    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    return-void
.end method

.method private greylist-max-o checkInstrumenting(Ljava/lang/String;)V
    .registers 4

    .line 174
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 178
    return-void

    .line 175
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " cannot be called outside of instrumented processes"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkPendingExceptionOnRavenwood()V
    .registers 0

    .line 161
    return-void
.end method

.method public static greylist-max-p checkStartActivityResult(ILjava/lang/Object;)V
    .registers 5

    .line 2440
    invoke-static {p0}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2441
    const/16 p1, 0x66

    if-ne p0, p1, :cond_1c

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 2442
    new-instance p0, Landroid/app/StackTrace;

    const-string p1, "Activity start aborted"

    invoke-direct {p0, p1}, Landroid/app/StackTrace;-><init>(Ljava/lang/String;)V

    const-string p1, "Instrumentation"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2444
    :cond_1c
    return-void

    .line 2447
    :cond_1d
    packed-switch p0, :pswitch_data_10c

    .line 2486
    :pswitch_20
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " when starting "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2477
    :pswitch_43
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Session calling startAssistantActivity does not match active session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2480
    :pswitch_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot start assistant activity on a hidden session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2450
    :pswitch_53
    instance-of p0, p1, Landroid/content/Intent;

    if-eqz p0, :cond_87

    move-object p0, p1

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 2451
    new-instance p1, Landroid/content/ActivityNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find explicit activity class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2453
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "; have you declared this activity in your AndroidManifest.xml, or does your intent not match its declared <intent-filter>?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2456
    :cond_87
    new-instance p0, Landroid/content/ActivityNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No Activity found to handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2462
    :pswitch_a0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "FORWARD_RESULT_FLAG used while also requesting a result"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2459
    :pswitch_a8
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed to start activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2465
    :pswitch_c1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PendingIntent is not an activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2483
    :pswitch_c9
    new-instance p0, Landroid/util/AndroidRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity could not be started for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2468
    :pswitch_e2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting under voice control not allowed for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2471
    :pswitch_fb
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Session calling startVoiceActivity does not match active session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2474
    :pswitch_103
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot start voice activity on a hidden session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_10c
    .packed-switch -0x64
        :pswitch_103
        :pswitch_fb
        :pswitch_20
        :pswitch_e2
        :pswitch_c9
        :pswitch_c1
        :pswitch_a8
        :pswitch_a0
        :pswitch_53
        :pswitch_53
        :pswitch_4b
        :pswitch_43
    .end packed-switch
.end method

.method private greylist-max-o getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;
    .registers 4

    .line 1466
    const-string v0, "Instrumentation"

    if-nez p1, :cond_c

    .line 1467
    const-string p1, "No pkg specified, disabling AppComponentFactory"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    sget-object p1, Landroid/app/AppComponentFactory;->DEFAULT:Landroid/app/AppComponentFactory;

    return-object p1

    .line 1470
    :cond_c
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    if-nez v1, :cond_1d

    .line 1471
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Uninitialized ActivityThread, likely app-created Instrumentation, disabling AppComponentFactory"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1473
    sget-object p1, Landroid/app/AppComponentFactory;->DEFAULT:Landroid/app/AppComponentFactory;

    return-object p1

    .line 1475
    :cond_1d
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object p1

    .line 1477
    if-nez p1, :cond_2e

    iget-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1478
    :cond_2e
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getFactory$ravenwood(Ljava/lang/String;)Landroid/app/AppComponentFactory;
    .registers 2

    .line 1482
    sget-object p1, Landroid/app/AppComponentFactory;->DEFAULT:Landroid/app/AppComponentFactory;

    return-object p1
.end method

.method private blacklist getUiAutomation$ravenwood(I)Landroid/app/UiAutomation;
    .registers 2

    .line 2600
    iget-object p1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    return-object p1
.end method

.method private blacklist internalCallActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;Landroid/app/ComponentCaller;)V
    .registers 6

    .line 1679
    iget-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1681
    if-eqz p2, :cond_b

    .line 1682
    :try_start_4
    iget-object v1, p2, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    iput-object v1, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    goto :goto_b

    .line 1687
    :catchall_9
    move-exception p2

    goto :goto_1b

    .line 1684
    :cond_b
    :goto_b
    if-eqz p2, :cond_13

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 1685
    :goto_14
    invoke-virtual {p0, p1, v1, p3}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/ComponentCaller;)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_9

    .line 1687
    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1688
    nop

    .line 1689
    return-void

    .line 1687
    :goto_1b
    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1688
    throw p2
.end method

.method public static whitelist newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .registers 2
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

    .line 1380
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 1381
    invoke-virtual {p0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 1382
    invoke-static {p1}, Lcom/android/internal/util/PropImitationHooks;->setProps(Landroid/content/Context;)V

    .line 1383
    return-object p0
.end method

.method private blacklist notifyStartActivityResult(ILandroid/os/Bundle;)V
    .registers 8

    .line 1490
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1491
    return-void

    .line 1493
    :cond_5
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1494
    :try_start_8
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1495
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_2f

    .line 1496
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1497
    invoke-virtual {v3}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1498
    if-nez p2, :cond_29

    .line 1499
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 1501
    :cond_29
    invoke-virtual {v3, p1, p2}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivityResult(ILandroid/os/Bundle;)V

    .line 1495
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1504
    :cond_2f
    monitor-exit v0

    .line 1505
    return-void

    .line 1504
    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_31

    throw p1
.end method

.method private greylist-max-o postPerformCreate(Landroid/app/Activity;)V
    .registers 7

    .line 1524
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v0, :cond_27

    .line 1525
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1526
    :try_start_7
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1527
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_22

    .line 1528
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1529
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, p1, p1, v4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1527
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1531
    :cond_22
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw p1

    .line 1533
    :cond_27
    :goto_27
    return-void
.end method

.method private greylist-max-o prePerformCreate(Landroid/app/Activity;)V
    .registers 8

    .line 1508
    iget-object v0, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-eqz v0, :cond_38

    .line 1509
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1510
    :try_start_7
    iget-object v1, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1511
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_33

    .line 1512
    iget-object v3, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityWaiter;

    .line 1513
    iget-object v4, v3, Landroid/app/Instrumentation$ActivityWaiter;->intent:Landroid/content/Intent;

    .line 1514
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1515
    iput-object p1, v3, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    .line 1516
    iget-object v4, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v5, Landroid/app/Instrumentation$ActivityGoing;

    invoke-direct {v5, p0, v3}, Landroid/app/Instrumentation$ActivityGoing;-><init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V

    invoke-virtual {v4, v5}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1511
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1519
    :cond_33
    monitor-exit v0

    goto :goto_38

    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw p1

    .line 1521
    :cond_38
    :goto_38
    return-void
.end method

.method private blacklist resolveActivityInfoForCtsInSandbox(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 4

    .line 539
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V

    .line 540
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 541
    if-eqz p1, :cond_1a

    .line 542
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 544
    :cond_1a
    return-object p1
.end method

.method private blacklist setDisplayIfNeeded(Landroid/view/KeyEvent;)V
    .registers 9

    .line 1215
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1216
    return-void

    .line 1221
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    .line 1222
    const/4 v1, -0x1

    const-string/jumbo v2, "setDisplayIfNeeded("

    const-string v3, "Instrumentation"

    if-eq v0, v1, :cond_36

    .line 1223
    sget-boolean v1, Landroid/app/Instrumentation;->VERBOSE:Z

    if-eqz v1, :cond_35

    .line 1224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "): not changing display id as it\'s explicitly set to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_35
    return-void

    .line 1230
    :cond_36
    iget-object v4, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1231
    invoke-virtual {v4}, Landroid/os/UserManager;->getMainDisplayIdAssignedToUser()I

    move-result v4

    .line 1232
    sget-boolean v5, Landroid/app/Instrumentation;->VERBOSE:Z

    if-eqz v5, :cond_80

    .line 1233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): eventDisplayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", user="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 1234
    invoke-virtual {v5}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", userDisplayId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1233
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_80
    if-ne v4, v1, :cond_a7

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "): UserManager returned INVALID_DISPLAY as display assigned to user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 1238
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1237
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    return-void

    .line 1243
    :cond_a7
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 1244
    return-void
.end method

.method private blacklist syncInputTransactionsAndInjectEventIntoSelf(Landroid/view/MotionEvent;)V
    .registers 7

    .line 1300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 1301
    const/16 v0, 0x2002

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

    .line 1302
    :goto_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1b

    move v1, v2

    .line 1305
    :cond_1b
    if-eqz v0, :cond_24

    .line 1306
    :try_start_1d
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 1307
    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V

    .line 1311
    :cond_24
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    .line 1312
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 1311
    const/4 v4, 0x2

    invoke-virtual {v0, p1, v4, v3}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;II)Z

    .line 1314
    if-eqz v1, :cond_39

    .line 1315
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    .line 1316
    invoke-interface {p1, v2}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_39} :catch_3a

    .line 1320
    :cond_39
    goto :goto_3e

    .line 1318
    :catch_3a
    move-exception p1

    .line 1319
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1321
    :goto_3e
    return-void
.end method

.method private greylist-max-o validateNotAppThread()V
    .registers 3

    .line 2493
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_b

    .line 2497
    return-void

    .line 2494
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method can not be called from the main application thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist acquireLooperManager(Landroid/os/Looper;)Landroid/os/TestLooperManager;
    .registers 3

    .line 2609
    const-string v0, "acquireLooperManager"

    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->checkInstrumenting(Ljava/lang/String;)V

    .line 2610
    new-instance v0, Landroid/os/TestLooperManager;

    invoke-direct {v0, p1}, Landroid/os/TestLooperManager;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public whitelist addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5

    .line 949
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 950
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 951
    return-object v0
.end method

.method public whitelist addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5

    .line 972
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 973
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 974
    return-object v0
.end method

.method public whitelist addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 4

    .line 922
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_3
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-nez v1, :cond_e

    .line 924
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    .line 926
    :cond_e
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    monitor-exit v0

    .line 928
    return-void

    .line 927
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public whitelist addResults(Landroid/os/Bundle;)V
    .registers 4

    .line 280
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 282
    :try_start_4
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 285
    nop

    .line 286
    return-void

    .line 283
    :catch_f
    move-exception p1

    .line 284
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method final greylist-max-o basicInit(Landroid/app/ActivityThread;)V
    .registers 2

    .line 2419
    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 2420
    invoke-virtual {p1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Instrumentation;->mMainHandler:Landroid/os/Handler;

    .line 2421
    return-void
.end method

.method public final blacklist basicInit(Landroid/content/Context;Landroid/content/Context;Landroid/app/UiAutomation;)V
    .registers 5

    .line 2430
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mMainHandler:Landroid/os/Handler;

    .line 2431
    iget-object v0, p0, Landroid/app/Instrumentation;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 2432
    iput-object p1, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 2433
    iput-object p2, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    .line 2434
    iput-object p3, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    .line 2435
    return-void
.end method

.method public whitelist callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1543
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->prePerformCreate(Landroid/app/Activity;)V

    .line 1544
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;)V

    .line 1545
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->postPerformCreate(Landroid/app/Activity;)V

    .line 1546
    return-void
.end method

.method public whitelist callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4

    .line 1557
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->prePerformCreate(Landroid/app/Activity;)V

    .line 1558
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1559
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->postPerformCreate(Landroid/app/Activity;)V

    .line 1560
    return-void
.end method

.method public whitelist callActivityOnDestroy(Landroid/app/Activity;)V
    .registers 2

    .line 1579
    invoke-virtual {p1}, Landroid/app/Activity;->performDestroy()V

    .line 1580
    return-void
.end method

.method public whitelist callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 6

    .line 1644
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->contentUriPermissionApis()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1645
    new-instance v0, Landroid/app/ComponentCaller;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/ComponentCaller;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->performNewIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V

    goto :goto_17

    .line 1648
    :cond_14
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performNewIntent(Landroid/content/Intent;)V

    .line 1650
    :goto_17
    return-void
.end method

.method public whitelist callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/ComponentCaller;)V
    .registers 4

    .line 1664
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performNewIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V

    .line 1665
    return-void
.end method

.method public greylist-max-r callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V
    .registers 6

    .line 1696
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->contentUriPermissionApis()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1697
    new-instance v0, Landroid/app/ComponentCaller;

    .line 1698
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/app/ComponentCaller;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 1697
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Instrumentation;->internalCallActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;Landroid/app/ComponentCaller;)V

    goto :goto_2c

    .line 1700
    :cond_14
    iget-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1702
    if-eqz p2, :cond_1f

    .line 1703
    :try_start_18
    iget-object v2, p2, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    iput-object v2, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    goto :goto_1f

    .line 1707
    :catchall_1d
    move-exception p2

    goto :goto_2d

    .line 1705
    :cond_1f
    :goto_1f
    if-eqz p2, :cond_26

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :cond_26
    invoke-virtual {p0, p1, v1}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_1d

    .line 1707
    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1708
    nop

    .line 1710
    :goto_2c
    return-void

    .line 1707
    :goto_2d
    iput-object v0, p1, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 1708
    throw p2
.end method

.method public blacklist callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;Landroid/app/ComponentCaller;)V
    .registers 4

    .line 1673
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Instrumentation;->internalCallActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;Landroid/app/ComponentCaller;)V

    .line 1674
    return-void
.end method

.method public whitelist callActivityOnPause(Landroid/app/Activity;)V
    .registers 2

    .line 1794
    invoke-virtual {p1}, Landroid/app/Activity;->performPause()V

    .line 1795
    return-void
.end method

.method public whitelist callActivityOnPictureInPictureRequested(Landroid/app/Activity;)V
    .registers 2

    .line 1814
    invoke-virtual {p1}, Landroid/app/Activity;->onPictureInPictureRequested()Z

    .line 1815
    return-void
.end method

.method public whitelist callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1618
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1619
    return-void
.end method

.method public whitelist callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4

    .line 1633
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1634
    return-void
.end method

.method public whitelist callActivityOnRestart(Landroid/app/Activity;)V
    .registers 2

    .line 1729
    invoke-virtual {p1}, Landroid/app/Activity;->onRestart()V

    .line 1730
    return-void
.end method

.method public whitelist callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1591
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1592
    return-void
.end method

.method public whitelist callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4

    .line 1605
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1606
    return-void
.end method

.method public whitelist callActivityOnResume(Landroid/app/Activity;)V
    .registers 7

    .line 1739
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Activity;->mResumed:Z

    .line 1740
    invoke-virtual {p1}, Landroid/app/Activity;->onResume()V

    .line 1742
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v0, :cond_2d

    .line 1743
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1744
    :try_start_d
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1745
    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_28

    .line 1746
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1747
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, p1, p1, v4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1745
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1749
    :cond_28
    monitor-exit v0

    goto :goto_2d

    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_2a

    throw p1

    .line 1751
    :cond_2d
    :goto_2d
    return-void
.end method

.method public whitelist callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1772
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1773
    return-void
.end method

.method public whitelist callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4

    .line 1784
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1785
    return-void
.end method

.method public whitelist callActivityOnStart(Landroid/app/Activity;)V
    .registers 2

    .line 1719
    invoke-virtual {p1}, Landroid/app/Activity;->onStart()V

    .line 1720
    return-void
.end method

.method public whitelist callActivityOnStop(Landroid/app/Activity;)V
    .registers 2

    .line 1760
    invoke-virtual {p1}, Landroid/app/Activity;->onStop()V

    .line 1761
    return-void
.end method

.method public whitelist callActivityOnUserLeaving(Landroid/app/Activity;)V
    .registers 2

    .line 1804
    invoke-virtual {p1}, Landroid/app/Activity;->performUserLeaving()V

    .line 1805
    return-void
.end method

.method public whitelist callApplicationOnCreate(Landroid/app/Application;)V
    .registers 2

    .line 1399
    invoke-virtual {p1}, Landroid/app/Application;->onCreate()V

    .line 1400
    return-void
.end method

.method public whitelist checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .registers 5

    .line 991
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 992
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 993
    :try_start_6
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->getHits()I

    move-result v1

    if-ge v1, p2, :cond_f

    .line 994
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 996
    :cond_f
    iget-object p2, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 997
    monitor-exit v0

    .line 998
    const/4 p1, 0x1

    return p1

    .line 997
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public whitelist endPerformanceSnapshot()V
    .registers 2

    .line 327
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_e

    .line 328
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    invoke-virtual {v0}, Landroid/os/PerformanceCollector;->endSnapshot()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 330
    :cond_e
    return-void
.end method

.method public greylist execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 15

    .line 2041
    nop

    .line 2042
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 2041
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 2043
    return-void
.end method

.method public greylist-max-r execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)I
    .registers 20

    .line 2061
    move-object/from16 v4, p5

    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_6b

    .line 2062
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 2063
    array-length v1, v4

    move v2, v9

    :goto_10
    if-ge v2, v1, :cond_1e

    aget-object v3, v4, v2

    .line 2064
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2063
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2066
    :cond_1e
    const-string v1, "Instrumentation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivities: who="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v8, p7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intents=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] options="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, p6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6f

    .line 2061
    :cond_6b
    move-object/from16 v2, p6

    move/from16 v8, p7

    .line 2069
    :goto_6f
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    :goto_75
    if-ltz v0, :cond_7f

    .line 2071
    aget-object v1, v4, v0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    add-int/lit8 v0, v0, -0x1

    goto :goto_75

    .line 2073
    :cond_7f
    move-object v1, p2

    check-cast v1, Landroid/app/IApplicationThread;

    .line 2074
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 2075
    array-length v0, v4

    move v3, v9

    :goto_8a
    if-ge v3, v0, :cond_94

    aget-object v5, v4, v3

    .line 2076
    invoke-direct {p0, v5}, Landroid/app/Instrumentation;->adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V

    .line 2075
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 2079
    :cond_94
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v0, :cond_f2

    .line 2080
    iget-object v3, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2081
    :try_start_9b
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2082
    move v5, v9

    :goto_a2
    if-ge v5, v0, :cond_eb

    .line 2083
    iget-object v6, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2084
    nop

    .line 2085
    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v7

    const/4 v10, 0x0

    if-eqz v7, :cond_c5

    .line 2086
    if-nez v2, :cond_be

    .line 2087
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 2089
    :cond_be
    aget-object v7, v4, v9

    invoke-virtual {v6, p1, v7, v2}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v7

    goto :goto_c6

    .line 2085
    :cond_c5
    move-object v7, v10

    .line 2091
    :goto_c6
    const/16 v11, -0x60

    if-eqz v7, :cond_d2

    .line 2092
    iget p1, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2093
    monitor-exit v3

    return v11

    .line 2094
    :cond_d2
    aget-object v7, v4, v9

    invoke-virtual {v6, p1, v10, v7}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_e8

    .line 2095
    iget v0, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2096
    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 2097
    monitor-exit v3

    return v11

    .line 2082
    :cond_e8
    add-int/lit8 v5, v5, 0x1

    goto :goto_a2

    .line 2102
    :cond_eb
    monitor-exit v3

    move-object v7, v2

    goto :goto_f3

    :catchall_ee
    move-exception v0

    move-object p1, v0

    monitor-exit v3
    :try_end_f1
    .catchall {:try_start_9b .. :try_end_f1} :catchall_ee

    throw p1

    .line 2079
    :cond_f2
    move-object v7, v2

    .line 2105
    :goto_f3
    :try_start_f3
    array-length v0, v4

    new-array v5, v0, [Ljava/lang/String;

    .line 2106
    move v0, v9

    :goto_f7
    array-length v2, v4

    if-ge v0, v2, :cond_113

    .line 2107
    aget-object v2, v4, v0

    invoke-virtual {v2, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2108
    aget-object v2, v4, v0

    invoke-virtual {v2, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2109
    aget-object v2, v4, v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 2106
    add-int/lit8 v0, v0, 0x1

    goto :goto_f7

    .line 2111
    :cond_113
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 2112
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2111
    move-object v6, p3

    invoke-interface/range {v0 .. v8}, Landroid/app/IActivityTaskManager;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result p1

    .line 2114
    invoke-direct {p0, p1, v7}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2115
    aget-object v0, p5, v9

    invoke-static {p1, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_12c
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_12c} :catch_12d

    .line 2116
    return p1

    .line 2117
    :catch_12d
    move-exception v0

    move-object p1, v0

    .line 2118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failure from system"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public greylist execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 21

    .line 1977
    move-object/from16 v0, p4

    move-object/from16 v4, p5

    move/from16 v8, p6

    sget-boolean v1, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v1, :cond_53

    .line 1978
    const-string v1, "Instrumentation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivity: who="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " options="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 1977
    :cond_53
    move-object/from16 v3, p7

    .line 1981
    :goto_55
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    move-object v1, p2

    check-cast v1, Landroid/app/IApplicationThread;

    .line 1983
    const/4 v12, 0x0

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v2

    goto :goto_64

    :cond_63
    move-object v2, v12

    .line 1984
    :goto_64
    if-eqz v2, :cond_6b

    .line 1985
    const-string v5, "android.intent.extra.REFERRER"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1987
    :cond_6b
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 1988
    invoke-direct {p0, v4}, Landroid/app/Instrumentation;->adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V

    .line 1990
    :cond_74
    iget-object v2, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v2, :cond_d1

    .line 1991
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1992
    :try_start_7b
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1993
    const/4 v6, 0x0

    :goto_82
    if-ge v6, v5, :cond_ca

    .line 1994
    iget-object v7, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1995
    nop

    .line 1996
    invoke-virtual {v7}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v9

    if-eqz v9, :cond_a2

    .line 1997
    if-nez v3, :cond_9d

    .line 1998
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 2000
    :cond_9d
    invoke-virtual {v7, p1, v4, v3}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v9

    goto :goto_a3

    .line 1996
    :cond_a2
    move-object v9, v12

    .line 2002
    :goto_a3
    if-eqz v9, :cond_ad

    .line 2003
    iget p1, v7, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v7, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2004
    monitor-exit v2

    return-object v9

    .line 2005
    :cond_ad
    invoke-virtual {v7, p1, v12, v4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_c7

    .line 2006
    iget v5, v7, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v7, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2007
    invoke-virtual {v7}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 2008
    if-ltz v8, :cond_c5

    invoke-virtual {v7}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v12

    :cond_c5
    monitor-exit v2

    return-object v12

    .line 1993
    :cond_c7
    add-int/lit8 v6, v6, 0x1

    goto :goto_82

    .line 2013
    :cond_ca
    monitor-exit v2

    move-object v11, v3

    goto :goto_d2

    :catchall_cd
    move-exception v0

    move-object p1, v0

    monitor-exit v2
    :try_end_d0
    .catchall {:try_start_7b .. :try_end_d0} :catchall_cd

    throw p1

    .line 1990
    :cond_d1
    move-object v11, v3

    .line 2016
    :goto_d2
    :try_start_d2
    invoke-virtual {v4, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2017
    invoke-virtual {v4, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2018
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    .line 2019
    move-object v3, v2

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2020
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 2021
    if-eqz v0, :cond_f4

    iget-object v0, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v7, v0

    goto :goto_f5

    :cond_f4
    move-object v7, v12

    .line 2018
    :goto_f5
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p3

    move-object v0, v5

    move-object v5, p1

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityTaskManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result p1

    .line 2022
    invoke-direct {p0, p1, v11}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2023
    invoke-static {p1, v4}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_105} :catch_107

    .line 2026
    nop

    .line 2027
    return-object v12

    .line 2024
    :catch_107
    move-exception v0

    move-object p1, v0

    .line 2025
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failure from system"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public greylist execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 21

    .line 2153
    move-object/from16 v4, p5

    move/from16 v8, p6

    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_53

    .line 2154
    const-string v0, "Instrumentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity: who="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " options="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    .line 2153
    :cond_53
    move-object/from16 v7, p4

    move-object/from16 v2, p7

    .line 2158
    :goto_57
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    move-object v1, p2

    check-cast v1, Landroid/app/IApplicationThread;

    .line 2160
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2161
    invoke-direct {p0, v4}, Landroid/app/Instrumentation;->adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V

    .line 2163
    :cond_66
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    const/4 v12, 0x0

    if-eqz v0, :cond_c4

    .line 2164
    iget-object v3, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2165
    :try_start_6e
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2166
    const/4 v5, 0x0

    :goto_75
    if-ge v5, v0, :cond_bd

    .line 2167
    iget-object v6, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2168
    nop

    .line 2169
    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v9

    if-eqz v9, :cond_95

    .line 2170
    if-nez v2, :cond_90

    .line 2171
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 2173
    :cond_90
    invoke-virtual {v6, p1, v4, v2}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v9

    goto :goto_96

    .line 2169
    :cond_95
    move-object v9, v12

    .line 2175
    :goto_96
    if-eqz v9, :cond_a0

    .line 2176
    iget p1, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2177
    monitor-exit v3

    return-object v9

    .line 2178
    :cond_a0
    invoke-virtual {v6, p1, v12, v4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_ba

    .line 2179
    iget v0, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2180
    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 2181
    if-ltz v8, :cond_b8

    invoke-virtual {v6}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v12

    :cond_b8
    monitor-exit v3

    return-object v12

    .line 2166
    :cond_ba
    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    .line 2186
    :cond_bd
    monitor-exit v3

    move-object v11, v2

    goto :goto_c5

    :catchall_c0
    move-exception v0

    move-object p1, v0

    monitor-exit v3
    :try_end_c3
    .catchall {:try_start_6e .. :try_end_c3} :catchall_c0

    throw p1

    .line 2163
    :cond_c4
    move-object v11, v2

    .line 2189
    :goto_c5
    :try_start_c5
    invoke-virtual {v4, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2190
    invoke-virtual {v4, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2191
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 2192
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 2191
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p3

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityTaskManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result p1

    .line 2195
    invoke-direct {p0, p1, v11}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2196
    invoke-static {p1, v4}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_ed} :catch_ef

    .line 2199
    nop

    .line 2200
    return-object v12

    .line 2197
    :catch_ef
    move-exception v0

    move-object p1, v0

    .line 2198
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failure from system"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public greylist execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 23

    .line 2233
    move-object/from16 v4, p5

    move/from16 v8, p6

    sget-boolean v1, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v1, :cond_5f

    .line 2234
    const-string v1, "Instrumentation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivity: who="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " intent="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " requestCode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " resultWho="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v7, p4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " options="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v5, p7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    .line 2233
    :cond_5f
    move-object/from16 v7, p4

    move-object/from16 v5, p7

    move-object/from16 v3, p8

    .line 2238
    :goto_65
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2239
    move-object/from16 v1, p2

    check-cast v1, Landroid/app/IApplicationThread;

    .line 2240
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 2241
    invoke-direct {p0, v4}, Landroid/app/Instrumentation;->adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V

    .line 2243
    :cond_75
    iget-object v2, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    const/4 v13, 0x0

    if-eqz v2, :cond_d2

    .line 2244
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 2245
    :try_start_7d
    iget-object v6, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 2246
    const/4 v9, 0x0

    :goto_84
    if-ge v9, v6, :cond_cc

    .line 2247
    iget-object v10, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2248
    nop

    .line 2249
    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v11

    if-eqz v11, :cond_a4

    .line 2250
    if-nez v5, :cond_9f

    .line 2251
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 2253
    :cond_9f
    invoke-virtual {v10, p1, v4, v5}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v11

    goto :goto_a5

    .line 2249
    :cond_a4
    move-object v11, v13

    .line 2255
    :goto_a5
    if-eqz v11, :cond_af

    .line 2256
    iget v0, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2257
    monitor-exit v2

    return-object v11

    .line 2258
    :cond_af
    invoke-virtual {v10, p1, v13, v4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_c9

    .line 2259
    iget v6, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v10, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2260
    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 2261
    if-ltz v8, :cond_c7

    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v13

    :cond_c7
    monitor-exit v2

    return-object v13

    .line 2246
    :cond_c9
    add-int/lit8 v9, v9, 0x1

    goto :goto_84

    .line 2266
    :cond_cc
    monitor-exit v2

    move-object v11, v5

    goto :goto_d3

    :catchall_cf
    move-exception v0

    monitor-exit v2
    :try_end_d1
    .catchall {:try_start_7d .. :try_end_d1} :catchall_cf

    throw v0

    .line 2243
    :cond_d2
    move-object v11, v5

    .line 2269
    :goto_d3
    :try_start_d3
    invoke-virtual {v4, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2270
    invoke-virtual {v4, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2271
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 2272
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2273
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 2274
    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 2271
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p3

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    .line 2275
    invoke-direct {p0, v0, v11}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2276
    invoke-static {v0, v4}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_ff
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_ff} :catch_101

    .line 2279
    nop

    .line 2280
    return-object v13

    .line 2277
    :catch_101
    move-exception v0

    .line 2278
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failure from system"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-r execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;
    .registers 24

    .line 2292
    move-object/from16 v1, p4

    move-object/from16 v3, p5

    move/from16 v7, p6

    sget-boolean v2, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v2, :cond_6b

    .line 2293
    const-string v2, "Instrumentation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity: who="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v12, p9

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requestCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ignoreTargetSecurity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v11, p8

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " options="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, p7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_71

    .line 2292
    :cond_6b
    move-object/from16 v5, p7

    move/from16 v11, p8

    move/from16 v12, p9

    .line 2298
    :goto_71
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    move-object/from16 v2, p2

    check-cast v2, Landroid/app/IApplicationThread;

    .line 2300
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 2301
    invoke-direct {p0, v3}, Landroid/app/Instrumentation;->adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V

    .line 2303
    :cond_81
    iget-object v4, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    const/4 v13, 0x0

    if-eqz v4, :cond_de

    .line 2304
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 2305
    :try_start_89
    iget-object v6, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 2306
    const/4 v8, 0x0

    :goto_90
    if-ge v8, v6, :cond_d8

    .line 2307
    iget-object v9, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2308
    nop

    .line 2309
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v10

    if-eqz v10, :cond_b0

    .line 2310
    if-nez v5, :cond_ab

    .line 2311
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 2313
    :cond_ab
    invoke-virtual {v9, p1, v3, v5}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v10

    goto :goto_b1

    .line 2309
    :cond_b0
    move-object v10, v13

    .line 2315
    :goto_b1
    if-eqz v10, :cond_bb

    .line 2316
    iget v0, v9, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2317
    monitor-exit v4

    return-object v10

    .line 2318
    :cond_bb
    invoke-virtual {v9, p1, v13, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_d5

    .line 2319
    iget v6, v9, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v9, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2320
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 2321
    if-ltz v7, :cond_d3

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v13

    :cond_d3
    monitor-exit v4

    return-object v13

    .line 2306
    :cond_d5
    add-int/lit8 v8, v8, 0x1

    goto :goto_90

    .line 2326
    :cond_d8
    monitor-exit v4

    move-object v10, v5

    goto :goto_df

    :catchall_db
    move-exception v0

    monitor-exit v4
    :try_end_dd
    .catchall {:try_start_89 .. :try_end_dd} :catchall_db

    throw v0

    .line 2303
    :cond_de
    move-object v10, v5

    .line 2329
    :goto_df
    :try_start_df
    invoke-virtual {v3, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2330
    invoke-virtual {v3, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2331
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 2332
    move-object v4, v2

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2333
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 2334
    if-eqz v1, :cond_fc

    iget-object v1, v1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v6, v1

    goto :goto_fd

    :cond_fc
    move-object v6, v13

    .line 2332
    :goto_fd
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v4

    move-object v4, v5

    move-object/from16 v5, p3

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityTaskManager;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    .line 2337
    invoke-direct {p0, v0, v10}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2338
    invoke-static {v0, v3}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_10d
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_10d} :catch_10f

    .line 2341
    nop

    .line 2342
    return-object v13

    .line 2339
    :catch_10f
    move-exception v0

    .line 2340
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failure from system"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-r execStartActivityFromAppTask(Landroid/content/Context;Landroid/os/IBinder;Landroid/app/IAppTask;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 15

    .line 2353
    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_36

    .line 2354
    const-string v0, "Instrumentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity: who="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " options="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2357
    :cond_36
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2358
    check-cast p2, Landroid/app/IApplicationThread;

    .line 2359
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2360
    invoke-direct {p0, p4}, Landroid/app/Instrumentation;->adjustIntentForCtsInSdkSandboxInstrumentation(Landroid/content/Intent;)V

    .line 2362
    :cond_44
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v0, :cond_9c

    .line 2363
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 2364
    :try_start_4b
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2365
    const/4 v2, 0x0

    :goto_52
    if-ge v2, v0, :cond_95

    .line 2366
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Instrumentation$ActivityMonitor;

    .line 2367
    nop

    .line 2368
    invoke-virtual {v3}, Landroid/app/Instrumentation$ActivityMonitor;->ignoreMatchingSpecificIntents()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_73

    .line 2369
    if-nez p5, :cond_6e

    .line 2370
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p5

    invoke-virtual {p5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p5

    .line 2372
    :cond_6e
    invoke-virtual {v3, p1, p4, p5}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v4

    goto :goto_74

    .line 2368
    :cond_73
    move-object v4, v5

    .line 2374
    :goto_74
    if-eqz v4, :cond_7e

    .line 2375
    iget p1, v3, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v3, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2376
    monitor-exit v1

    return-void

    .line 2377
    :cond_7e
    invoke-virtual {v3, p1, v5, p4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 2378
    iget v0, v3, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 2379
    invoke-virtual {v3}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 2380
    monitor-exit v1

    return-void

    .line 2365
    :cond_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 2385
    :cond_95
    monitor-exit v1

    move-object v8, p5

    goto :goto_9d

    :catchall_98
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_4b .. :try_end_9b} :catchall_98

    throw p1

    .line 2362
    :cond_9c
    move-object v8, p5

    .line 2388
    :goto_9d
    :try_start_9d
    invoke-virtual {p4, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 2389
    invoke-virtual {p4, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2390
    invoke-interface {p2}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2391
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 2392
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    .line 2390
    move-object v2, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v8}, Landroid/app/IAppTask;->startActivity(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    .line 2393
    invoke-direct {p0, p1, v8}, Landroid/app/Instrumentation;->notifyStartActivityResult(ILandroid/os/Bundle;)V

    .line 2394
    invoke-static {p1, v6}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_c3} :catch_c5

    .line 2397
    nop

    .line 2398
    return-void

    .line 2395
    :catch_c5
    move-exception v0

    move-object p1, v0

    .line 2396
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Failure from system"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist finish(ILandroid/os/Bundle;)V
    .registers 4

    .line 299
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    if-eqz v0, :cond_7

    .line 300
    invoke-virtual {p0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    .line 302
    :cond_7
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    if-eqz v0, :cond_17

    .line 303
    if-nez p2, :cond_12

    .line 304
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 306
    :cond_12
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 308
    :cond_17
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 309
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->disconnect()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    .line 312
    :cond_2b
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread;->finishInstrumentation(ILandroid/os/Bundle;)V

    .line 313
    return-void
.end method

.method public whitelist getAllocCounts()Landroid/os/Bundle;
    .registers 5

    .line 1873
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1874
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "global_alloc_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1875
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "global_alloc_size"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1876
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "global_freed_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1877
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "global_freed_size"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1878
    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "gc_invocation_count"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1879
    return-object v0
.end method

.method public whitelist getBinderCounts()Landroid/os/Bundle;
    .registers 5

    .line 1887
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1888
    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "sent_transactions"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1889
    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "received_transactions"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1890
    return-object v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 363
    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 353
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getProcessName()Ljava/lang/String;
    .registers 2

    .line 391
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTargetContext()Landroid/content/Context;
    .registers 2

    .line 379
    iget-object v0, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getUiAutomation()Landroid/app/UiAutomation;
    .registers 2

    .line 2531
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->getUiAutomation(I)Landroid/app/UiAutomation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUiAutomation(I)Landroid/app/UiAutomation;
    .registers 8

    .line 2570
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 2572
    :goto_10
    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_87

    .line 2573
    if-nez v0, :cond_22

    iget-object v1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1}, Landroid/app/UiAutomation;->getFlags()I

    move-result v1

    if-ne v1, p1, :cond_22

    .line 2574
    iget-object p1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    return-object p1

    .line 2576
    :cond_22
    if-eqz v0, :cond_32

    .line 2577
    new-instance v0, Landroid/app/UiAutomation;

    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-direct {v0, v1, v3}, Landroid/app/UiAutomation;-><init>(Landroid/content/Context;Landroid/app/IUiAutomationConnection;)V

    iput-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    goto :goto_37

    .line 2579
    :cond_32
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->disconnect()V

    .line 2581
    :goto_37
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_4d

    .line 2582
    iget-object v0, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0, p1}, Landroid/app/UiAutomation;->connect(I)V

    .line 2583
    iget-object p1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    return-object p1

    .line 2585
    :cond_4d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2587
    :try_start_51
    iget-object v3, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, p1, v4, v5}, Landroid/app/UiAutomation;->connectWithTimeout(IJ)V

    .line 2588
    iget-object p1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;
    :try_end_5b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_51 .. :try_end_5b} :catch_5c

    return-object p1

    .line 2589
    :catch_5c
    move-exception p1

    .line 2590
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 2591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to connect to UiAutomation. Waited for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instrumentation"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2592
    iget-object p1, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {p1}, Landroid/app/UiAutomation;->destroy()V

    .line 2593
    iput-object v2, p0, Landroid/app/Instrumentation;->mUiAutomation:Landroid/app/UiAutomation;

    .line 2596
    :cond_87
    return-object v2
.end method

.method final greylist-max-o init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V
    .registers 7

    .line 2404
    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 2405
    invoke-virtual {p1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Instrumentation;->mMainHandler:Landroid/os/Handler;

    .line 2406
    iget-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 2407
    iput-object p2, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 2408
    iput-object p3, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    .line 2409
    iput-object p4, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    .line 2410
    iput-object p5, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 2411
    iput-object p6, p0, Landroid/app/Instrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 2412
    return-void
.end method

.method public whitelist invokeContextMenuAction(Landroid/app/Activity;II)Z
    .registers 9

    .line 1101
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1107
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1108
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1111
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 1113
    :try_start_11
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_19} :catch_31

    .line 1117
    nop

    .line 1119
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1120
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1123
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 1147
    new-instance v0, Landroid/app/Instrumentation$1ContextMenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1ContextMenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 1148
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 1149
    iget-boolean p1, v0, Landroid/app/Instrumentation$1ContextMenuRunnable;->returnValue:Z

    return p1

    .line 1114
    :catch_31
    move-exception p1

    .line 1115
    const-string p2, "Instrumentation"

    const-string p3, "Could not sleep for long press timeout"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1116
    return v1
.end method

.method public whitelist invokeMenuActionSync(Landroid/app/Activity;II)Z
    .registers 5

    .line 1085
    new-instance v0, Landroid/app/Instrumentation$1MenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1MenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 1086
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 1087
    iget-boolean p1, v0, Landroid/app/Instrumentation$1MenuRunnable;->returnValue:Z

    return p1
.end method

.method public blacklist isInstrumenting()Z
    .registers 2

    .line 189
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 190
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isProfiling()Z
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    return v0
.end method

.method blacklist isSdkSandboxAllowedToStartActivities()Z
    .registers 3

    .line 498
    invoke-static {}, Landroid/os/Process;->isSdkSandbox()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-boolean v0, v0, Landroid/app/ActivityThread$AppBindData;->isSdkInSandbox:Z

    if-eqz v0, :cond_2c

    .line 502
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 503
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 504
    const-string v1, "android.permission.START_ACTIVITIES_FROM_SDK_SANDBOX"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 498
    :goto_2d
    return v0
.end method

.method public whitelist newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .registers 33
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

    .line 1428
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 1429
    nop

    .line 1431
    if-nez p4, :cond_11

    .line 1432
    new-instance v0, Landroid/app/Application;

    invoke-direct {v0}, Landroid/app/Application;-><init>()V

    move-object v7, v0

    goto :goto_13

    .line 1431
    :cond_11
    move-object/from16 v7, p4

    .line 1434
    :goto_13
    move-object/from16 v13, p10

    check-cast v13, Landroid/app/Activity$NonConfigurationInstances;

    new-instance v14, Landroid/content/res/Configuration;

    invoke-direct {v14}, Landroid/content/res/Configuration;-><init>()V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v21}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 1440
    return-object v1
.end method

.method public whitelist newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1459
    if-eqz p3, :cond_11

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1460
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 1461
    :goto_12
    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AppComponentFactory;->instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method public whitelist newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1360
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;

    move-result-object v0

    .line 1361
    invoke-virtual {v0, p1, p2}, Landroid/app/AppComponentFactory;->instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object p1

    .line 1362
    invoke-virtual {p1, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 1363
    invoke-static {p3}, Lcom/android/internal/util/PropImitationHooks;->setProps(Landroid/content/Context;)V

    .line 1364
    return-object p1
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 212
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 1

    .line 337
    return-void
.end method

.method public whitelist onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .registers 3

    .line 255
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onStart()V
    .registers 1

    .line 238
    return-void
.end method

.method public whitelist removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 4

    .line 1046
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1047
    :try_start_3
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1048
    monitor-exit v0

    .line 1049
    return-void

    .line 1048
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public whitelist resetInTouchMode()V
    .registers 3

    .line 448
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 450
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 451
    return-void
.end method

.method public whitelist runOnMainSync(Ljava/lang/Runnable;)V
    .registers 3

    .line 490
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 491
    new-instance v0, Landroid/app/Instrumentation$SyncRunnable;

    invoke-direct {v0, p1}, Landroid/app/Instrumentation$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 492
    iget-object p1, p0, Landroid/app/Instrumentation;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 493
    invoke-virtual {v0}, Landroid/app/Instrumentation$SyncRunnable;->waitForComplete()V

    .line 494
    invoke-static {}, Landroid/app/Instrumentation;->checkPendingExceptionOnRavenwood()V

    .line 495
    return-void
.end method

.method public whitelist sendCharacterSync(I)V
    .registers 2

    .line 1270
    invoke-virtual {p0, p1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 1271
    return-void
.end method

.method public whitelist sendKeyDownUpSync(I)V
    .registers 10

    .line 1254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1255
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1256
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1258
    return-void
.end method

.method public whitelist sendKeySync(Landroid/view/KeyEvent;)V
    .registers 10

    .line 1190
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1192
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 1193
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 1194
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    .line 1195
    if-nez v4, :cond_13

    .line 1196
    const/16 v4, 0x101

    .line 1198
    :cond_13
    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_1d

    .line 1199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1201
    :cond_1d
    cmp-long v5, v0, v5

    if-nez v5, :cond_22

    .line 1202
    move-wide v0, v2

    .line 1204
    :cond_22
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 1205
    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/KeyEvent;->setTime(JJ)V

    .line 1206
    invoke-virtual {v5, v4}, Landroid/view/KeyEvent;->setSource(I)V

    .line 1207
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    invoke-virtual {v5, p1}, Landroid/view/KeyEvent;->setFlags(I)V

    .line 1208
    invoke-direct {p0, v5}, Landroid/app/Instrumentation;->setDisplayIfNeeded(Landroid/view/KeyEvent;)V

    .line 1210
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v5, v0}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1212
    return-void
.end method

.method public whitelist sendPointerSync(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1291
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_10

    .line 1293
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1296
    :cond_10
    invoke-direct {p0, p1}, Landroid/app/Instrumentation;->syncInputTransactionsAndInjectEventIntoSelf(Landroid/view/MotionEvent;)V

    .line 1297
    return-void
.end method

.method public whitelist sendStatus(ILandroid/os/Bundle;)V
    .registers 5

    .line 265
    iget-object v0, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v0, :cond_10

    .line 267
    :try_start_4
    iget-object v0, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v1, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 271
    goto :goto_10

    .line 269
    :catch_c
    move-exception p1

    .line 270
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 273
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist sendStringSync(Ljava/lang/String;)V
    .registers 7

    .line 1160
    if-nez p1, :cond_3

    .line 1161
    return-void

    .line 1163
    :cond_3
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1165
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object p1

    .line 1167
    if-eqz p1, :cond_27

    .line 1168
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 1174
    aget-object v2, p1, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1168
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1177
    :cond_27
    return-void
.end method

.method public whitelist sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1337
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1338
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1339
    const v0, 0x10004

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1341
    :cond_10
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1343
    return-void
.end method

.method public whitelist setAutomaticPerformanceSnapshots()V
    .registers 2

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 317
    new-instance v0, Landroid/os/PerformanceCollector;

    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    .line 318
    return-void
.end method

.method public whitelist setInTouchMode(Z)V
    .registers 3

    .line 437
    :try_start_0
    const-string/jumbo v0, "window"

    .line 438
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 437
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 438
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setInTouchModeOnAllDisplays(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 441
    goto :goto_10

    .line 439
    :catch_f
    move-exception p1

    .line 442
    :goto_10
    return-void
.end method

.method public whitelist start()V
    .registers 4

    .line 221
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    if-nez v0, :cond_2c

    .line 224
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

    .line 225
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 226
    return-void

    .line 222
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Instrumentation already started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .registers 3

    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method public whitelist startActivitySync(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Activity;
    .registers 8

    .line 598
    sget-boolean v0, Landroid/app/Instrumentation;->DEBUG_START_ACTIVITY:Z

    if-eqz v0, :cond_2c

    .line 599
    const-string v0, "Instrumentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " options="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    :cond_2c
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 604
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_32
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 608
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 609
    invoke-direct {p0, v1}, Landroid/app/Instrumentation;->resolveActivityInfoForCtsInSandbox(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    goto :goto_4f

    .line 610
    :cond_42
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 611
    :goto_4f
    if-eqz p1, :cond_d8

    .line 614
    iget-object v2, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v2

    .line 615
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 623
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 625
    new-instance p1, Landroid/app/Instrumentation$ActivityWaiter;

    invoke-direct {p1, v1}, Landroid/app/Instrumentation$ActivityWaiter;-><init>(Landroid/content/Intent;)V

    .line 627
    iget-object v2, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-nez v2, :cond_7d

    .line 628
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    .line 630
    :cond_7d
    iget-object v2, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_89
    .catchall {:try_start_32 .. :try_end_89} :catchall_f1

    .line 636
    :cond_89
    :try_start_89
    iget-object p2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_8e
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_8e} :catch_8f
    .catchall {:try_start_89 .. :try_end_8e} :catchall_f1

    .line 638
    goto :goto_90

    .line 637
    :catch_8f
    move-exception p2

    .line 639
    :goto_90
    :try_start_90
    iget-object p2, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_89

    .line 640
    iget-object p1, p1, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    .line 641
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_90 .. :try_end_9b} :catchall_f1

    .line 647
    :try_start_9b
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p2

    .line 648
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/view/IWindowManager;->syncInputTransactions(Z)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a3} :catch_a4

    .line 651
    goto :goto_a8

    .line 649
    :catch_a4
    move-exception p2

    .line 650
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 652
    :goto_a8
    return-object p1

    .line 618
    :cond_a9
    :try_start_a9
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent in process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resolved to different process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 612
    :cond_d8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to resolve activity for: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 641
    :catchall_f1
    move-exception p1

    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_a9 .. :try_end_f3} :catchall_f1

    throw p1
.end method

.method public whitelist startAllocCounting()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1828
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1829
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1830
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1832
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    .line 1835
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 1836
    return-void
.end method

.method public whitelist startPerformanceSnapshot()V
    .registers 3

    .line 321
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_c

    .line 322
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PerformanceCollector;->beginSnapshot(Ljava/lang/String;)V

    .line 324
    :cond_c
    return-void
.end method

.method public whitelist startProfiling()V
    .registers 3

    .line 409
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 410
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProfileFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 412
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-static {v0, v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 414
    :cond_23
    return-void
.end method

.method public whitelist stopAllocCounting()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1845
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1846
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1847
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1848
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 1849
    return-void
.end method

.method public whitelist stopProfiling()V
    .registers 2

    .line 420
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 421
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 423
    :cond_b
    return-void
.end method

.method public whitelist waitForIdle(Ljava/lang/Runnable;)V
    .registers 4

    .line 462
    iget-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v1, Landroid/app/Instrumentation$Idler;

    invoke-direct {v1, p1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 463
    iget-object p1, p0, Landroid/app/Instrumentation;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Landroid/app/Instrumentation$EmptyRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation-IA;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 464
    return-void
.end method

.method public whitelist waitForIdleSync()V
    .registers 5

    .line 473
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 474
    new-instance v0, Landroid/app/Instrumentation$Idler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    .line 475
    iget-object v2, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-virtual {v2, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 476
    iget-object v2, p0, Landroid/app/Instrumentation;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Landroid/app/Instrumentation$EmptyRunnable;

    invoke-direct {v3, v1}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation-IA;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 477
    invoke-virtual {v0}, Landroid/app/Instrumentation$Idler;->waitForIdle()V

    .line 478
    invoke-static {}, Landroid/app/Instrumentation;->checkPendingExceptionOnRavenwood()V

    .line 479
    return-void
.end method

.method public whitelist waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .registers 5

    .line 1011
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1012
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1013
    :try_start_7
    iget-object v2, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1014
    monitor-exit v1

    .line 1015
    return-object v0

    .line 1014
    :catchall_e
    move-exception p1

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public whitelist waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .registers 5

    .line 1030
    invoke-virtual {p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivityWithTimeout(J)Landroid/app/Activity;

    move-result-object p2

    .line 1031
    iget-object p3, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter p3

    .line 1032
    :try_start_7
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1033
    monitor-exit p3

    .line 1034
    return-object p2

    .line 1033
    :catchall_e
    move-exception p1

    monitor-exit p3
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method
