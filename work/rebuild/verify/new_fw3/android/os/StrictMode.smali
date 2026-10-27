.class public final Landroid/os/StrictMode;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$ViolationLogger;,
        Landroid/os/StrictMode$ThreadPolicy;,
        Landroid/os/StrictMode$OnThreadViolationListener;,
        Landroid/os/StrictMode$AndroidBlockGuardPolicy;,
        Landroid/os/StrictMode$AndroidCloseGuardReporter;,
        Landroid/os/StrictMode$VmPolicy;,
        Landroid/os/StrictMode$OnVmViolationListener;,
        Landroid/os/StrictMode$ViolationInfo;,
        Landroid/os/StrictMode$BackgroundActivityLaunchCallback;,
        Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;,
        Landroid/os/StrictMode$Span;,
        Landroid/os/StrictMode$ThreadSpanState;,
        Landroid/os/StrictMode$InstanceTracker;,
        Landroid/os/StrictMode$VmPolicyMask;,
        Landroid/os/StrictMode$ThreadPolicyMask;
    }
.end annotation


# static fields
.field private static final greylist-max-o CLEARTEXT_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.clear"

.field static final blacklist DETECT_EXPLICIT_GC:J = 0x33e3c4L

.field private static final blacklist DETECT_THREAD_ALL:I = 0xffff

.field private static final blacklist DETECT_THREAD_CUSTOM:I = 0x8

.field private static final blacklist DETECT_THREAD_DISK_READ:I = 0x2

.field private static final blacklist DETECT_THREAD_DISK_WRITE:I = 0x1

.field private static final blacklist DETECT_THREAD_EXPLICIT_GC:I = 0x40

.field private static final blacklist DETECT_THREAD_NETWORK:I = 0x4

.field private static final blacklist DETECT_THREAD_RESOURCE_MISMATCH:I = 0x10

.field private static final blacklist DETECT_THREAD_UNBUFFERED_IO:I = 0x20

.field private static final blacklist DETECT_VM_ACTIVITY_LEAKS:I = 0x4

.field private static final blacklist DETECT_VM_ALL:I = 0xffff

.field private static final blacklist DETECT_VM_BACKGROUND_ACTIVITY_LAUNCH_ABORTED:I = 0x4000

.field private static final blacklist DETECT_VM_CLEARTEXT_NETWORK:I = 0x40

.field private static final blacklist DETECT_VM_CLOSABLE_LEAKS:I = 0x2

.field private static final blacklist DETECT_VM_CONTENT_URI_WITHOUT_PERMISSION:I = 0x80

.field private static final blacklist DETECT_VM_CREDENTIAL_PROTECTED_WHILE_LOCKED:I = 0x800

.field private static final blacklist DETECT_VM_CURSOR_LEAKS:I = 0x1

.field private static final blacklist DETECT_VM_FILE_URI_EXPOSURE:I = 0x20

.field private static final blacklist DETECT_VM_IMPLICIT_DIRECT_BOOT:I = 0x400

.field private static final blacklist DETECT_VM_INCORRECT_CONTEXT_USE:I = 0x1000

.field private static final blacklist DETECT_VM_INSTANCE_LEAKS:I = 0x8

.field private static final blacklist DETECT_VM_NON_SDK_API_USAGE:I = 0x200

.field private static final blacklist DETECT_VM_REGISTRATION_LEAKS:I = 0x10

.field private static final blacklist DETECT_VM_UNSAFE_INTENT_LAUNCH:I = 0x2000

.field private static final blacklist DETECT_VM_UNTAGGED_SOCKET:I = 0x100

.field private static final greylist-max-o DISABLE:Z = false

.field public static final greylist-max-o DISABLE_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.disable"

.field private static final greylist-max-o EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

.field private static final greylist-max-o LOG_V:Z

.field private static final greylist-max-o MAX_OFFENSES_PER_LOOP:I = 0xa

.field private static final greylist-max-o MAX_SPAN_TAGS:I = 0x14

.field private static final greylist-max-o MIN_DIALOG_INTERVAL_MS:J = 0x7530L

.field private static final blacklist MIN_DROPBOX_INTERVAL_MS:J = 0xbb8L

.field private static final greylist-max-o MIN_LOG_INTERVAL_MS:J = 0x3e8L

.field private static final greylist-max-o MIN_VM_INTERVAL_MS:J = 0x3e8L

.field public static final greylist-max-o NETWORK_POLICY_ACCEPT:I = 0x0

.field public static final greylist-max-o NETWORK_POLICY_LOG:I = 0x1

.field public static final greylist-max-o NETWORK_POLICY_REJECT:I = 0x2

.field private static final greylist-max-o NO_OP_SPAN:Landroid/os/StrictMode$Span;

.field public static final blacklist PENALTY_ALL:I = -0x10000

.field public static final greylist-max-o PENALTY_DEATH:I = 0x10000000

.field public static final greylist-max-o PENALTY_DEATH_ON_CLEARTEXT_NETWORK:I = 0x1000000

.field public static final greylist-max-o PENALTY_DEATH_ON_FILE_URI_EXPOSURE:I = 0x800000

.field public static final greylist-max-o PENALTY_DEATH_ON_NETWORK:I = 0x2000000

.field public static final greylist-max-o PENALTY_DIALOG:I = 0x20000000

.field public static final greylist-max-o PENALTY_DROPBOX:I = 0x4000000

.field public static final greylist-max-o PENALTY_FLASH:I = 0x8000000

.field public static final greylist-max-o PENALTY_GATHER:I = -0x80000000

.field public static final greylist-max-o PENALTY_LOG:I = 0x40000000

.field private static final greylist-max-o TAG:Ljava/lang/String; = "StrictMode"

.field private static final greylist-max-o THREAD_ANDROID_POLICY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/StrictMode$AndroidBlockGuardPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o THREAD_HANDLER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o VISUAL_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.visual"

.field private static final blacklist VM_ANDROID_POLICY:Ldalvik/system/BlockGuard$VmPolicy;

.field private static final greylist-max-o gatheredViolations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile blacklist sCeStorageUnlocked:Z

.field private static final greylist-max-o sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final greylist-max-o sExpectedActivityInstanceCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sIsIdlerRegistered:Z

.field private static greylist-max-o sLastInstanceCountCheckMillis:J

.field private static final greylist sLastVmViolationTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile greylist-max-o sLogger:Landroid/os/StrictMode$ViolationLogger;

.field private static final greylist-max-o sNonSdkApiUsageConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private static final blacklist sRealLastVmViolationTime:Landroid/util/SparseLongArray;

.field private static volatile blacklist sStorageManager:Landroid/os/storage/IStorageManager;

