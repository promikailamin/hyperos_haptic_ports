.class public Landroid/app/ActivityThreadImpl;
.super Ljava/lang/Object;
.source "ActivityThreadImpl.java"

# interfaces
.implements Landroid/app/ActivityThreadStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThreadImpl$AppScoutThread;
    }
.end annotation


# static fields
.field private static blacklist ACTIVITY_LEAK_THRESHOLD:I = 0x0

.field private static final blacklist DELIVER_RESULT_REASON:Ljava/lang/String; = "deliverResultsReason"

.field public static final blacklist ENABLED_SCOUT:Z

.field private static blacklist ENABLE_ACTIVITY_LEAK_MONITOR:Z = false

.field private static final blacklist ENABLE_ANR_CLUE:Z

.field private static final blacklist EXIT_FREEFORM:Ljava/lang/String; = "ExitFreeform"

.field private static final blacklist SYSPROP_ACTIVITY_LEAK_THRESHOLD:Ljava/lang/String; = "persist.sys.debug.scout_activity_leak_threshold"

.field private static final blacklist ScoutPersistentPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ActivityThread"

.field private static blacklist isScoutPersistentPackage:Z

.field public static blacklist mAppScoutStateMachine:Landroid/app/AppScoutStateMachine;

.field public static blacklist mAppScoutThread:Landroid/app/ActivityThreadImpl$AppScoutThread;

.field private static blacklist sDisablePackage:Z


# instance fields
.field private blacklist mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThreadStub$BoundsCompatInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

.field public blacklist registerMqsResult:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 70
    nop

    .line 71
    const-string v0, "persist.sys.miui_scout_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityThreadImpl;->ENABLED_SCOUT:Z

    .line 72
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ActivityThreadImpl;->mAppScoutStateMachine:Landroid/app/AppScoutStateMachine;

    .line 73
    new-instance v0, Landroid/app/ActivityThreadImpl$AppScoutThread;

    invoke-direct {v0}, Landroid/app/ActivityThreadImpl$AppScoutThread;-><init>()V

    sput-object v0, Landroid/app/ActivityThreadImpl;->mAppScoutThread:Landroid/app/ActivityThreadImpl$AppScoutThread;

    .line 74
    nop

    .line 75
    const-string v0, "persist.sys.stability.anrclue.enable"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityThreadImpl;->ENABLE_ANR_CLUE:Z

    .line 78
    const-string v0, "persist.sys.debug.scout_activity_leak_threshold"

    const/16 v3, 0xc8

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/app/ActivityThreadImpl;->ACTIVITY_LEAK_THRESHOLD:I

    .line 80
    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isAppLibraryTest()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isUnReleased()Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_36

    :cond_35
    move v2, v1

    :cond_36
    :goto_36
    sput-boolean v2, Landroid/app/ActivityThreadImpl;->ENABLE_ACTIVITY_LEAK_MONITOR:Z

    .line 83
    sput-boolean v1, Landroid/app/ActivityThreadImpl;->sDisablePackage:Z

    .line 84
    sput-boolean v1, Landroid/app/ActivityThreadImpl;->isScoutPersistentPackage:Z

    .line 85
    const-string v0, "com.android.systemui"

    const-string v1, "com.miui.home"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThreadImpl;->ScoutPersistentPackageList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 67
    iput-object v0, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThreadImpl;->registerMqsResult:Z

    return-void
.end method

