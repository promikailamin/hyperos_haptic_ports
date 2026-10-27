.class public Landroid/os/perfdebug/PerfDebugMonitor;
.super Ljava/lang/Object;
.source "PerfDebugMonitor.java"


# static fields
.field public static final blacklist DEBUG:Z = false

.field public static final blacklist THRESHOLD_BOOST_FRAMEWORK_OPER_MS:I = 0x14

.field public static final blacklist THRESHOLD_FILE_SYNC_MS:I = 0x64

.field public static final blacklist THRESHOLD_QUEUED_WORK_OPER_MS:I = 0x64


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/os/perfdebug/PerfDebugMonitor;
    .registers 1

    .line 14
    const-class v0, Landroid/os/perfdebug/PerfDebugMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/PerfDebugMonitor;

    return-object v0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .line 33
    return-void
.end method

.method public blacklist isEnableTraceBinder()Z
    .registers 2

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist prepareMonitor()V
    .registers 1

    .line 26
    return-void
.end method
