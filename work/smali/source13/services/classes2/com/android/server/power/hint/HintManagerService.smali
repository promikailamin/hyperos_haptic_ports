.class public final Lcom/android/server/power/hint/HintManagerService;
.super Lcom/android/server/SystemService;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/hint/HintManagerService$AppHintSession;,
        Lcom/android/server/power/hint/HintManagerService$BinderService;,
        Lcom/android/server/power/hint/HintManagerService$UidObserver;,
        Lcom/android/server/power/hint/HintManagerService$NativeWrapper;,
        Lcom/android/server/power/hint/HintManagerService$Injector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HintManagerService"


# instance fields
.field private final mActiveSessions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/power/hint/HintManagerService$AppHintSession;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field final mHintSessionPreferredRate:J

.field private final mLock:Ljava/lang/Object;

.field private final mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

.field final mService:Landroid/os/IHintManager$Stub;

.field final mUidObserver:Lcom/android/server/power/hint/HintManagerService$UidObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[I)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService;->checkTidValid(II[I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misHalSupported(Lcom/android/server/power/hint/HintManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->isHalSupported()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/hint/HintManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/hint/HintManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/power/hint/HintManagerService$Injector;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 82
    invoke-virtual {p2}, Lcom/android/server/power/hint/HintManagerService$Injector;->createNativeWrapper()Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 83
    invoke-virtual {v0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halInit()V

    .line 84
    invoke-virtual {v0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halGetHintSessionPreferredRate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    .line 85
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$UidObserver;

    invoke-direct {v0, p0}, Lcom/android/server/power/hint/HintManagerService$UidObserver;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$UidObserver;

    .line 86
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 87
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 86
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 88
    return-void
.end method

.method private checkTidValid(II[I)Z
    .registers 15
    .param p1, "uid"    # I
    .param p2, "tgid"    # I
    .param p3, "tids"    # [I

    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, "eligiblePids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_b

    .line 276
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManagerInternal;->getIsolatedProcesses(I)Ljava/util/List;

    move-result-object v0

    .line 278
    :cond_b
    if-nez v0, :cond_13

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 281
    :cond_13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    const/4 v4, 0x1

    if-ge v3, v1, :cond_60

    aget v5, p3, v3

    .line 284
    .local v5, "threadId":I
    const-string v6, "Uid:"

    const-string v7, "Tgid:"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, "procStatusKeys":[Ljava/lang/String;
    array-length v7, v6

    new-array v7, v7, [J

    .line 289
    .local v7, "output":[J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/status"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6, v7}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 290
    aget-wide v8, v7, v2

    long-to-int v8, v8

    .line 291
    .local v8, "uidOfThreadId":I
    aget-wide v9, v7, v4

    long-to-int v4, v9

    .line 294
    .local v4, "pidOfThreadId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    if-ne v8, p1, :cond_5c

    .line 295
    goto :goto_5d

    .line 297
    :cond_5c
    return v2

    .line 283
    .end local v4    # "pidOfThreadId":I
    .end local v5    # "threadId":I
    .end local v6    # "procStatusKeys":[Ljava/lang/String;
    .end local v7    # "output":[J
    .end local v8    # "uidOfThreadId":I
    :cond_5d
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 299
    :cond_60
    return v4
.end method

.method private isHalSupported()Z
    .registers 5

    .line 98
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private systemReady()V
    .registers 6

    .line 114
    const-string v0, "HintManagerService"

    const-string v1, "Initializing HintManager service..."

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$UidObserver;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    .line 121
    goto :goto_15

    .line 119
    :catch_14
    move-exception v0

    .line 123
    :goto_15
    return-void
.end method


# virtual methods
.method getBinderServiceInstance()Landroid/os/IHintManager$Stub;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 108
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_7

    .line 109
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->systemReady()V

    .line 111
    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    const-string/jumbo v1, "performance_hint"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/hint/HintManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 104
    return-void
.end method