.method private blacklist dumpProcessAdjustmentInfo(Ljava/io/PrintWriter;Landroid/app/ActivityThread;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "thread"    # Landroid/app/ActivityThread;

    .line 402
    const-string v0, "  ProcessConfig(#0)="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 404
    iget-object v0, p2, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_30

    .line 405
    iget-object v0, p2, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 406
    .local v0, "resConfig":Landroid/content/res/Configuration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Application ResourcesConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    .end local v0    # "resConfig":Landroid/content/res/Configuration;
    :cond_30
    iget-object v0, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v0, :cond_13e

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  TopActivityClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  TopActivityClient OverrideConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 413
    .local v0, "topActivity":Landroid/app/Activity;
    if-eqz v0, :cond_a0

    .line 414
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 415
    .local v1, "resConfig":Landroid/content/res/Configuration;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  TopActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  TopActivity ResourcesConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    .end local v1    # "resConfig":Landroid/content/res/Configuration;
    :cond_a0
    iget-object v1, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_13e

    .line 420
    iget-object v2, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;

    .line 421
    .local v1, "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    const-string v2, ", scale="

    const-string v3, "x"

    const-string v4, ", size="

    if-eqz v1, :cond_f4

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  BoundsCompatInfo: state=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->bounds:Landroid/graphics/Rect;

    .line 423
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->scale:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 422
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    :cond_f4
    iget-object v5, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p2, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThreadStub$BoundsCompatInfo;

    .line 428
    .local v5, "boundsCompatInfoApplication":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    if-eqz v5, :cond_13e

    .line 429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  BoundsCompatInfo Application: state=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->state:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->bounds:Landroid/graphics/Rect;

    .line 430
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->bounds:Landroid/graphics/Rect;

    .line 431
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v5, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->scale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    .end local v0    # "topActivity":Landroid/app/Activity;
    .end local v1    # "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    .end local v5    # "boundsCompatInfoApplication":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    :cond_13e
    return-void
.end method

.method private blacklist formatDelayedMessages(Ljava/util/List;I)Ljava/lang/String;
    .registers 11
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 200
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/os/Message;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 202
    const-string v1, "Delayed messages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 206
    .local v1, "now":J
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 207
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2b
    if-ge v4, v3, :cond_92

    .line 208
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 209
    .local v5, "message":Landroid/os/Message;
    const-string v6, "{ when="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v5}, Landroid/os/Message;->getWhen()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 211
    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_80

    .line 212
    const-string v6, " target="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v5}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v6

    if-eqz v6, :cond_75

    .line 215
    const-string v6, " callback="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v5}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    .line 218
    :cond_75
    const-string v6, " what="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget v6, v5, Landroid/os/Message;->what:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_8a

    .line 222
    :cond_80
    const-string v6, " barrier="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget v6, v5, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    :goto_8a
    const-string v6, " }\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .end local v5    # "message":Landroid/os/Message;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 227
    .end local v4    # "i":I
    :cond_92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private blacklist formatHistoryLongMessages(Ljava/util/List;I)Ljava/lang/String;
    .registers 7
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 189
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 191
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_26

    .line 192
    const-string v3, "{ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v3, " }\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 196
    .end local v2    # "i":I
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;
    .registers 8
    .param p1, "enabled"    # Ljava/lang/String;
    .param p2, "disabled"    # Ljava/lang/String;
    .param p3, "config"    # Z
    .param p4, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 522
    const-string v0, " "

    if-eqz p3, :cond_2f

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v0, p4

    goto :goto_26

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_59

    .line 525
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    move-object v0, p4

    goto :goto_51

    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 527
    :goto_59
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist getBoundsCompatBounds(Landroid/app/ActivityThread;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "thread"    # Landroid/app/ActivityThread;

    .line 348
    iget-object v0, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5c

    .line 352
    :cond_b
    const/4 v0, 0x0

    .line 353
    .local v0, "tmpBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v1, :cond_33

    .line 354
    iget-object v2, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;

    .line 355
    .local v1, "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    if-eqz v1, :cond_33

    .line 356
    iget v2, v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->state:I

    .line 357
    .local v2, "state":I
    iget-object v3, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {v3}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_33

    .line 358
    invoke-static {}, Landroid/app/servertransaction/BoundsCompatStub;->get()Landroid/app/servertransaction/BoundsCompatStub;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/servertransaction/BoundsCompatStub;->isFixedAspectRatioModeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 359
    iget-object v0, v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->bounds:Landroid/graphics/Rect;

    .line 364
    .end local v1    # "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    .end local v2    # "state":I
    :cond_33
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 365
    :cond_3b
    iget-object v1, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;

    .line 366
    .restart local v1    # "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    if-eqz v1, :cond_5b

    invoke-static {}, Landroid/app/servertransaction/BoundsCompatStub;->get()Landroid/app/servertransaction/BoundsCompatStub;

    move-result-object v2

    iget v3, v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->state:I

    invoke-virtual {v2, v3}, Landroid/app/servertransaction/BoundsCompatStub;->needsCompatBounds(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 367
    iget-object v2, p1, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 370
    .end local v1    # "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    :cond_5b
    return-object v0

    .line 349
    .end local v0    # "tmpBounds":Landroid/graphics/Rect;
    :cond_5c
    :goto_5c
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getDelayedMessages(J)Ljava/util/List;
    .registers 11
    .param p1, "when"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Message;>;"
    :try_start_5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    .line 235
    .local v1, "mainQueue":Landroid/os/MessageQueue;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mMessages"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 236
    .local v2, "mMessages":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 237
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 238
    .local v4, "message":Landroid/os/Message;
    if-eqz v4, :cond_45

    .line 239
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "next"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 240
    .local v5, "next":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 241
    :goto_30
    if-eqz v4, :cond_45

    invoke-virtual {v4}, Landroid/os/Message;->getWhen()J

    move-result-wide v6

    cmp-long v3, v6, p1

    if-gez v3, :cond_45

    .line 242
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_43} :catch_46

    move-object v4, v3

    goto :goto_30

    .line 247
    .end local v1    # "mainQueue":Landroid/os/MessageQueue;
    .end local v2    # "mMessages":Ljava/lang/reflect/Field;
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "next":Ljava/lang/reflect/Field;
    :cond_45
    goto :goto_47

    .line 246
    :catch_46
    move-exception v1

    .line 248
    :goto_47
    return-object v0
.end method

.method public static blacklist isDisablePackage()Z
    .registers 1

    .line 474
    sget-boolean v0, Landroid/app/ActivityThreadImpl;->sDisablePackage:Z

    return v0
.end method

.method private blacklist reportAnrIssue(JI)V
    .registers 10
    .param p1, "anrTime"    # J
    .param p3, "duration"    # I

    .line 172
    sget-boolean v0, Landroid/app/ActivityThreadImpl;->ENABLE_ANR_CLUE:Z

    if-nez v0, :cond_5

    return-void

    .line 173
    :cond_5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v0

    .line 174
    .local v0, "monitor":Landroid/os/perfdebug/MessageMonitor;
    if-eqz v0, :cond_5b

    .line 175
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string v3, "pid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/perfdebug/MessageMonitor;->getLongestMessageInPeriod(JI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "longestMessage"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/perfdebug/MessageMonitor;->getHistoryLongMessagesInfoInPeriod(JI)Ljava/util/List;

    move-result-object v2

    .line 180
    .local v2, "longMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Landroid/app/ActivityThreadImpl;->formatHistoryLongMessages(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "historyMessages"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Landroid/os/perfdebug/MessageMonitor;->getRunningMessageInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "runningMessage"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThreadImpl;->getDelayedMessages(J)Ljava/util/List;

    move-result-object v3

    .line 183
    .local v3, "delayedMessages":Ljava/util/List;, "Ljava/util/List<Landroid/os/Message;>;"
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/app/ActivityThreadImpl;->formatDelayedMessages(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pendingMessages"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v4

    invoke-virtual {v4, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportAnrIssue(Landroid/os/Bundle;)V

    .line 186
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "longMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "delayedMessages":Ljava/util/List;, "Ljava/util/List<Landroid/os/Message;>;"
    :cond_5b
    return-void
.end method


# virtual methods
.method public blacklist applyBoundsCompatIfNeeded(Landroid/view/DisplayInfo;Landroid/app/ActivityThread;)V
    .registers 8
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "thread"    # Landroid/app/ActivityThread;

    .line 264
    iget-object v0, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_65

    .line 267
    :cond_b
    const/4 v0, 0x0

    .line 268
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v1, :cond_33

    .line 269
    iget-object v2, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;

    .line 270
    .local v1, "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    if-eqz v1, :cond_33

    .line 271
    iget v2, v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->state:I

    .line 272
    .local v2, "state":I
    iget-object v3, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {v3}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_33

    .line 273
    invoke-static {}, Landroid/app/servertransaction/BoundsCompatStub;->get()Landroid/app/servertransaction/BoundsCompatStub;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/servertransaction/BoundsCompatStub;->isFixedAspectRatioModeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 274
    iget-object v0, v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->bounds:Landroid/graphics/Rect;

    .line 279
    .end local v1    # "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    .end local v2    # "state":I
    :cond_33
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    .line 280
    invoke-static {}, Landroid/app/servertransaction/BoundsCompatStub;->get()Landroid/app/servertransaction/BoundsCompatStub;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/servertransaction/BoundsCompatStub;->adaptDisplayInfo(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V

    goto :goto_64

    .line 282
    :cond_43
    iget-object v1, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p2, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;

    .line 283
    .restart local v1    # "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    if-eqz v1, :cond_64

    invoke-static {}, Landroid/app/servertransaction/BoundsCompatStub;->get()Landroid/app/servertransaction/BoundsCompatStub;

    move-result-object v2

    iget v3, v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->state:I

    invoke-virtual {v2, v3}, Landroid/app/servertransaction/BoundsCompatStub;->needsCompatBounds(I)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 284
    invoke-static {}, Landroid/app/servertransaction/BoundsCompatStub;->get()Landroid/app/servertransaction/BoundsCompatStub;

    move-result-object v2

    iget-object v3, p2, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1, v3}, Landroid/app/servertransaction/BoundsCompatStub;->adaptDisplayInfo(Landroid/view/DisplayInfo;Landroid/content/res/Configuration;)V

    .line 287
    .end local v1    # "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    :cond_64
    :goto_64
    return-void

    .line 265
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_65
    :goto_65
    return-void
.end method

.method public blacklist checkActivityLeak(Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;)V"
        }
    .end annotation

    .line 483
    .local p1, "mActivities":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    sget-boolean v0, Landroid/app/ActivityThreadImpl;->ENABLE_ACTIVITY_LEAK_MONITOR:Z

    if-eqz v0, :cond_41

    .line 484
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 485
    .local v0, "count":I
    sget v1, Landroid/app/ActivityThreadImpl;->ACTIVITY_LEAK_THRESHOLD:I

    if-le v0, v1, :cond_41

    .line 486
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_22

    .line 487
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {v2}, Landroid/app/ActivityThread$ActivityClientRecord;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MIUIScout ActivityLeak"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 489
    .end local v1    # "i":I
    :cond_22
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityLeak: Already used "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " activity, occur leak"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    .end local v0    # "count":I
    :cond_41
    return-void
.end method

.method public declared-synchronized whitelist checkScoutPersistentPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 102
    :try_start_1
    sget-boolean v0, Landroid/app/ActivityThreadImpl;->ENABLED_SCOUT:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-nez v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 104
    :cond_8
    :try_start_8
    sget-object v0, Landroid/app/ActivityThreadImpl;->ScoutPersistentPackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 105
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/ActivityThreadImpl;->isScoutPersistentPackage:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14
    .catchall {:try_start_8 .. :try_end_13} :catchall_20

    .line 109
    .end local p0    # "this":Landroid/app/ActivityThreadImpl;
    :cond_13
    goto :goto_1c

    .line 107
    :catch_14
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    :try_start_15
    const-string v1, "ActivityThread"

    const-string v2, "checkScoutPersistentPackage exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    sget-boolean v0, Landroid/app/ActivityThreadImpl;->isScoutPersistentPackage:Z
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return v0

    .line 101
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist checkScoutStateOnInputEvent(I)V
    .registers 4
    .param p1, "InputLatency"    # I

    .line 91
    sget-boolean v0, Landroid/app/ActivityThreadImpl;->ENABLED_SCOUT:Z

    if-nez v0, :cond_5

    return-void

    .line 92
    :cond_5
    sget-object v0, Landroid/app/ActivityThreadImpl;->mAppScoutStateMachine:Landroid/app/AppScoutStateMachine;

    if-eqz v0, :cond_20

    iget-object v0, v0, Landroid/app/AppScoutStateMachine;->mScoutState:Landroid/app/AppScoutStateMachine$AppScoutState;

    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_HANG:Landroid/app/AppScoutStateMachine$AppScoutState;

    if-ne v0, v1, :cond_20

    .line 94
    const-string v0, "MIUIScout App"

    const-string v1, "AnrScout transistion to HANG_INPUT"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Landroid/app/ActivityThreadImpl;->mAppScoutStateMachine:Landroid/app/AppScoutStateMachine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/app/AppScoutStateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AppScoutStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 98
    :cond_20
    return-void
.end method

.method public blacklist deliverResultsIfNeededForFreeform(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Z)Z
    .registers 12
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "resumed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 577
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const-string v0, "ActivityThread"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 578
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_65

    .line 579
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResultInfo;

    .line 581
    .local v3, "ri":Landroid/app/ResultInfo;
    :try_start_f
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v4, :cond_4a

    .line 582
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 583
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "deliverResultsReason"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, "deliverResultsReason":Ljava/lang/String;
    sget-boolean v6, Landroid/app/ActivityThread;->DEBUG_RESULTS:Z

    if-eqz v6, :cond_39

    .line 585
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " deliverResultsReason= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_39
    const-string v6, "ExitFreeform"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 587
    const/4 v6, 0x0

    if-eqz p3, :cond_49

    .line 588
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v6, v5}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_49} :catch_4b

    .line 590
    :cond_49
    return v6

    .line 595
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "deliverResultsReason":Ljava/lang/String;
    :cond_4a
    goto :goto_62

    .line 593
    :catch_4b
    move-exception v4

    .line 594
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " fail in deliverResultsIfNeeded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .end local v3    # "ri":Landroid/app/ResultInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 597
    .end local v2    # "i":I
    :cond_65
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dumpLogText(Landroid/os/ParcelFileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 497
    const-string v0, ""

    :try_start_2
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    .line 498
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 499
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 500
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    const-string v5, "DEBUG_MESSAGES"

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/app/ActivityThreadImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    move-object v0, v2

    .line 501
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    const-string v5, "DEBUG_BROADCAST"

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/app/ActivityThreadImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    move-object v0, v2

    .line 502
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_RESULTS:Z

    const-string v5, "DEBUG_RESULTS"

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/app/ActivityThreadImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    move-object v0, v2

    .line 503
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_BACKUP:Z

    const-string v5, "DEBUG_BACKUP"

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/app/ActivityThreadImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    move-object v0, v2

    .line 504
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    const-string v5, "DEBUG_CONFIGURATION"

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/app/ActivityThreadImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    move-object v0, v2

    .line 505
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_SERVICE:Z

    const-string v5, "DEBUG_SERVICE"

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/app/ActivityThreadImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    move-object v0, v2

    .line 506
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z

    const-string v5, "DEBUG_MEMORY_TRIM"

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/app/ActivityThreadImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    move-object v0, v2

    .line 507
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    const-string v5, "DEBUG_PROVIDER"

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/app/ActivityThreadImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    move-object v0, v2

    .line 508
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_ORDER:Z

    const-string v5, "DEBUG_ORDER"

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/app/ActivityThreadImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    move-object v0, v2

    .line 509
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-boolean v4, Landroid/app/ActivityThread;->localLOGV:Z

    const-string v5, "localLOGV"

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/app/ActivityThreadImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    move-object v0, v2

    .line 510
    const-string v2, "Enabled app log groups:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 513
    const-string v2, "Disabled app log groups:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 516
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_e1
    .catchall {:try_start_2 .. :try_end_e1} :catchall_e6

    .line 518
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "pw":Ljava/io/PrintWriter;
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 519
    nop

    .line 520
    return-void

    .line 518
    :catchall_e6
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 519
    throw v0
.end method

.method public whitelist dumpPeriodHistoryMessage(JI)V
    .registers 10
    .param p1, "anrTime"    # J
    .param p3, "duration"    # I

    .line 153
    const-string v0, "MIUIScout ANR"

    :try_start_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    .line 155
    .local v1, "monitor":Landroid/os/perfdebug/MessageMonitor;
    if-eqz v1, :cond_37

    .line 156
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/perfdebug/MessageMonitor;->getHistoryMsgInfoStringInPeriod(JI)Ljava/util/List;

    move-result-object v2

    .line 157
    .local v2, "historymsg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get period history msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .end local v3    # "i":I
    :cond_36
    goto :goto_3c

    .line 162
    .end local v2    # "historymsg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_37
    const-string v2, "Can\'t dumpPeriodHistoryMessage because of null MessageMonitor"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_3c
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThreadImpl;->reportAnrIssue(JI)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3f} :catch_40

    .line 168
    .end local v1    # "monitor":Landroid/os/perfdebug/MessageMonitor;
    goto :goto_46

    .line 166
    :catch_40
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AnrScout failed to get period history msg"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method public blacklist enableDebugConfig(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAppDebugConfig, config=:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable=:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-eqz p1, :cond_34

    const-string v0, "VRI_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 534
    invoke-static {}, Landroid/view/ViewRootImplStub;->getInstance()Landroid/view/ViewRootImplStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImplStub;->enableDebugConfig(Ljava/lang/String;Z)V

    .line 535
    return-void

    .line 539
    :cond_34
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_cc

    :cond_3c
    goto/16 :goto_a3

    :sswitch_3e
    const-string v2, "DEBUG_ORDER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/16 v0, 0x8

    goto :goto_a3

    :sswitch_49
    const-string v2, "DEBUG_PROVIDER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v0, 0x7

    goto :goto_a3

    :sswitch_53
    const-string v2, "DEBUG_BACKUP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v0, 0x3

    goto :goto_a3

    :sswitch_5d
    const-string v2, "DEBUG_MEMORY_TRIM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v0, 0x6

    goto :goto_a3

    :sswitch_67
    const-string v2, "DEBUG_SERVICE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v0, 0x5

    goto :goto_a3

    :sswitch_71
    const-string v2, "DEBUG_CONFIGURATION"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v0, 0x4

    goto :goto_a3

    :sswitch_7b
    const-string v2, "DEBUG_RESULTS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v0, 0x2

    goto :goto_a3

    :sswitch_85
    const-string v2, "DEBUG_BROADCAST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v0, 0x1

    goto :goto_a3

    :sswitch_8f
    const-string v2, "localLOGV"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/16 v0, 0x9

    goto :goto_a3

    :sswitch_9a
    const-string v2, "DEBUG_MESSAGES"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v0, 0x0

    :goto_a3
    packed-switch v0, :pswitch_data_f6

    .line 571
    const-string v0, "Enable debug config fail, error config."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    .line 568
    :pswitch_ac
    sput-boolean p2, Landroid/app/ActivityThread;->localLOGV:Z

    .line 569
    goto :goto_ca

    .line 565
    :pswitch_af
    sput-boolean p2, Landroid/app/ActivityThread;->DEBUG_ORDER:Z

    .line 566
    goto :goto_ca

    .line 562
    :pswitch_b2
    sput-boolean p2, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    .line 563
    goto :goto_ca

    .line 559
    :pswitch_b5
    sput-boolean p2, Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z

    .line 560
    goto :goto_ca

    .line 556
    :pswitch_b8
    sput-boolean p2, Landroid/app/ActivityThread;->DEBUG_SERVICE:Z

    .line 557
    goto :goto_ca

    .line 553
    :pswitch_bb
    sput-boolean p2, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    .line 554
    goto :goto_ca

    .line 550
    :pswitch_be
    sput-boolean p2, Landroid/app/ActivityThread;->DEBUG_BACKUP:Z

    .line 551
    goto :goto_ca

    .line 547
    :pswitch_c1
    sput-boolean p2, Landroid/app/ActivityThread;->DEBUG_RESULTS:Z

    .line 548
    goto :goto_ca

    .line 544
    :pswitch_c4
    sput-boolean p2, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    .line 545
    goto :goto_ca

    .line 541
    :pswitch_c7
    sput-boolean p2, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    .line 542
    nop

    .line 574
    :goto_ca
    return-void

    nop

    :sswitch_data_cc
    .sparse-switch
        -0x732b3228 -> :sswitch_9a
        -0x47da1063 -> :sswitch_8f
        0x31bad95 -> :sswitch_85
        0x4c929ca -> :sswitch_7b
        0x37e7a7ca -> :sswitch_71
        0x39a1b489 -> :sswitch_67
        0x3a903494 -> :sswitch_5d
        0x47b2f94e -> :sswitch_53
        0x6d83d27d -> :sswitch_49
        0x6e69de22 -> :sswitch_3e
    .end sparse-switch

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
    .end packed-switch
