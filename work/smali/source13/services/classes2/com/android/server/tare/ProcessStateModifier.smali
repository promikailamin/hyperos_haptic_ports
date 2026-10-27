.class Lcom/android/server/tare/ProcessStateModifier;
.super Lcom/android/server/tare/Modifier;
.source "ProcessStateModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/ProcessStateModifier$ProcStateBucket;
    }
.end annotation


# static fields
.field private static final PROC_STATE_BUCKET_BFGS:I = 0x3

.field private static final PROC_STATE_BUCKET_BG:I = 0x4

.field private static final PROC_STATE_BUCKET_FGS:I = 0x2

.field private static final PROC_STATE_BUCKET_NONE:I = 0x0

.field private static final PROC_STATE_BUCKET_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mIrs:Lcom/android/server/tare/InternalResourceService;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageToUidCache:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUidProcStateBucketCache:Landroid/util/SparseIntArray;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tare/ProcessStateModifier;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/ProcessStateModifier;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUidProcStateBucketCache(Lcom/android/server/tare/ProcessStateModifier;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidProcStateBucketCache:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetProcStateBucket(Lcom/android/server/tare/ProcessStateModifier;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tare/ProcessStateModifier;->getProcStateBucket(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyStateChangedLocked(Lcom/android/server/tare/ProcessStateModifier;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tare/ProcessStateModifier;->notifyStateChangedLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/tare/ProcessStateModifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/tare/ProcessStateModifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/ProcessStateModifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 3
    .param p1, "irs"    # Lcom/android/server/tare/InternalResourceService;

    .line 107
    invoke-direct {p0}, Lcom/android/server/tare/Modifier;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidProcStateBucketCache:Landroid/util/SparseIntArray;

    .line 64
    new-instance v0, Lcom/android/server/tare/ProcessStateModifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/tare/ProcessStateModifier$1;-><init>(Lcom/android/server/tare/ProcessStateModifier;)V

    iput-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidObserver:Landroid/app/IUidObserver;

    .line 108
    iput-object p1, p0, Lcom/android/server/tare/ProcessStateModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 109
    return-void
.end method

.method private getProcStateBucket(I)I
    .registers 4
    .param p1, "procState"    # I

    .line 174
    const/4 v0, 0x2

    if-gt p1, v0, :cond_5

    .line 175
    const/4 v0, 0x1

    return v0

    .line 177
    :cond_5
    const/4 v1, 0x4

    if-gt p1, v1, :cond_9

    .line 178
    return v0

    .line 180
    :cond_9
    const/4 v0, 0x5

    if-gt p1, v0, :cond_e

    .line 181
    const/4 v0, 0x3

    return v0

    .line 183
    :cond_e
    return v1
.end method

.method private notifyStateChangedLocked(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 189
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/tare/ProcessStateModifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/tare/ProcessStateModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/tare/ProcessStateModifier;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 168
    const-string v0, "Proc state bucket cache = "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidProcStateBucketCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method getModifiedPrice(ILjava/lang/String;JJ)J
    .registers 15
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "ctp"    # J
    .param p5, "price"    # J

    .line 144
    iget-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidProcStateBucketCache:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/server/tare/ProcessStateModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 146
    invoke-virtual {v2, p1, p2}, Lcom/android/server/tare/InternalResourceService;->getUid(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 145
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 147
    .local v1, "procState":I
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_2c

    .line 148
    packed-switch v1, :pswitch_data_30

    .line 161
    return-wide p5

    .line 155
    :pswitch_15
    cmp-long v0, p5, p3

    if-gtz v0, :cond_1a

    .line 156
    return-wide p5

    .line 158
    :cond_1a
    long-to-double v2, p3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-long v6, p5, p3

    long-to-double v6, v6

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    double-to-long v2, v2

    return-wide v2

    .line 153
    :pswitch_24
    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    return-wide v2

    .line 150
    :pswitch_29
    const-wide/16 v2, 0x0

    return-wide v2

    .line 147
    .end local v1    # "procState":I
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_29
        :pswitch_24
        :pswitch_15
    .end packed-switch
.end method

.method synthetic lambda$notifyStateChangedLocked$0$com-android-server-tare-ProcessStateModifier(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 189
    iget-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1}, Lcom/android/server/tare/InternalResourceService;->onUidStateChanged(I)V

    return-void
.end method

.method setup()V
    .registers 6

    .line 115
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 120
    goto :goto_e

    .line 118
    :catch_d
    move-exception v0

    .line 121
    :goto_e
    return-void
.end method

.method tearDown()V
    .registers 3

    .line 127
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidObserver:Landroid/app/IUidObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 130
    goto :goto_b

    .line 128
    :catch_a
    move-exception v0

    .line 131
    :goto_b
    iget-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 132
    iget-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidProcStateBucketCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 133
    return-void
.end method
