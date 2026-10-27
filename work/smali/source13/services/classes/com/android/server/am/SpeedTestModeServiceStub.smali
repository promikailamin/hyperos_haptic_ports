.class public interface abstract Lcom/android/server/am/SpeedTestModeServiceStub;
.super Ljava/lang/Object;
.source "SpeedTestModeServiceStub.java"


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    nop

    .line 9
    const-string/jumbo v0, "persist.sys.miui_sptm.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/SpeedTestModeServiceStub;->DEBUG:Z

    .line 8
    return-void
.end method

.method public static get()Lcom/android/server/am/SpeedTestModeServiceStub;
    .registers 1

    .line 12
    const-class v0, Lcom/android/server/am/SpeedTestModeServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SpeedTestModeServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract getWindowStateAnimationScaleOverride()F
.end method

.method public abstract reportAppUsageEvents(ILjava/lang/String;)V
.end method

.method public abstract reportStartProcEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSPTModeEnabled(Z)V
.end method

.method public abstract updateHomeProcess(Ljava/lang/String;)V
.end method
