.class public interface abstract Landroid/hovermode/MiuiHoverModeStub;
.super Ljava/lang/Object;
.source "MiuiHoverModeStub.java"


# static fields
.field public static final blacklist sInstance:Landroid/hovermode/MiuiHoverModeStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    const-class v0, Landroid/hovermode/MiuiHoverModeStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hovermode/MiuiHoverModeStub;

    sput-object v0, Landroid/hovermode/MiuiHoverModeStub;->sInstance:Landroid/hovermode/MiuiHoverModeStub;

    return-void
.end method

.method public static blacklist get()Landroid/hovermode/MiuiHoverModeStub;
    .registers 1

    .line 19
    sget-object v0, Landroid/hovermode/MiuiHoverModeStub;->sInstance:Landroid/hovermode/MiuiHoverModeStub;

    return-object v0
.end method


# virtual methods
.method public blacklist isEnabled()Z
    .registers 2

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needInterceptDispatchSensorEvent(Landroid/hardware/Sensor;)Z
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 27
    const/4 v0, 0x0

    return v0
.end method
