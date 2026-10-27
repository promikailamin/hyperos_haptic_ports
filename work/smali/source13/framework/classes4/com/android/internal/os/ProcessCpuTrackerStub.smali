.class public Lcom/android/internal/os/ProcessCpuTrackerStub;
.super Ljava/lang/Object;
.source "ProcessCpuTrackerStub.java"


# static fields
.field private static final blacklist sInstance:Lcom/android/internal/os/ProcessCpuTrackerStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6
    const-class v0, Lcom/android/internal/os/ProcessCpuTrackerStub;

    .line 7
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTrackerStub;

    sput-object v0, Lcom/android/internal/os/ProcessCpuTrackerStub;->sInstance:Lcom/android/internal/os/ProcessCpuTrackerStub;

    .line 6
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/os/ProcessCpuTrackerStub;
    .registers 1

    .line 10
    sget-object v0, Lcom/android/internal/os/ProcessCpuTrackerStub;->sInstance:Lcom/android/internal/os/ProcessCpuTrackerStub;

    return-object v0
.end method


# virtual methods
.method public blacklist isDisableThread(Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 4
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "tst"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 14
    const/4 v0, 0x0

    return v0
.end method
