.class public Lcom/android/server/display/HighBrightnessModeController$Injector;
.super Ljava/lang/Object;
.source "HighBrightnessModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HighBrightnessModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClock()Lcom/android/server/display/DisplayManagerService$Clock;
    .registers 2

    .line 836
    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public getThermalService()Landroid/os/IThermalService;
    .registers 2

    .line 840
    nop

    .line 841
    const-string/jumbo v0, "thermalservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 840
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    return-object v0
.end method

.method public reportHbmStateChange(III)V
    .registers 5
    .param p1, "display"    # I
    .param p2, "state"    # I
    .param p3, "reason"    # I

    .line 845
    const/16 v0, 0x1a0

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 847
    return-void
.end method