.field private static final greylist-max-o sThisThreadSpanState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/StrictMode$ThreadSpanState;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sThreadViolationExecutor:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sThreadViolationListener:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/StrictMode$OnThreadViolationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sUnsafeIntentCallback:Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;

.field private static volatile greylist-max-o sVmPolicy:Landroid/os/StrictMode$VmPolicy;

.field private static greylist sWindowManager:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist violationsBeingTimed:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_CLASS_LIMIT_MAP()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOGCAT_LOGGER()Landroid/os/StrictMode$ViolationLogger;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_V()Z
    .registers 1

    sget-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTHREAD_HANDLER()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->THREAD_HANDLER:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetgatheredViolations()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsExpectedActivityInstanceCount()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLastInstanceCountCheckMillis()J
    .registers 2

    sget-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLogger()Landroid/os/StrictMode$ViolationLogger;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsThisThreadSpanState()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsThreadViolationExecutor()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsThreadViolationListener()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsWindowManager()Landroid/util/Singleton;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetviolationsBeingTimed()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsLastInstanceCountCheckMillis(J)V
    .registers 2

    sput-wide p0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smclampViolationTimeMap(Landroid/util/SparseLongArray;J)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/os/StrictMode;->clampViolationTimeMap(Landroid/util/SparseLongArray;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smdropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smhandleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/StrictMode;->handleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smonCredentialProtectedPathAccess(Ljava/lang/String;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/StrictMode;->onCredentialProtectedPathAccess(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smonUnsafeIntentLaunch(ILandroid/content/Intent;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/StrictMode;->onUnsafeIntentLaunch(ILandroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smtooManyViolationsThisLoop()Z
    .registers 1

    invoke-static {}, Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 172
    const-string v0, "StrictMode"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    .line 382
    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    sput-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 392
    new-instance v0, Landroid/os/StrictMode$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/StrictMode$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

    .line 403
    sget-object v0, Landroid/os/StrictMode;->LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

    sput-object v0, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    .line 405
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    .line 407
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    .line 440
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 446
    new-instance v0, Landroid/os/StrictMode$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/os/StrictMode$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sNonSdkApiUsageConsumer:Ljava/util/function/Consumer;

    .line 1295
    new-instance v0, Landroid/os/StrictMode$1;

    invoke-direct {v0}, Landroid/os/StrictMode$1;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    .line 1661
    new-instance v0, Landroid/os/StrictMode$2;

    invoke-direct {v0}, Landroid/os/StrictMode$2;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    .line 1670
    new-instance v0, Landroid/os/StrictMode$3;

    invoke-direct {v0}, Landroid/os/StrictMode$3;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->THREAD_HANDLER:Ljava/lang/ThreadLocal;

    .line 1678
    new-instance v0, Landroid/os/StrictMode$4;

    invoke-direct {v0}, Landroid/os/StrictMode$4;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->THREAD_ANDROID_POLICY:Ljava/lang/ThreadLocal;

    .line 2009
    new-instance v0, Landroid/os/StrictMode$5;

    invoke-direct {v0}, Landroid/os/StrictMode$5;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->VM_ANDROID_POLICY:Ldalvik/system/BlockGuard$VmPolicy;

    .line 2148
    const-wide/16 v2, 0x0

    sput-wide v2, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    .line 2149
    sput-boolean v1, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 2150
    new-instance v0, Landroid/os/StrictMode$6;

    invoke-direct {v0}, Landroid/os/StrictMode$6;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 2591
    sput-boolean v1, Landroid/os/StrictMode;->sCeStorageUnlocked:Z

    .line 2644
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    .line 2645
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sRealLastVmViolationTime:Landroid/util/SparseLongArray;

    .line 2871
    new-instance v0, Landroid/os/StrictMode$7;

    invoke-direct {v0}, Landroid/os/StrictMode$7;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    .line 2894
    new-instance v0, Landroid/os/StrictMode$8;

    invoke-direct {v0}, Landroid/os/StrictMode$8;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    .line 2903
    new-instance v0, Landroid/os/StrictMode$9;

    invoke-direct {v0}, Landroid/os/StrictMode$9;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    .line 3027
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .registers 5

    .line 1444
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    .line 1445
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v1

    sget-object v2, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    .line 1446
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$OnThreadViolationListener;

    sget-object v3, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    .line 1447
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V

    .line 1444
    return-object v0
.end method

.method public static greylist-max-o allowThreadDiskReadsMask()I
    .registers 2

    .line 1453
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v0

    .line 1454
    and-int/lit8 v1, v0, -0x3

    .line 1455
    if-eq v1, v0, :cond_b

    .line 1456
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1458
    :cond_b
    return v0
.end method

.method public static whitelist allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    .registers 5

    .line 1418
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    .line 1419
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v1

    sget-object v2, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    .line 1420
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$OnThreadViolationListener;

    sget-object v3, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    .line 1421
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V

    .line 1418
    return-object v0
.end method

.method public static greylist-max-o allowThreadDiskWritesMask()I
    .registers 2

    .line 1427
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v0

    .line 1428
    and-int/lit8 v1, v0, -0x4

    .line 1429
    if-eq v1, v0, :cond_b

    .line 1430
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1432
    :cond_b
    return v0
.end method

.method public static greylist-max-o allowThreadViolations()Landroid/os/StrictMode$ThreadPolicy;
    .registers 2

    .line 1463
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1464
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1465
    return-object v0
.end method

.method public static greylist-max-o allowVmViolations()Landroid/os/StrictMode$VmPolicy;
    .registers 2

    .line 1470
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 1471
    sget-object v1, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    sput-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1472
    return-object v0
.end method

.method public static blacklist assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 2523
    invoke-static {}, Landroid/os/StrictMode;->vmIncorrectContextUseEnabled()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p0}, Landroid/content/Context;->isConfigurationContext()Z

    move-result v0

    if-nez v0, :cond_66

    .line 2524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to access the API:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " which needs to have proper configuration from a non-UI Context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The API:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " needs a proper configuration. Use UI contexts such as an activity or a context created via createWindowContext(Display, int, Bundle) or  createConfigurationContext(Configuration) with a proper configuration."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2530
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 2531
    invoke-static {p1, v0}, Landroid/os/StrictMode;->onIncorrectContextUsed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StrictMode"

    invoke-static {p1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2534
    :cond_66
    return-void
.end method

.method public static blacklist assertUiContext(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 2549
    invoke-static {}, Landroid/os/StrictMode;->vmIncorrectContextUseEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Landroid/content/Context;->isUiContext()Z

    move-result v0

    if-nez v0, :cond_60

    .line 2550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to access UI related API:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from a non-UI Context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " should be accessed from Activity or other UI Contexts. Use an Activity or a Context created with Context#createWindowContext(int, Bundle), which are adjusted to the configuration and visual bounds of an area on screen."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2556
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 2557
    invoke-static {p1, v0}, Landroid/os/StrictMode;->onIncorrectContextUsed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StrictMode"

    invoke-static {p1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2560
    :cond_60
    return-void
.end method

.method private static blacklist clampViolationTimeMap(Landroid/util/SparseLongArray;J)V
    .registers 6

    .line 2652
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 2653
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_13

    .line 2655
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    goto :goto_1

    .line 2657
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2662
    :cond_16
    return-void
.end method

.method static greylist-max-o clearGatheredViolations()V
    .registers 2

    .line 2113
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2114
    return-void
.end method

.method public static greylist conditionallyCheckInstanceCounts()V
    .registers 10

    .line 2120
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 2121
    iget-object v1, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 2122
    if-nez v1, :cond_d

    .line 2123
    return-void

    .line 2127
    :cond_d
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v2

    .line 2128
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 2129
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2130
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 2131
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2132
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 2136
    iget-object v2, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Class;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .line 2137
    invoke-static {v1, v3}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v2

    .line 2138
    nop

    :goto_34
    array-length v4, v1

    if-ge v3, v4, :cond_57

    .line 2139
    aget-object v4, v1, v3

    .line 2140
    iget-object v5, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2141
    aget-wide v6, v2, v3

    .line 2142
    int-to-long v8, v5

    cmp-long v8, v6, v8

    if-lez v8, :cond_54

    .line 2143
    new-instance v8, Landroid/os/strictmode/InstanceCountViolation;

    invoke-direct {v8, v4, v6, v7, v5}, Landroid/os/strictmode/InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    invoke-static {v8}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2138
    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 2146
    :cond_57
    return-void
.end method

.method public static greylist-max-o decrementExpectedActivityCount(Ljava/lang/Class;)V
    .registers 7

    .line 3061
    if-nez p0, :cond_3

    .line 3062
    return-void

    .line 3066
    :cond_3
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 3067
    :try_start_6
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v1, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_10

    .line 3068
    monitor-exit v0

    return-void

    .line 3071
    :cond_10
    sget-object v1, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3072
    const/4 v2, 0x0

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_22

    goto :goto_29

    :cond_22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    :cond_29
    :goto_29
    move v1, v2

    .line 3073
    :goto_2a
    if-nez v1, :cond_32

    .line 3074
    sget-object v3, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 3076
    :cond_32
    sget-object v3, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3081
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    .line 3082
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_60

    .line 3085
    invoke-static {p0}, Landroid/os/StrictMode$InstanceTracker;->getInstanceCount(Ljava/lang/Class;)I

    move-result v0

    .line 3086
    if-gt v0, v1, :cond_45

    .line 3087
    return-void

    .line 3098
    :cond_45
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3099
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 3100
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3102
    invoke-static {p0, v2}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v2

    .line 3103
    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_5f

    .line 3104
    new-instance v0, Landroid/os/strictmode/InstanceCountViolation;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/os/strictmode/InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 3106
    :cond_5f
    return-void

    .line 3082
    :catchall_60
    move-exception p0

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public static greylist disableDeathOnFileUriExposure()V
    .registers 6

    .line 1611
    new-instance v0, Landroid/os/StrictMode$VmPolicy;

    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v1, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    const v2, -0x800021

    and-int/2addr v1, v2

    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v2, v2, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    sget-object v3, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v3, v3, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    sget-object v4, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v4, v4, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V

    sput-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1619
    return-void
.end method

.method private static greylist-max-o dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 5

    .line 2045
    sget-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 2046
    const/16 v1, 0x14

    if-le v0, v1, :cond_10

    .line 2049
    sget-object p0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2050
    return-void

    .line 2053
    :cond_10
    sget-boolean v1, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropboxing async; in-flight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StrictMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_2c
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/os/StrictMode$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/os/StrictMode$$ExternalSyntheticLambda3;-><init>(ILandroid/os/StrictMode$ViolationInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2060
    return-void
.end method

.method public static blacklist enableCredentialProtectedWhileLocked()V
    .registers 8

    .line 1650
    const-class v1, Landroid/os/StrictMode;

    monitor-enter v1

    .line 1651
    :try_start_3
    new-instance v2, Landroid/os/StrictMode$VmPolicy;

    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    or-int/lit16 v3, v0, 0x800

    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v4, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v5, v0, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v6, v0, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V

    sput-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1657
    monitor-exit v1

    .line 1658
    return-void

    .line 1657
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public static greylist enableDeathOnFileUriExposure()V
    .registers 6

    .line 1593
    new-instance v0, Landroid/os/StrictMode$VmPolicy;

    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v1, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    or-int/lit8 v1, v1, 0x20

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v2, v2, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    sget-object v3, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v3, v3, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    sget-object v4, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v4, v4, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V

    sput-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1601
    return-void
.end method

.method public static whitelist enableDefaults()V
    .registers 1

    .line 2292
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2293
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 2294
    return-void
.end method

.method public static greylist enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;
    .registers 6

    .line 2925
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_7

    .line 2926
    sget-object p0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    return-object p0

    .line 2928
    :cond_7
    if-eqz p0, :cond_86

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_86

    .line 2931
    sget-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/StrictMode$ThreadSpanState;

    .line 2932
    nop

    .line 2933
    monitor-enter v0

    .line 2934
    :try_start_19
    iget-object v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2c

    .line 2935
    iget-object v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 2936
    invoke-static {v1}, Landroid/os/StrictMode$Span;->-$$Nest$fgetmNext(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v2

    iput-object v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 2937
    iget v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    goto :goto_31

    .line 2940
    :cond_2c
    new-instance v1, Landroid/os/StrictMode$Span;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$Span;-><init>(Landroid/os/StrictMode$ThreadSpanState;)V

    .line 2942
    :goto_31
    invoke-static {v1, p0}, Landroid/os/StrictMode$Span;->-$$Nest$fputmName(Landroid/os/StrictMode$Span;Ljava/lang/String;)V

    .line 2943
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/os/StrictMode$Span;->-$$Nest$fputmCreateMillis(Landroid/os/StrictMode$Span;J)V

    .line 2944
    iget-object v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    invoke-static {v1, v2}, Landroid/os/StrictMode$Span;->-$$Nest$fputmNext(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)V

    .line 2945
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/StrictMode$Span;->-$$Nest$fputmPrev(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)V

    .line 2946
    iput-object v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 2947
    iget v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 2948
    invoke-static {v1}, Landroid/os/StrictMode$Span;->-$$Nest$fgetmNext(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 2949
    invoke-static {v1}, Landroid/os/StrictMode$Span;->-$$Nest$fgetmNext(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/os/StrictMode$Span;->-$$Nest$fputmPrev(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)V

    .line 2951
    :cond_59
    sget-boolean v2, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v2, :cond_81

    const-string v2, "StrictMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Span enter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "; size="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v3, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    :cond_81
    monitor-exit v0

    .line 2953
    return-object v1

    .line 2952
    :catchall_83
    move-exception p0

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_19 .. :try_end_85} :catchall_83

    throw p0

    .line 2929
    :cond_86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "name must be non-null and non-empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getAndDisableCredentialProtectedWhileLocked()Z
    .registers 8

    .line 1630
    const-class v1, Landroid/os/StrictMode;

    monitor-enter v1

    .line 1631
    :try_start_3
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 1633
    :goto_e
    new-instance v2, Landroid/os/StrictMode$VmPolicy;

    sget-object v3, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v3, v3, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v3, v3, -0x801

    sget-object v4, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v4, v4, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    sget-object v5, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v5, v5, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    sget-object v6, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v6, v6, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V

    sput-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1639
    monitor-exit v1

    return v0

    .line 1640
    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public static whitelist getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;
    .registers 5

    .line 1401
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    .line 1402
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    sget-object v2, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    .line 1403
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$OnThreadViolationListener;

    sget-object v3, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    .line 1404
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V

    .line 1401
    return-object v0
.end method

.method public static greylist getThreadPolicyMask()I
    .registers 2

    .line 1387
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 1388
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v1, :cond_f

    .line 1389
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->getThreadPolicyMask()I

    move-result v0

    return v0

    .line 1391
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    .registers 2

    .line 2279
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 2280
    :try_start_3
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    monitor-exit v0

    return-object v1

    .line 2281
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static greylist-max-o handleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 6

    .line 2064
    const-string v0, "StrictMode"

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 2070
    const/4 v2, 0x0

    :try_start_7
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 2072
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 2073
    if-nez v2, :cond_16

    .line 2074
    const-string p0, "No activity manager; failed to Dropbox violation."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 2076
    :cond_16
    nop

    .line 2077
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v3

    .line 2076
    invoke-interface {v2, v3, p0, p1}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1e} :catch_21
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1f

    goto :goto_2c

    .line 2086
    :catchall_1f
    move-exception p0

    goto :goto_31

    .line 2079
    :catch_21
    move-exception p0

    .line 2080
    :try_start_22
    instance-of p1, p0, Landroid/os/DeadObjectException;

    if-eqz p1, :cond_27

    goto :goto_2c

    .line 2083
    :cond_27
    const-string p1, "RemoteException handling StrictMode violation"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_1f

    .line 2086
    :goto_2c
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 2087
    nop

    .line 2088
    return-void

    .line 2086
    :goto_31
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 2087
    throw p0
.end method

.method static greylist-max-o hasGatheredViolations()Z
    .registers 1

    .line 2105
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-r incrementExpectedActivityCount(Ljava/lang/Class;)V
    .registers 4

    .line 3042
    if-nez p0, :cond_3

    .line 3043
    return-void

    .line 3046
    :cond_3
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 3047
    :try_start_6
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v1, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_10

    .line 3048
    monitor-exit v0

    return-void

    .line 3052
    :cond_10
    sget-object v1, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3054
    if-nez v1, :cond_21

    invoke-static {p0}, Landroid/os/StrictMode$InstanceTracker;->getInstanceCount(Ljava/lang/Class;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3055
    sget-object v2, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3056
    monitor-exit v0

    .line 3057
    return-void

    .line 3056
    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public static greylist-max-o initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V
    .registers 4

    .line 1519
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 1521
    if-eqz p0, :cond_a

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_c

    :cond_a
    const/16 v1, 0x2710

    .line 1524
    :goto_c
    const/16 v2, 0xb

    if-lt v1, v2, :cond_16

    .line 1525
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1526
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeathOnNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1529
    :cond_16
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_4c

    const-string/jumbo v1, "persist.sys.strictmode.disable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_4c

    .line 1531
    :cond_25
    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v1, :cond_2d

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_4c

    .line 1533
    :cond_2d
    invoke-static {p0}, Landroid/os/StrictMode;->isBundledSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 1534
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1535
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1536
    const-string/jumbo p0, "persist.sys.strictmode.visual"

    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 1537
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1539
    :cond_45
    sget-boolean p0, Landroid/os/Build;->IS_ENG:Z

    if-eqz p0, :cond_4c

    .line 1540
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1545
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p0

    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1546
    return-void
.end method

.method public static greylist-max-o initVmDefaults(Landroid/content/pm/ApplicationInfo;)V
    .registers 4

    .line 1554
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 1556
    if-eqz p0, :cond_a

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_c

    :cond_a
    const/16 v1, 0x2710

    .line 1559
    :goto_c
    const/16 v2, 0x18

    if-lt v1, v2, :cond_16

    .line 1560
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1561
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeathOnFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1564
    :cond_16
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_4c

    const-string/jumbo v1, "persist.sys.strictmode.disable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_4c

    .line 1566
    :cond_25
    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v1, :cond_39

    .line 1569
    invoke-static {p0}, Landroid/os/StrictMode;->isBundledSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 1570
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1571
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->permitActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1572
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    goto :goto_4c

    .line 1574
    :cond_39
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_4c

    .line 1576
    invoke-static {p0}, Landroid/os/StrictMode;->isBundledSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 1577
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1578
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1579
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1583
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object p0

    invoke-static {p0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1584
    return-void
.end method

.method public static greylist-max-o isBundledSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    .line 1488
    const/4 v0, 0x1

    if-eqz p0, :cond_50

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_50

    .line 1491
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    .line 1493
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.vending"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1494
    const-string v3, "com.android.chrome"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_4e

    .line 1500
    :cond_24
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.phone"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1501
    return v2

    .line 1504
    :cond_2f
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1505
    const-string v3, "android."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1506
    const-string v1, "com.android."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 1507
    :cond_4d
    return v0

    .line 1495
    :cond_4e
    :goto_4e
    return v2

    .line 1510
    :cond_4f
    return v2

    .line 1490
    :cond_50
    :goto_50
    return v0
.end method

.method private static blacklist isCeStorageUnlocked(I)Z
    .registers 2

    .line 2600
    sget-object v0, Landroid/os/StrictMode;->sStorageManager:Landroid/os/storage/IStorageManager;

    .line 2601
    if-nez v0, :cond_14

    .line 2602
    nop

    .line 2603
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    .line 2606
    if-eqz v0, :cond_14

    .line 2607
    sput-object v0, Landroid/os/StrictMode;->sStorageManager:Landroid/os/storage/IStorageManager;

    .line 2610
    :cond_14
    if-eqz v0, :cond_1f

    .line 2612
    :try_start_16
    invoke-interface {v0, p0}, Landroid/os/storage/IStorageManager;->isCeStorageUnlocked(I)Z

    move-result p0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1a} :catch_1b

    return p0

    .line 2613
    :catch_1b
    move-exception p0

    .line 2615
    const/4 p0, 0x0

    sput-object p0, Landroid/os/StrictMode;->sStorageManager:Landroid/os/storage/IStorageManager;

    .line 2618
    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$dropboxViolationAsync$2(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 3

    .line 2056
    invoke-static {p0, p1}, Landroid/os/StrictMode;->handleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 2057
    sget-object p0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    .line 2058
    sget-boolean p1, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz p1, :cond_25

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dropbox complete; in-flight="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StrictMode"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    :cond_25
    return-void
.end method

.method static synthetic blacklist lambda$onVmPolicyViolation$3(Landroid/os/StrictMode$OnVmViolationListener;Landroid/os/strictmode/Violation;)V
    .registers 3

    .line 2735
    invoke-static {}, Landroid/os/StrictMode;->allowVmViolations()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 2737
    :try_start_4
    invoke-interface {p0, p1}, Landroid/os/StrictMode$OnVmViolationListener;->onVmViolation(Landroid/os/strictmode/Violation;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 2739
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 2740
    nop

    .line 2741
    return-void

    .line 2739
    :catchall_c
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 2740
    throw p0
.end method

.method static synthetic blacklist lambda$static$0(Landroid/os/StrictMode$ViolationInfo;)V
    .registers 3

    .line 395
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrictMode policy violation; ~duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 398
    :cond_21
    const-string v0, "StrictMode policy violation:"

    .line 400
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StrictMode"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method

.method static synthetic blacklist lambda$static$1(Ljava/lang/String;)V
    .registers 2

    .line 447
    new-instance v0, Landroid/os/strictmode/NonSdkApiUsedViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/NonSdkApiUsedViolation;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    return-void
.end method

.method public static greylist-max-o noteDiskRead()V
    .registers 2

    .line 3008
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 3009
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 3011
    return-void

    .line 3013
    :cond_9
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 3014
    return-void
.end method

.method public static greylist-max-o noteDiskWrite()V
    .registers 2

    .line 3018
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 3019
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 3021
    return-void

    .line 3023
    :cond_9
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 3024
    return-void
.end method

.method public static greylist-max-o noteResourceMismatch(Ljava/lang/Object;)V
    .registers 3

    .line 2988
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2989
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 2991
    return-void

    .line 2993
    :cond_9
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onResourceMismatch(Ljava/lang/Object;)V

    .line 2994
    return-void
.end method

.method public static whitelist noteSlowCall(Ljava/lang/String;)V
    .registers 3

    .line 2965
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2966
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 2968
    return-void

    .line 2970
    :cond_9
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onCustomSlowCall(Ljava/lang/String;)V

    .line 2971
    return-void
.end method

.method public static greylist-max-o noteUnbufferedIO()V
    .registers 2

    .line 2998
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2999
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 3001
    return-void

    .line 3003
    :cond_9
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onUnbufferedIO()V

    .line 3004
    return-void
.end method

.method public static blacklist noteUntaggedSocket()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2976
    invoke-static {}, Landroid/os/StrictMode;->vmUntaggedSocketEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/os/StrictMode;->onUntaggedSocket()V

    .line 2977
    :cond_9
    return-void
.end method

.method public static blacklist onBackgroundActivityLaunchAborted(Ljava/lang/String;)V
    .registers 2

    .line 2587
    new-instance v0, Landroid/os/strictmode/BackgroundActivityLaunchViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/BackgroundActivityLaunchViolation;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2588
    return-void
.end method

.method private static greylist-max-r onBinderStrictModePolicyChange(I)V
    .registers 1

    .line 2795
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 2796
    return-void
.end method

.method public static greylist-max-o onCleartextNetworkDetected([B)V
    .registers 6

    .line 2455
    nop

    .line 2456
    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    .line 2457
    array-length v1, p0

    const/16 v2, 0x14

    const/16 v3, 0x10

    if-lt v1, v2, :cond_1a

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1a

    .line 2459
    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 2460
    invoke-static {p0, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_30

    .line 2461
    :cond_1a
    array-length v1, p0

    const/16 v2, 0x28

    if-lt v1, v2, :cond_2f

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0x60

    if-ne v1, v2, :cond_2f

    .line 2463
    new-array v2, v3, [B

    .line 2464
    const/16 v1, 0x18

    invoke-static {p0, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_30

    .line 2468
    :cond_2f
    const/4 v2, 0x0

    :goto_30
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 2469
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Detected cleartext network traffic from UID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2470
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2471
    if-eqz v2, :cond_50

    .line 2473
    :try_start_41
    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_4e
    .catch Ljava/net/UnknownHostException; {:try_start_41 .. :try_end_4e} :catch_4f

    .line 2475
    goto :goto_50

    .line 2474
    :catch_4f
    move-exception v2

    .line 2477
    :cond_50
    :goto_50
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2478
    sget-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget p0, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v2, 0x1000000

    and-int/2addr p0, v2

    if-eqz p0, :cond_6b

    const/4 v0, 0x1

    .line 2479
    :cond_6b
    new-instance p0, Landroid/os/strictmode/CleartextNetworkViolation;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/strictmode/CleartextNetworkViolation;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;Z)V

    .line 2480
    return-void
.end method

.method public static greylist-max-o onContentUriWithoutPermission(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3

    .line 2450
    new-instance v0, Landroid/os/strictmode/ContentUriWithoutPermissionViolation;

    invoke-direct {v0, p0, p1}, Landroid/os/strictmode/ContentUriWithoutPermissionViolation;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2451
    return-void
.end method

.method private static blacklist onCredentialProtectedPathAccess(Ljava/lang/String;I)V
    .registers 5

    .line 2626
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne p1, v0, :cond_15

    .line 2627
    sget-boolean v0, Landroid/os/StrictMode;->sCeStorageUnlocked:Z

    if-eqz v0, :cond_b

    .line 2628
    return-void

    .line 2629
    :cond_b
    invoke-static {p1}, Landroid/os/StrictMode;->isCeStorageUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2630
    const/4 p0, 0x1

    sput-boolean p0, Landroid/os/StrictMode;->sCeStorageUnlocked:Z

    .line 2631
    return-void

    .line 2633
    :cond_15
    invoke-static {p1}, Landroid/os/StrictMode;->isCeStorageUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2634
    return-void

    .line 2637
    :cond_1c
    new-instance v0, Landroid/os/strictmode/CredentialProtectedWhileLockedViolation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessed credential protected path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " while user "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " was locked"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/strictmode/CredentialProtectedWhileLockedViolation;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2640
    return-void
.end method

.method public static greylist-max-o onFileUriExposed(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3

    .line 2440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " exposed beyond app through "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2441
    sget-object p1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget p1, p1, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v0, 0x800000

    and-int/2addr p1, v0

    if-nez p1, :cond_29

    .line 2444
    new-instance p1, Landroid/os/strictmode/FileUriExposedViolation;

    invoke-direct {p1, p0}, Landroid/os/strictmode/FileUriExposedViolation;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2446
    return-void

    .line 2442
    :cond_29
    new-instance p1, Landroid/os/FileUriExposedException;

    invoke-direct {p1, p0}, Landroid/os/FileUriExposedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist onImplicitDirectBoot()V
    .registers 1

    .line 2489
    new-instance v0, Landroid/os/strictmode/ImplicitDirectBootViolation;

    invoke-direct {v0}, Landroid/os/strictmode/ImplicitDirectBootViolation;-><init>()V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2490
    return-void
.end method

.method public static blacklist onIncorrectContextUsed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 2495
    new-instance v0, Landroid/os/strictmode/IncorrectContextUseViolation;

    invoke-direct {v0, p0, p1}, Landroid/os/strictmode/IncorrectContextUseViolation;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2496
    return-void
.end method

.method public static greylist-max-o onIntentReceiverLeaked(Ljava/lang/Throwable;)V
    .registers 2

    .line 2430
    new-instance v0, Landroid/os/strictmode/IntentReceiverLeakedViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/IntentReceiverLeakedViolation;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2431
    return-void
.end method

.method public static greylist-max-o onServiceConnectionLeaked(Ljava/lang/Throwable;)V
    .registers 2

    .line 2435
    new-instance v0, Landroid/os/strictmode/ServiceConnectionLeakedViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/ServiceConnectionLeakedViolation;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2436
    return-void
.end method

.method public static greylist-max-o onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 2419
    new-instance v0, Landroid/os/strictmode/SqliteObjectLeakedViolation;

    invoke-direct {v0, p0, p1}, Landroid/os/strictmode/SqliteObjectLeakedViolation;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2420
    return-void
.end method

.method private static blacklist onUnsafeIntentLaunch(ILandroid/content/Intent;)V
    .registers 4

    .line 2569
    packed-switch p0, :pswitch_data_2a

    .line 2580
    return-void

    .line 2577
    :pswitch_4
    nop

    .line 2578
    const-string p0, "Intent mismatch target component intent filter: "

    goto :goto_f

    .line 2574
    :pswitch_8
    nop

    .line 2575
    const-string p0, "Implicit intent matching internal non-exported component: "

    goto :goto_f

    .line 2571
    :pswitch_c
    nop

    .line 2572
    const-string p0, "Launch of intent with null action: "

    .line 2582
    :goto_f
    new-instance v0, Landroid/os/strictmode/UnsafeIntentLaunchViolation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/os/strictmode/UnsafeIntentLaunchViolation;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2583
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method public static blacklist onUnsafeIntentLaunch(Landroid/content/Intent;)V
    .registers 2

    .line 2564
    new-instance v0, Landroid/os/strictmode/UnsafeIntentLaunchViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/UnsafeIntentLaunchViolation;-><init>(Landroid/content/Intent;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2565
    return-void
.end method

.method public static greylist-max-o onUntaggedSocket()V
    .registers 1

    .line 2484
    new-instance v0, Landroid/os/strictmode/UntaggedSocketViolation;

    invoke-direct {v0}, Landroid/os/strictmode/UntaggedSocketViolation;-><init>()V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2485
    return-void
.end method

.method public static greylist-max-o onVmPolicyViolation(Landroid/os/strictmode/Violation;)V
    .registers 2

    .line 2666
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;Z)V

    .line 2667
    return-void
.end method

.method public static greylist-max-o onVmPolicyViolation(Landroid/os/strictmode/Violation;Z)V
    .registers 20

    .line 2671
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 2672
    iget v2, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_11

    move v2, v4

    goto :goto_12

    :cond_11
    move v2, v5

    .line 2673
    :goto_12
    iget v6, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v7, 0x10000000

    and-int/2addr v6, v7

    if-nez v6, :cond_1e

    if-eqz p1, :cond_1c

    goto :goto_1e

    :cond_1c
    move v6, v5

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v6, v4

    .line 2674
    :goto_1f
    iget v7, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v7, v8

    if-eqz v7, :cond_27

    goto :goto_28

    :cond_27
    move v4, v5

    .line 2676
    :goto_28
    iget v7, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v8, -0x10000

    and-int/2addr v7, v8

    .line 2677
    new-instance v8, Landroid/os/StrictMode$ViolationInfo;

    invoke-direct {v8, v0, v7}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/strictmode/Violation;I)V

    .line 2680
    iput v5, v8, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 2681
    const/4 v5, 0x0

    iput-object v5, v8, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 2682
    iput-object v5, v8, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 2684
    invoke-virtual {v8}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2685
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2687
    nop

    .line 2688
    sget-object v7, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    sget-object v11, Landroid/os/StrictMode;->LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

    const-wide/16 v12, 0x3e8

    if-ne v7, v11, :cond_8c

    .line 2689
    sget-object v7, Landroid/os/StrictMode;->sRealLastVmViolationTime:Landroid/util/SparseLongArray;

    monitor-enter v7

    .line 2690
    :try_start_51
    sget-object v11, Landroid/os/StrictMode;->sRealLastVmViolationTime:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v11

    if-ltz v11, :cond_6a

    .line 2691
    sget-object v11, Landroid/os/StrictMode;->sRealLastVmViolationTime:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    .line 2692
    sub-long v14, v9, v14

    goto :goto_6f

    .line 2690
    :cond_6a
    const-wide v14, 0x7fffffffffffffffL

    .line 2694
    :goto_6f
    cmp-long v11, v14, v12

    if-lez v11, :cond_7c

    .line 2695
    sget-object v11, Landroid/os/StrictMode;->sRealLastVmViolationTime:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v11, v5, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2697
    :cond_7c
    sget-object v5, Landroid/os/StrictMode;->sRealLastVmViolationTime:Landroid/util/SparseLongArray;

    .line 2698
    invoke-static {v12, v13, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    sub-long v9, v9, v16

    .line 2697
    invoke-static {v5, v9, v10}, Landroid/os/StrictMode;->clampViolationTimeMap(Landroid/util/SparseLongArray;J)V

    .line 2699
    monitor-exit v7

    goto :goto_91

    :catchall_89
    move-exception v0

    monitor-exit v7
    :try_end_8b
    .catchall {:try_start_51 .. :try_end_8b} :catchall_89

    throw v0

    .line 2688
    :cond_8c
    const-wide v14, 0x7fffffffffffffffL

    .line 2701
    :goto_91
    cmp-long v5, v14, v12

    if-gtz v5, :cond_96

    .line 2703
    return-void

    .line 2706
    :cond_96
    if-eqz v4, :cond_a3

    sget-object v4, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    if-eqz v4, :cond_a3

    if-lez v5, :cond_a3

    .line 2707
    sget-object v4, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    invoke-interface {v4, v8}, Landroid/os/StrictMode$ViolationLogger;->log(Landroid/os/StrictMode$ViolationInfo;)V

    .line 2710
    :cond_a3
    if-eqz v2, :cond_ae

    .line 2711
    if-eqz v6, :cond_ab

    .line 2712
    invoke-static {v3, v8}, Landroid/os/StrictMode;->handleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V

    goto :goto_ae

    .line 2717
    :cond_ab
    invoke-static {v3, v8}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 2721
    :cond_ae
    :goto_ae
    if-eqz v6, :cond_c3

    .line 2722
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "StrictMode VmPolicy violation with POLICY_DEATH; shutting down."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2723
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 2724
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 2729
    :cond_c3
    iget-object v2, v1, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    if-eqz v2, :cond_e0

    iget-object v2, v1, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_e0

    .line 2730
    iget-object v2, v1, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    .line 2732
    :try_start_cd
    iget-object v1, v1, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/StrictMode$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Landroid/os/StrictMode$$ExternalSyntheticLambda0;-><init>(Landroid/os/StrictMode$OnVmViolationListener;Landroid/os/strictmode/Violation;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_d7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_cd .. :try_end_d7} :catch_d8

    .line 2744
    goto :goto_e0

    .line 2742
    :catch_d8
    move-exception v0

    .line 2743
    const-string v1, "StrictMode"

    const-string v2, "VmPolicy penaltyCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2746
    :cond_e0
    :goto_e0
    return-void
.end method

.method public static greylist onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V
    .registers 2

    .line 2425
    new-instance v0, Landroid/os/strictmode/WebViewMethodCalledOnWrongThreadViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/WebViewMethodCalledOnWrongThreadViolation;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2426
    return-void
.end method

.method static greylist-max-o readAndHandleBinderCallViolations(Landroid/os/Parcel;)V
    .registers 9

    .line 2771
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 2772
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 2773
    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    .line 2775
    :goto_13
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2776
    nop

    :goto_18
    if-ge v2, v4, :cond_34

    .line 2777
    new-instance v5, Landroid/os/StrictMode$ViolationInfo;

    xor-int/lit8 v6, v1, 0x1

    invoke-direct {v5, p0, v6}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 2778
    invoke-virtual {v5, v0}, Landroid/os/StrictMode$ViolationInfo;->addLocalStack(Ljava/lang/Throwable;)V

    .line 2779
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v6

    .line 2780
    instance-of v7, v6, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v7, :cond_31

    .line 2781
    check-cast v6, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v6, v5}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 2776
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 2784
    :cond_34
    return-void
.end method

.method private static blacklist registerBackgroundActivityLaunchCallback()V
    .registers 3

    .line 2231
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 2232
    if-eqz v0, :cond_1a

    .line 2233
    new-instance v1, Landroid/os/StrictMode$BackgroundActivityLaunchCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/StrictMode$BackgroundActivityLaunchCallback;-><init>(Landroid/os/StrictMode-IA;)V

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerBackgroundActivityStartCallback(Landroid/os/IBinder;)Z
    :try_end_f
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_f} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_1a

    .line 2238
    :catch_10
    move-exception v0

    .line 2239
    const-string v1, "StrictMode"

    const-string v2, "RemoteException handling StrictMode violation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 2236
    :catch_19
    move-exception v0

    .line 2240
    :cond_1a
    :goto_1a
    nop

    .line 2241
    :goto_1b
    return-void
.end method

.method private static blacklist registerIntentMatchingRestrictionCallback()V
    .registers 2

    .line 2257
    sget-object v0, Landroid/os/StrictMode;->sUnsafeIntentCallback:Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;

    if-nez v0, :cond_17

    .line 2258
    new-instance v0, Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;-><init>(Landroid/os/StrictMode-IA;)V

    sput-object v0, Landroid/os/StrictMode;->sUnsafeIntentCallback:Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;

    .line 2260
    :try_start_c
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    sget-object v1, Landroid/os/StrictMode;->sUnsafeIntentCallback:Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerStrictModeCallback(Landroid/os/IBinder;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    .line 2263
    goto :goto_17

    .line 2261
    :catch_16
    move-exception v0

    .line 2265
    :cond_17
    :goto_17
    return-void
.end method

.method private static greylist-max-o setBlockGuardPolicy(I)V
    .registers 3

    .line 1345
    if-nez p0, :cond_8

    .line 1346
    sget-object p0, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    invoke-static {p0}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    .line 1347
    return-void

    .line 1349
    :cond_8
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 1351
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v1, :cond_13

    .line 1352
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    goto :goto_1e

    .line 1354
    :cond_13
    sget-object v0, Landroid/os/StrictMode;->THREAD_ANDROID_POLICY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 1355
    invoke-static {v0}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    .line 1357
    :goto_1e
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->setThreadPolicyMask(I)V

    .line 1358
    return-void
.end method

.method private static blacklist setBlockGuardVmPolicy(I)V
    .registers 1

    .line 1362
    and-int/lit16 p0, p0, 0x800

    .line 1363
    if-eqz p0, :cond_a

    .line 1364
    sget-object p0, Landroid/os/StrictMode;->VM_ANDROID_POLICY:Ldalvik/system/BlockGuard$VmPolicy;

    invoke-static {p0}, Ldalvik/system/BlockGuard;->setVmPolicy(Ldalvik/system/BlockGuard$VmPolicy;)V

    goto :goto_f

    .line 1366
    :cond_a
    sget-object p0, Ldalvik/system/BlockGuard;->LAX_VM_POLICY:Ldalvik/system/BlockGuard$VmPolicy;

    invoke-static {p0}, Ldalvik/system/BlockGuard;->setVmPolicy(Ldalvik/system/BlockGuard$VmPolicy;)V

    .line 1368
    :goto_f
    return-void
.end method

.method private static greylist-max-o setCloseGuardEnabled(Z)V
    .registers 3

    .line 1372
    invoke-static {}, Ldalvik/system/CloseGuard;->getReporter()Ldalvik/system/CloseGuard$Reporter;

    move-result-object v0

    instance-of v0, v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    if-nez v0, :cond_11

    .line 1373
    new-instance v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/StrictMode$AndroidCloseGuardReporter;-><init>(Landroid/os/StrictMode-IA;)V

    invoke-static {v0}, Ldalvik/system/CloseGuard;->setReporter(Ldalvik/system/CloseGuard$Reporter;)V

    .line 1375
    :cond_11
    invoke-static {p0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 1376
    return-void
.end method

.method public static whitelist setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .registers 3

    .line 1318
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1319
    sget-object v0, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Landroid/os/StrictMode$ThreadPolicy;->mListener:Landroid/os/StrictMode$OnThreadViolationListener;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1320
    sget-object v0, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    iget-object p0, p0, Landroid/os/StrictMode$ThreadPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1321
    return-void
.end method

.method public static greylist-max-o setThreadPolicyMask(I)V
    .registers 1

    .line 1331
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 1334
    invoke-static {p0}, Landroid/os/Binder;->setThreadStrictModePolicy(I)V

    .line 1335
    return-void
.end method

.method public static blacklist setThreadPolicyMask$ravenwood(I)V
    .registers 2

    .line 1340
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1341
    return-void
.end method

.method public static blacklist setViolationLogger(Landroid/os/StrictMode$ViolationLogger;)V
    .registers 1

    .line 430
    if-nez p0, :cond_4

    .line 431
    sget-object p0, Landroid/os/StrictMode;->LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

    .line 433
    :cond_4
    sput-object p0, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    .line 434
    return-void
.end method

.method public static whitelist setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .registers 6

    .line 2169
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 2170
    :try_start_3
    sput-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 2171
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    move-result v1

    invoke-static {v1}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 2173
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 2174
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3b

    .line 2175
    iget-object v1, v1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 2176
    iget-object p0, p0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget p0, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v4, -0x10000

    and-int/2addr p0, v4

    if-nez p0, :cond_28

    goto :goto_34

    .line 2180
    :cond_28
    sget-boolean p0, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    if-nez p0, :cond_3b

    .line 2181
    sget-object p0, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2182
    sput-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    goto :goto_3b

    .line 2178
    :cond_34
    :goto_34
    sget-object p0, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2179
    sput-boolean v3, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 2186
    :cond_3b
    :goto_3b
    nop

    .line 2187
    sget-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget p0, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_5b

    .line 2188
    sget-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget p0, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v1, 0x10000000

    and-int/2addr p0, v1

    if-nez p0, :cond_59

    sget-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget p0, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v1, 0x1000000

    and-int/2addr p0, v1

    if-eqz p0, :cond_57

    goto :goto_59

    .line 2192
    :cond_57
    move p0, v2

    goto :goto_5c

    .line 2190
    :cond_59
    :goto_59
    const/4 p0, 0x2

    goto :goto_5c

    .line 2187
    :cond_5b
    move p0, v3

    .line 2196
    :goto_5c
    const-string/jumbo v1, "network_management"

    .line 2198
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2197
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_b3

    .line 2199
    if-eqz v1, :cond_73

    .line 2201
    :try_start_69
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-interface {v1, v4, p0}, Landroid/os/INetworkManagementService;->setUidCleartextNetworkPolicy(II)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_70} :catch_71
    .catchall {:try_start_69 .. :try_end_70} :catchall_b3

    goto :goto_72

    .line 2202
    :catch_71
    move-exception p0

    .line 2203
    :goto_72
    goto :goto_7c

    .line 2204
    :cond_73
    if-eqz p0, :cond_7c

    .line 2205
    :try_start_75
    const-string p0, "StrictMode"

    const-string v1, "Dropping requested network policy due to missing service!"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :cond_7c
    :goto_7c
    sget-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget p0, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_8d

    .line 2210
    sget-object p0, Landroid/os/StrictMode;->sNonSdkApiUsageConsumer:Ljava/util/function/Consumer;

    invoke-static {p0}, Ldalvik/system/VMRuntime;->setNonSdkApiUsageConsumer(Ljava/util/function/Consumer;)V

    .line 2211
    invoke-static {v3}, Ldalvik/system/VMRuntime;->setDedupeHiddenApiWarnings(Z)V

    goto :goto_94

    .line 2213
    :cond_8d
    const/4 p0, 0x0

    invoke-static {p0}, Ldalvik/system/VMRuntime;->setNonSdkApiUsageConsumer(Ljava/util/function/Consumer;)V

    .line 2214
    invoke-static {v2}, Ldalvik/system/VMRuntime;->setDedupeHiddenApiWarnings(Z)V

    .line 2217
    :goto_94
    sget-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget p0, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_9f

    .line 2218
    invoke-static {}, Landroid/os/StrictMode;->registerIntentMatchingRestrictionCallback()V

    .line 2221
    :cond_9f
    sget-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget p0, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_aa

    .line 2222
    invoke-static {}, Landroid/os/StrictMode;->registerBackgroundActivityLaunchCallback()V

    .line 2225
    :cond_aa
    sget-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget p0, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardVmPolicy(I)V

    .line 2226
    monitor-exit v0

    .line 2227
    return-void

    .line 2226
    :catchall_b3
    move-exception p0

    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_75 .. :try_end_b5} :catchall_b3

    throw p0
.end method

.method private static greylist-max-o tooManyViolationsThisLoop()Z
    .registers 2

    .line 1687
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static greylist-max-o trackActivity(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 3036
    new-instance v0, Landroid/os/StrictMode$InstanceTracker;

    invoke-direct {v0, p0}, Landroid/os/StrictMode$InstanceTracker;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist vmBackgroundActivityLaunchEnabled()Z
    .registers 1

    .line 2414
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o vmCleartextNetworkEnabled()Z
    .registers 1

    .line 2343
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o vmClosableObjectLeaksEnabled()Z
    .registers 1

    .line 2313
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o vmContentUriWithoutPermissionEnabled()Z
    .registers 1

    .line 2353
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist vmCredentialProtectedWhileLockedEnabled()Z
    .registers 1

    .line 2383
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o vmFileUriExposureEnabled()Z
    .registers 1

    .line 2333
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist vmImplicitDirectBootEnabled()Z
    .registers 1

    .line 2373
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist vmIncorrectContextUseEnabled()Z
    .registers 1

    .line 2394
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o vmRegistrationLeaksEnabled()Z
    .registers 1

    .line 2323
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o vmSqliteObjectLeaksEnabled()Z
    .registers 2

    .line 2303
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public static blacklist vmUnsafeIntentLaunchEnabled()Z
    .registers 1

    .line 2404
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o vmUntaggedSocketEnabled()Z
    .registers 1

    .line 2363
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static greylist-max-o writeGatheredViolationsToParcel(Landroid/os/Parcel;)V
    .registers 6

    .line 2750
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2751
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2752
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 2757
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2758
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2759
    move v3, v1

    :goto_1c
    if-ge v3, v2, :cond_2a

    .line 2760
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual {v4, p0, v1}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2759
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2763
    :cond_2a
    :goto_2a
    sget-object p0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2764
    return-void
.end method