.end method

.method public blacklist getFixedOrizationScale(Landroid/content/res/Configuration;F)F
    .registers 9
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "defScale"    # F

    .line 337
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 338
    .local v0, "bounds":Landroid/graphics/Rect;
    move v1, p2

    .line 339
    .local v1, "scale":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 340
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 341
    .local v2, "longSide":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 342
    .local v3, "shortSide":I
    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    int-to-float v5, v2

    div-float v1, v4, v5

    .line 344
    .end local v2    # "longSide":I
    .end local v3    # "shortSide":I
    :cond_2c
    return v1
.end method

.method public blacklist getMiuiSizeCompatScale(Landroid/app/ActivityThread;F)F
    .registers 8
    .param p1, "thread"    # Landroid/app/ActivityThread;
    .param p2, "defScale"    # F

    .line 311
    iget-object v0, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_52

    .line 315
    :cond_b
    move v0, p2

    .line 316
    .local v0, "scale":F
    iget-object v1, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v1, :cond_33

    .line 317
    iget-object v2, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;

    .line 318
    .local v1, "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    if-eqz v1, :cond_33

    .line 319
    iget v2, v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->state:I

    .line 320
    .local v2, "state":I
    iget-object v3, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {v3}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_33

    .line 321
    invoke-static {}, Landroid/app/servertransaction/BoundsCompatStub;->get()Landroid/app/servertransaction/BoundsCompatStub;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/servertransaction/BoundsCompatStub;->isFixedAspectRatioModeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 322
    iget v0, v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->scale:F

    .line 327
    .end local v1    # "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    .end local v2    # "state":I
    :cond_33
    cmpl-float v1, v0, p2

    if-nez v1, :cond_51

    .line 328
    iget-object v1, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;

    .line 329
    .restart local v1    # "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    if-eqz v1, :cond_51

    invoke-static {}, Landroid/app/servertransaction/BoundsCompatStub;->get()Landroid/app/servertransaction/BoundsCompatStub;

    move-result-object v2

    iget v3, v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->state:I

    invoke-virtual {v2, v3}, Landroid/app/servertransaction/BoundsCompatStub;->needsCompatBounds(I)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 330
    iget v0, v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->scale:F

    .line 333
    .end local v1    # "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    :cond_51
    return v0

    .line 312
    .end local v0    # "scale":F
    :cond_52
    :goto_52
    return p2
