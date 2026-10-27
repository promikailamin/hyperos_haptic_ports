.class public interface abstract Landroid/app/ActivityThreadStub;
.super Ljava/lang/Object;
.source "ActivityThreadStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    }
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/app/ActivityThreadStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const-class v0, Landroid/app/ActivityThreadStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThreadStub;

    sput-object v0, Landroid/app/ActivityThreadStub;->INSTANCE:Landroid/app/ActivityThreadStub;

    return-void
.end method

.method public static whitelist get()Landroid/app/ActivityThreadStub;
    .registers 1

    .line 43
    sget-object v0, Landroid/app/ActivityThreadStub;->INSTANCE:Landroid/app/ActivityThreadStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist applyBoundsCompatIfNeeded(Landroid/view/DisplayInfo;Landroid/app/ActivityThread;)V
.end method

.method public abstract blacklist checkActivityLeak(Landroid/util/ArrayMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist checkScoutPersistentPackage(Ljava/lang/String;)Z
.end method

.method public abstract whitelist checkScoutStateOnInputEvent(I)V
.end method

.method public blacklist deliverResultsIfNeededForFreeform(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Z)Z
    .registers 5
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

    .line 101
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dumpLogText(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 93
    return-void
.end method

.method public abstract whitelist dumpPeriodHistoryMessage(JI)V
.end method

.method public blacklist enableDebugConfig(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 90
    return-void
.end method

.method public blacklist getFixedOrizationScale(Landroid/content/res/Configuration;F)F
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "defScale"    # F

    .line 98
    return p2
.end method

.method public blacklist getMiuiSizeCompatScale(Landroid/app/ActivityThread;F)F
    .registers 3
    .param p1, "thread"    # Landroid/app/ActivityThread;
    .param p2, "defScale"    # F

    .line 83
    return p2
.end method

.method public abstract blacklist handleBoundsCompatInfoChanged(Landroid/os/IBinder;ILandroid/graphics/Rect;FLandroid/app/ActivityThread;)V
.end method

.method public abstract blacklist handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;Landroid/app/ActivityThread;)V
.end method

.method public blacklist ignoreChangeForMiuiCompat(Landroid/app/ActivityThread$ActivityClientRecord;)I
    .registers 3
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist inMiuiSizeCompatMode(Landroid/app/ActivityThread;)Z
    .registers 3
    .param p1, "thread"    # Landroid/app/ActivityThread;

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist inMiuiSizeCompatScaleMode(Landroid/app/ActivityThread;)Z
    .registers 3
    .param p1, "thread"    # Landroid/app/ActivityThread;

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist initMiuiFreeDrag(Landroid/content/Context;)V
.end method

.method public abstract blacklist judgeSystemApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
.end method

.method public abstract blacklist performDestroyCompatActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
.end method

.method public abstract whitelist registerApplicationScoutThread(I)V
.end method

.method public abstract blacklist setTopActivityClient(Landroid/app/ActivityThread$ActivityClientRecord;)V
.end method

.method public abstract whitelist updateAppScoutStateMachineState(I)V
.end method

.method public blacklist updateBoundsCompatBounds(Landroid/graphics/Rect;Landroid/app/ActivityThread;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "thread"    # Landroid/app/ActivityThread;

    .line 74
    return-void
.end method
