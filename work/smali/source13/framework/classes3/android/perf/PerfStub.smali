.class public interface abstract Landroid/perf/PerfStub;
.super Ljava/lang/Object;
.source "PerfStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/perf/PerfStub$WorkloadType;,
        Landroid/perf/PerfStub$Draw;,
        Landroid/perf/PerfStub$Launch;,
        Landroid/perf/PerfStub$Scroll;
    }
.end annotation


# static fields
.field public static final blacklist MPCTLV3_GPU_IS_APP_BG:I = 0x42824000

.field public static final blacklist MPCTLV3_GPU_IS_APP_FG:I = 0x42820000

.field public static final blacklist UXE_EVENT_BINDAPP:I = 0x2

.field public static final blacklist UXE_EVENT_DISPLAYED_ACT:I = 0x3

.field public static final blacklist UXE_EVENT_GAME:I = 0x5

.field public static final blacklist UXE_EVENT_KILL:I = 0x4

.field public static final blacklist UXE_EVENT_PKG_INSTALL:I = 0x8

.field public static final blacklist UXE_EVENT_PKG_UNINSTALL:I = 0x7

.field public static final blacklist UXE_EVENT_SUB_LAUNCH:I = 0x6

.field public static final blacklist UXE_TRIGGER:I = 0x1

.field public static final blacklist VENDOR_FEEDBACK_LAUNCH_END_POINT:I = 0x1602

.field public static final blacklist VENDOR_FEEDBACK_WORKLOAD_TYPE:I = 0x1601

.field public static final blacklist VENDOR_HINT_ACTIVITY_BOOST:I = 0x1084

.field public static final blacklist VENDOR_HINT_ANIM_BOOST:I = 0x1083

.field public static final blacklist VENDOR_HINT_APP_UPDATE:I = 0x1092

.field public static final blacklist VENDOR_HINT_BOOST_RENDERTHREAD:I = 0x1096

.field public static final blacklist VENDOR_HINT_DRAG_BOOST:I = 0x1087

.field public static final blacklist VENDOR_HINT_DRAG_END:I = 0x1052

.field public static final blacklist VENDOR_HINT_DRAG_START:I = 0x1051

.field public static final blacklist VENDOR_HINT_FIRST_DRAW:I = 0x1042

.field public static final blacklist VENDOR_HINT_FIRST_LAUNCH_BOOST:I = 0x1081

.field public static final blacklist VENDOR_HINT_KILL:I = 0x1093

.field public static final blacklist VENDOR_HINT_MTP_BOOST:I = 0x1086

.field public static final blacklist VENDOR_HINT_PACKAGE_INSTALL_BOOST:I = 0x1088

.field public static final blacklist VENDOR_HINT_PERFORMANCE_MODE:I = 0x1091

.field public static final blacklist VENDOR_HINT_ROTATION_ANIM_BOOST:I = 0x1090

.field public static final blacklist VENDOR_HINT_ROTATION_LATENCY_BOOST:I = 0x1089

.field public static final blacklist VENDOR_HINT_SCROLL_BOOST:I = 0x1080

.field public static final blacklist VENDOR_HINT_SUBSEQ_LAUNCH_BOOST:I = 0x1082

.field public static final blacklist VENDOR_HINT_TAP_EVENT:I = 0x1043

.field public static final blacklist VENDOR_HINT_TOUCH_BOOST:I = 0x1085

.field public static final blacklist sInstance:Landroid/perf/PerfStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 8
    const-class v0, Landroid/perf/PerfStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/perf/PerfStub;

    sput-object v0, Landroid/perf/PerfStub;->sInstance:Landroid/perf/PerfStub;

    return-void
.end method

.method public static blacklist getInstance()Landroid/perf/PerfStub;
    .registers 1

    .line 11
    sget-object v0, Landroid/perf/PerfStub;->sInstance:Landroid/perf/PerfStub;

    return-object v0
.end method

.method public static blacklist newInstance()Landroid/perf/PerfStub;
    .registers 1

    .line 15
    const-class v0, Landroid/perf/PerfStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/perf/PerfStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist perfActivityLaunchBoost(Ljava/lang/String;II)I
.end method

.method public abstract blacklist perfAnimBoost(Ljava/lang/String;)I
.end method

.method public abstract blacklist perfAppUpdateBoost(Ljava/lang/String;II)I
.end method

.method public abstract blacklist perfColdLaunchBoost(Ljava/lang/String;II)I
.end method

.method public abstract blacklist perfDisplayRotationAnimBoost(Ljava/lang/String;)I
.end method

.method public abstract blacklist perfDisplayRotationLatencyBoost(Ljava/lang/String;)I
.end method

.method public abstract blacklist perfDragBoost(Ljava/lang/String;II)I
.end method

.method public abstract blacklist perfFirstDrawBoost(Ljava/lang/String;II)I
.end method

.method public abstract blacklist perfGetFeedback(ILjava/lang/String;)I
.end method

.method public abstract blacklist perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist perfGetWorkLoadType(Ljava/lang/String;)I
.end method

.method public abstract blacklist perfHint(ILjava/lang/String;II)I
.end method

.method public abstract blacklist perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public varargs abstract blacklist perfLockAcqAndRelease(IIII[I)I
.end method

.method public varargs abstract blacklist perfLockAcquire(I[I)I
.end method

.method public abstract blacklist perfLockRelease()I
.end method

.method public abstract blacklist perfLockReleaseHandler(I)I
.end method

.method public abstract blacklist perfMTPBoost(Ljava/lang/String;II)I
.end method

.method public abstract blacklist perfPackageInstallBoost(Ljava/lang/String;II)I
.end method

.method public abstract blacklist perfPerformanceModeBoost(Ljava/lang/String;II)I
.end method

.method public abstract blacklist perfProcessKillBoost(Ljava/lang/String;II)I
.end method

.method public abstract blacklist perfRenderThreadBoost(Ljava/lang/String;II)I
.end method

.method public abstract blacklist perfScrollBoost(Ljava/lang/String;II)I
.end method

.method public abstract blacklist perfTapBoost()I
.end method

.method public abstract blacklist perfTouchBoost()I
.end method

.method public abstract blacklist perfUXEngine_events(IILjava/lang/String;I)I
.end method

.method public abstract blacklist perfUXEngine_events(IILjava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract blacklist perfWarmLaunchBoost(Ljava/lang/String;II)I
.end method