.end method

.method public blacklist handleBoundsCompatInfoChanged(Landroid/os/IBinder;ILandroid/graphics/Rect;FLandroid/app/ActivityThread;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "state"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "scale"    # F
    .param p5, "thread"    # Landroid/app/ActivityThread;

    .line 375
    if-nez p1, :cond_4

    .line 376
    iget-object p1, p5, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 378
    :cond_4
    iget-object v0, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_f

    .line 379
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 382
    :cond_f
    invoke-static {}, Landroid/app/servertransaction/BoundsCompatStub;->get()Landroid/app/servertransaction/BoundsCompatStub;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/servertransaction/BoundsCompatStub;->isFixedAspectRatioModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 383
    iget-object v0, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThreadStub$BoundsCompatInfo;

    .line 384
    .local v0, "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    if-nez v0, :cond_2f

    .line 385
    new-instance v1, Landroid/app/ActivityThreadStub$BoundsCompatInfo;

    invoke-direct {v1}, Landroid/app/ActivityThreadStub$BoundsCompatInfo;-><init>()V

    move-object v0, v1

    .line 387
    :cond_2f
    iput p2, v0, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->state:I

    .line 388
    iput-object p3, v0, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->bounds:Landroid/graphics/Rect;

    .line 389
    iput p4, v0, Landroid/app/ActivityThreadStub$BoundsCompatInfo;->scale:F

    .line 390
    iget-object v1, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .end local v0    # "boundsCompatInfo":Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    goto :goto_51

    .line 392
    :cond_3b
    iget-object v0, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p5, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 394
    iget-object v0, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p5, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_51
    :goto_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBoundsCompatInfoChanged: token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method public blacklist handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;Landroid/app/ActivityThread;)V
    .registers 6
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;
    .param p2, "thread"    # Landroid/app/ActivityThread;

    .line 445
    iget-object v0, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 446
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 447
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThreadImpl;->dumpProcessAdjustmentInfo(Ljava/io/PrintWriter;Landroid/app/ActivityThread;)V

    .line 448
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 449
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 451
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :cond_23
    return-void
