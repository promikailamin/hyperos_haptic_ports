.class public Landroid/flags/FeatureFlags;
.super Ljava/lang/Object;
.source "FeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/flags/FeatureFlags$ChangeListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlags"

.field private static blacklist sInstance:Landroid/flags/FeatureFlags;

.field private static final blacklist sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mBooleanOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mDirtyFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/flags/Flag<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mIFeatureFlags:Landroid/flags/IFeatureFlags;

.field private final blacklist mIFeatureFlagsCallback:Landroid/flags/IFeatureFlagsCallback;

.field private final blacklist mKnownFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/flags/Flag<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/flags/FeatureFlags$ChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmKnownFlags(Landroid/flags/FeatureFlags;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/flags/FeatureFlags;->mKnownFlags:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddBooleanOverride(Landroid/flags/FeatureFlags;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/flags/FeatureFlags;->addBooleanOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smflagEqualsSyncableFlag(Landroid/flags/Flag;Landroid/flags/SyncableFlag;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/flags/FeatureFlags;->flagEqualsSyncableFlag(Landroid/flags/Flag;Landroid/flags/SyncableFlag;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/flags/FeatureFlags;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/flags/FeatureFlags;-><init>(Landroid/flags/IFeatureFlags;)V

    .line 103
    return-void
.end method

.method public constructor blacklist <init>(Landroid/flags/IFeatureFlags;)V
    .registers 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mKnownFlags:Ljava/util/Set;

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mBooleanOverrides:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mListeners:Ljava/util/Set;

    .line 80
    new-instance v0, Landroid/flags/FeatureFlags$1;

    invoke-direct {v0, p0}, Landroid/flags/FeatureFlags$1;-><init>(Landroid/flags/FeatureFlags;)V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlagsCallback:Landroid/flags/IFeatureFlagsCallback;

    .line 107
    iput-object p1, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    .line 109
    iget-object p1, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    if-eqz p1, :cond_3c

    .line 111
    :try_start_2c
    iget-object p1, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    iget-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlagsCallback:Landroid/flags/IFeatureFlagsCallback;

    invoke-interface {p1, v0}, Landroid/flags/IFeatureFlags;->registerCallback(Landroid/flags/IFeatureFlagsCallback;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34

    .line 115
    goto :goto_3c

    .line 112
    :catch_34
    move-exception p1

    .line 114
    const-string v0, "FeatureFlags"

    const-string v1, "Could not register callbacks!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    :cond_3c
    :goto_3c
    return-void
.end method

.method private blacklist addBooleanOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 312
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mBooleanOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 313
    if-nez v0, :cond_14

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 315
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mBooleanOverrides:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_14
    invoke-static {p3}, Landroid/flags/FeatureFlags;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-void
.end method

.method private blacklist addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/flags/Flag<",
            "*>;>(TT;)TT;"
        }
    .end annotation

    .line 246
    const-class v0, Landroid/flags/FeatureFlags;

    monitor-enter v0

    .line 247
    :try_start_3
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mKnownFlags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    monitor-exit v0

    .line 250
    return-object p1

    .line 249
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method private blacklist bind()Landroid/flags/IFeatureFlags;
    .registers 3

    .line 329
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    if-nez v0, :cond_21

    .line 330
    nop

    .line 331
    const-string v0, "feature_flags"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/flags/IFeatureFlags$Stub;->asInterface(Landroid/os/IBinder;)Landroid/flags/IFeatureFlags;

    move-result-object v0

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    .line 333
    :try_start_11
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    iget-object v1, p0, Landroid/flags/FeatureFlags;->mIFeatureFlagsCallback:Landroid/flags/IFeatureFlagsCallback;

    invoke-interface {v0, v1}, Landroid/flags/IFeatureFlags;->registerCallback(Landroid/flags/IFeatureFlagsCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_19

    .line 336
    goto :goto_21

    .line 334
    :catch_19
    move-exception v0

    .line 335
    const-string v0, "FeatureFlags"

    const-string v1, "Failed to listen for flag changes!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_21
    :goto_21
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    return-object v0
.end method

.method public static blacklist booleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/BooleanFlag;
    .registers 5

    .line 128
    invoke-static {}, Landroid/flags/FeatureFlags;->getInstance()Landroid/flags/FeatureFlags;

    move-result-object v0

    new-instance v1, Landroid/flags/BooleanFlag;

    invoke-direct {v1, p0, p1, p2}, Landroid/flags/BooleanFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Landroid/flags/FeatureFlags;->addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;

    move-result-object p0

    check-cast p0, Landroid/flags/BooleanFlag;

    return-object p0
.end method

.method public static blacklist dynamicBooleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/DynamicBooleanFlag;
    .registers 5

    .line 162
    invoke-static {}, Landroid/flags/FeatureFlags;->getInstance()Landroid/flags/FeatureFlags;

    move-result-object v0

    new-instance v1, Landroid/flags/DynamicBooleanFlag;

    invoke-direct {v1, p0, p1, p2}, Landroid/flags/DynamicBooleanFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Landroid/flags/FeatureFlags;->addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;

    move-result-object p0

    check-cast p0, Landroid/flags/DynamicBooleanFlag;

    return-object p0
.end method

.method private static blacklist flagEqualsSyncableFlag(Landroid/flags/Flag;Landroid/flags/SyncableFlag;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/flags/Flag<",
            "*>;",
            "Landroid/flags/SyncableFlag;",
            ")Z"
        }
    .end annotation

    .line 362
    invoke-interface {p0}, Landroid/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Landroid/flags/Flag;->getNamespace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private blacklist flagToSyncableFlag(Landroid/flags/Flag;)Landroid/flags/SyncableFlag;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/flags/Flag<",
            "*>;)",
            "Landroid/flags/SyncableFlag;"
        }
    .end annotation

    .line 321
    new-instance v0, Landroid/flags/SyncableFlag;

    .line 322
    invoke-interface {p1}, Landroid/flags/Flag;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-interface {p1}, Landroid/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-interface {p1}, Landroid/flags/Flag;->getDefault()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    instance-of p1, p1, Landroid/flags/DynamicFlag;

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 321
    return-object v0
.end method

.method public static blacklist fusedOffFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOffFlag;
    .registers 4

    .line 139
    invoke-static {}, Landroid/flags/FeatureFlags;->getInstance()Landroid/flags/FeatureFlags;

    move-result-object v0

    new-instance v1, Landroid/flags/FusedOffFlag;

    invoke-direct {v1, p0, p1}, Landroid/flags/FusedOffFlag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/flags/FeatureFlags;->addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;

    move-result-object p0

    check-cast p0, Landroid/flags/FusedOffFlag;

    return-object p0
.end method

.method public static blacklist fusedOnFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOnFlag;
    .registers 4

    .line 150
    invoke-static {}, Landroid/flags/FeatureFlags;->getInstance()Landroid/flags/FeatureFlags;

    move-result-object v0

    new-instance v1, Landroid/flags/FusedOnFlag;

    invoke-direct {v1, p0, p1}, Landroid/flags/FusedOnFlag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/flags/FeatureFlags;->addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;

    move-result-object p0

    check-cast p0, Landroid/flags/FusedOnFlag;

    return-object p0
.end method

.method private blacklist getBooleanInternal(Landroid/flags/Flag;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/flags/Flag<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Landroid/flags/FeatureFlags;->sync()V

    .line 233
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mBooleanOverrides:Ljava/util/Map;

    invoke-interface {p1}, Landroid/flags/Flag;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 234
    nop

    .line 235
    if-eqz v0, :cond_1d

    .line 236
    invoke-interface {p1}, Landroid/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_1e

    .line 235
    :cond_1d
    const/4 v0, 0x0

    .line 238
    :goto_1e
    if-eqz v0, :cond_25

    .line 242
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 239
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Boolean flag being read but was not synced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance()Landroid/flags/FeatureFlags;
    .registers 2

    .line 63
    sget-object v0, Landroid/flags/FeatureFlags;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Landroid/flags/FeatureFlags;->sInstance:Landroid/flags/FeatureFlags;

    if-nez v1, :cond_e

    .line 65
    new-instance v1, Landroid/flags/FeatureFlags;

    invoke-direct {v1}, Landroid/flags/FeatureFlags;-><init>()V

    sput-object v1, Landroid/flags/FeatureFlags;->sInstance:Landroid/flags/FeatureFlags;

    .line 67
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 69
    sget-object v0, Landroid/flags/FeatureFlags;->sInstance:Landroid/flags/FeatureFlags;

    return-object v0

    .line 67
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method static blacklist parseBoolean(Ljava/lang/String;)Z
    .registers 4

    .line 344
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 345
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 346
    const-string/jumbo v0, "t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 347
    const-string/jumbo v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, 0x1

    .line 348
    :goto_27
    if-nez v0, :cond_68

    .line 349
    const-string v1, "false"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 350
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 351
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 352
    const-string/jumbo v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " as boolean but it doesn\'t look like one. Value expected to be one of true|false, 1|0, t|f, on|off."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FeatureFlags"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_68
    return v0
.end method

.method public static blacklist setInstance(Landroid/flags/FeatureFlags;)V
    .registers 2

    .line 75
    sget-object v0, Landroid/flags/FeatureFlags;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_3
    sput-object p0, Landroid/flags/FeatureFlags;->sInstance:Landroid/flags/FeatureFlags;

    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method


# virtual methods
.method public blacklist addChangeListener(Landroid/flags/FeatureFlags$ChangeListener;)V
    .registers 3

    .line 173
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public blacklist isCurrentlyEnabled(Landroid/flags/DynamicBooleanFlag;)Z
    .registers 2

    .line 228
    invoke-direct {p0, p1}, Landroid/flags/FeatureFlags;->getBooleanInternal(Landroid/flags/Flag;)Z

    move-result p1

    return p1
.end method

.method public blacklist isEnabled(Landroid/flags/BooleanFlag;)Z
    .registers 2

    .line 201
    invoke-direct {p0, p1}, Landroid/flags/FeatureFlags;->getBooleanInternal(Landroid/flags/Flag;)Z

    move-result p1

    return p1
.end method

.method public blacklist isEnabled(Landroid/flags/FusedOffFlag;)Z
    .registers 2

    .line 210
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist isEnabled(Landroid/flags/FusedOnFlag;)Z
    .registers 2

    .line 219
    const/4 p1, 0x1

    return p1
.end method

.method protected blacklist onFlagChange(Landroid/flags/DynamicFlag;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/flags/DynamicFlag<",
            "*>;)V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/flags/FeatureFlags$ChangeListener;

    .line 189
    invoke-interface {v1, p1}, Landroid/flags/FeatureFlags$ChangeListener;->onFlagChanged(Landroid/flags/DynamicFlag;)V

    .line 190
    goto :goto_6

    .line 191
    :cond_16
    return-void
.end method

.method public blacklist removeChangeListener(Landroid/flags/FeatureFlags$ChangeListener;)V
    .registers 3

    .line 184
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public blacklist sync()V
    .registers 3

    .line 260
    const-class v0, Landroid/flags/FeatureFlags;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 262
    monitor-exit v0

    return-void

    .line 264
    :cond_d
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    invoke-virtual {p0, v1}, Landroid/flags/FeatureFlags;->syncInternal(Ljava/util/Set;)V

    .line 265
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 266
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method protected blacklist syncInternal(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/flags/Flag<",
            "*>;>;)V"
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Landroid/flags/FeatureFlags;->bind()Landroid/flags/IFeatureFlags;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/flags/Flag;

    .line 278
    invoke-direct {p0, v3}, Landroid/flags/FeatureFlags;->flagToSyncableFlag(Landroid/flags/Flag;)Landroid/flags/SyncableFlag;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    goto :goto_d

    .line 281
    :cond_21
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v2

    .line 284
    :try_start_25
    invoke-interface {v0, v1}, Landroid/flags/IFeatureFlags;->syncFlags(Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_29} :catch_2a

    .line 287
    goto :goto_2e

    .line 285
    :catch_2a
    move-exception v0

    .line 286
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 289
    :goto_2e
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/flags/Flag;

    .line 290
    nop

    .line 291
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/flags/SyncableFlag;

    .line 292
    invoke-static {v0, v3}, Landroid/flags/FeatureFlags;->flagEqualsSyncableFlag(Landroid/flags/Flag;Landroid/flags/SyncableFlag;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 293
    instance-of v1, v0, Landroid/flags/BooleanFlag;

    if-nez v1, :cond_5d

    instance-of v1, v0, Landroid/flags/DynamicBooleanFlag;

    if-eqz v1, :cond_6c

    .line 294
    :cond_5d
    invoke-virtual {v3}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v4, v3}, Landroid/flags/FeatureFlags;->addBooleanOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_6c
    nop

    .line 297
    const/4 v1, 0x1

    goto :goto_71

    .line 299
    :cond_6f
    goto :goto_43

    .line 291
    :cond_70
    const/4 v1, 0x0

    .line 300
    :goto_71
    if-nez v1, :cond_95

    .line 301
    instance-of v1, v0, Landroid/flags/BooleanFlag;

    if-eqz v1, :cond_95

    .line 302
    nop

    .line 303
    invoke-interface {v0}, Landroid/flags/Flag;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-interface {v0}, Landroid/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v3

    .line 305
    check-cast v0, Landroid/flags/BooleanFlag;

    invoke-virtual {v0}, Landroid/flags/BooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_90

    const-string/jumbo v0, "true"

    goto :goto_92

    :cond_90
    const-string v0, "false"

    .line 302
    :goto_92
    invoke-direct {p0, v1, v3, v0}, Landroid/flags/FeatureFlags;->addBooleanOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_95
    goto :goto_32

    .line 309
    :cond_96
    return-void
.end method
