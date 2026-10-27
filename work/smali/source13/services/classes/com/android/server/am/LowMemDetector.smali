.class public final Lcom/android/server/am/LowMemDetector;
.super Ljava/lang/Object;
.source "LowMemDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LowMemDetector$LowMemThread;,
        Lcom/android/server/am/LowMemDetector$MemFactor;
    }
.end annotation


# static fields
.field public static final ADJ_MEM_FACTOR_NOTHING:I = -0x1

.field public static final MEM_PRESSURE_HIGH:I = 0x3

.field public static final MEM_PRESSURE_LOW:I = 0x1

.field public static final MEM_PRESSURE_MEDIUM:I = 0x2

.field public static final MEM_PRESSURE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LowMemDetector"


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAvailable:Z

.field private final mLowMemThread:Lcom/android/server/am/LowMemDetector$LowMemThread;

.field private mPeriodicCleaner:Lcom/android/server/am/PeriodicCleanerInternalStub;

.field private mPressureState:I

.field private final mPressureStateLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPeriodicCleaner(Lcom/android/server/am/LowMemDetector;)Lcom/android/server/am/PeriodicCleanerInternalStub;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/LowMemDetector;->mPeriodicCleaner:Lcom/android/server/am/PeriodicCleanerInternalStub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPressureStateLock(Lcom/android/server/am/LowMemDetector;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAvailable(Lcom/android/server/am/LowMemDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPressureState(Lcom/android/server/am/LowMemDetector;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mwaitForPressure(Lcom/android/server/am/LowMemDetector;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->waitForPressure()I

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    .line 78
    iput-object p1, p0, Lcom/android/server/am/LowMemDetector;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 79
    new-instance v1, Lcom/android/server/am/LowMemDetector$LowMemThread;

    const-string v2, "LowMemDetector"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/LowMemDetector$LowMemThread;-><init>(Lcom/android/server/am/LowMemDetector;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/LowMemDetector;->mLowMemThread:Lcom/android/server/am/LowMemDetector$LowMemThread;

    .line 81
    const-class v3, Lcom/android/server/am/PeriodicCleanerInternalStub;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PeriodicCleanerInternalStub;

    iput-object v3, p0, Lcom/android/server/am/LowMemDetector;->mPeriodicCleaner:Lcom/android/server/am/PeriodicCleanerInternalStub;

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPeriodicCleaner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/LowMemDetector;->mPeriodicCleaner:Lcom/android/server/am/PeriodicCleanerInternalStub;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->init()I

    move-result v2

    if-eqz v2, :cond_44

    .line 85
    iput-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    goto :goto_4a

    .line 87
    :cond_44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    .line 88
    invoke-virtual {v1}, Lcom/android/server/am/LowMemDetector$LowMemThread;->start()V

    .line 90
    :goto_4a
    return-void
.end method

.method private native init()I
.end method

.method private native waitForPressure()I
.end method


# virtual methods
.method public getMemFactor()I
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    iget v1, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    monitor-exit v0

    return v1

    .line 106
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isAvailable()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    return v0
.end method