.end method

.method public blacklist ignoreChangeForMiuiCompat(Landroid/app/ActivityThread$ActivityClientRecord;)I
    .registers 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "result":I
    iget-object v1, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_11

    if-eqz p1, :cond_11

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 457
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 459
    or-int/lit16 v0, v0, 0x100

    .line 461
    :cond_11
    return v0
.end method

.method public blacklist inMiuiSizeCompatMode(Landroid/app/ActivityThread;)Z
    .registers 4
    .param p1, "thread"    # Landroid/app/ActivityThread;

    .line 297
    invoke-direct {p0, p1}, Landroid/app/ActivityThreadImpl;->getBoundsCompatBounds(Landroid/app/ActivityThread;)Landroid/graphics/Rect;

    move-result-object v0

    .line 299
    .local v0, "tmpBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public blacklist inMiuiSizeCompatScaleMode(Landroid/app/ActivityThread;)Z
    .registers 6
    .param p1, "thread"    # Landroid/app/ActivityThread;

    .line 303
    const/high16 v0, 0x3f800000    # 1.0f

    .line 304
    .local v0, "defScale":F
    invoke-virtual {p0, p1}, Landroid/app/ActivityThreadImpl;->inMiuiSizeCompatMode(Landroid/app/ActivityThread;)Z

    move-result v1

    .line 305
    .local v1, "inMiuiSizeCompatMode":Z
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v2}, Landroid/app/ActivityThreadImpl;->getMiuiSizeCompatScale(Landroid/app/ActivityThread;F)F

    move-result v3

    .line 307
    .local v3, "scale":F
    if-eqz v1, :cond_14

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method

.method public blacklist initMiuiFreeDrag(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 479
    invoke-static {p1}, Lmiui/freedrag/MiuiFreeDragHelper;->initialize(Landroid/content/Context;)V

    .line 480
    return-void
.end method

.method public blacklist judgeSystemApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 467
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    sput-boolean v0, Landroid/app/ActivityThreadImpl;->sDisablePackage:Z

    .line 468
    if-eqz v0, :cond_26

    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "cts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 469
    sput-boolean v1, Landroid/app/ActivityThreadImpl;->sDisablePackage:Z

    .line 471
    :cond_26
    return-void
.end method

.method public blacklist performDestroyCompatActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 254
    iget-object v0, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    if-ne v0, p1, :cond_7

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 257
    :cond_7
    iget-object v0, p0, Landroid/app/ActivityThreadImpl;->mBoundsCompatInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_10

    .line 258
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_10
    return-void
.end method

.method public whitelist registerApplicationScoutThread(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 136
    sget-boolean v0, Landroid/app/ActivityThreadImpl;->ENABLED_SCOUT:Z

    if-nez v0, :cond_5

    return-void

    .line 137
    :cond_5
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    sget-object v1, Landroid/app/ActivityThreadImpl;->mAppScoutThread:Landroid/app/ActivityThreadImpl$AppScoutThread;

    invoke-virtual {v0, v1, p1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->registerApplicationScoutThread(Landroid/app/IAppScoutThread;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityThreadImpl;->registerMqsResult:Z

    .line 139
    if-nez v0, :cond_2d

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerApplicationScoutThread result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ActivityThreadImpl;->registerMqsResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_2d
    return-void
.end method

.method public blacklist setTopActivityClient(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 2
    .param p1, "topActivityClient"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 440
    iput-object p1, p0, Landroid/app/ActivityThreadImpl;->mTopActivityClient:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 441
    return-void
.end method

.method public declared-synchronized whitelist updateAppScoutStateMachineState(I)V
    .registers 4
    .param p1, "processState"    # I

    monitor-enter p0

    .line 115
    :try_start_1
    sget-boolean v0, Landroid/app/ActivityThreadImpl;->ENABLED_SCOUT:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_32

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 116
    :cond_7
    :try_start_7
    sget-boolean v0, Landroid/app/ActivityThreadImpl;->isScoutPersistentPackage:Z

    if-eqz v0, :cond_16

    .line 117
    sget-object v0, Landroid/app/ActivityThreadImpl;->mAppScoutStateMachine:Landroid/app/AppScoutStateMachine;

    if-nez v0, :cond_30

    .line 119
    invoke-static {}, Landroid/app/AppScoutStateMachine;->CreateAppScoutStateMachine()Landroid/app/AppScoutStateMachine;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThreadImpl;->mAppScoutStateMachine:Landroid/app/AppScoutStateMachine;

    goto :goto_30

    .line 122
    .end local p0    # "this":Landroid/app/ActivityThreadImpl;
    :cond_16
    const/4 v0, 0x2

    if-ne p1, v0, :cond_24

    sget-object v1, Landroid/app/ActivityThreadImpl;->mAppScoutStateMachine:Landroid/app/AppScoutStateMachine;

    if-nez v1, :cond_24

    .line 125
    invoke-static {}, Landroid/app/AppScoutStateMachine;->CreateAppScoutStateMachine()Landroid/app/AppScoutStateMachine;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThreadImpl;->mAppScoutStateMachine:Landroid/app/AppScoutStateMachine;

    goto :goto_30

    .line 126
    :cond_24
    if-eq p1, v0, :cond_30

    sget-object v0, Landroid/app/ActivityThreadImpl;->mAppScoutStateMachine:Landroid/app/AppScoutStateMachine;

    if-eqz v0, :cond_30

    .line 128
    invoke-virtual {v0}, Landroid/app/AppScoutStateMachine;->quit()V

    .line 129
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ActivityThreadImpl;->mAppScoutStateMachine:Landroid/app/AppScoutStateMachine;
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_32

    .line 132
    :cond_30
    :goto_30
    monitor-exit p0

    return-void

    .line 114
    .end local p1    # "processState":I
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist updateBoundsCompatBounds(Landroid/graphics/Rect;Landroid/app/ActivityThread;)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "thread"    # Landroid/app/ActivityThread;

    .line 290
    invoke-direct {p0, p2}, Landroid/app/ActivityThreadImpl;->getBoundsCompatBounds(Landroid/app/ActivityThread;)Landroid/graphics/Rect;

    move-result-object v0

    .line 292
    .local v0, "tmpBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 293
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 294
    :cond_f
    return-void
.end method
