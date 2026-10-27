.class public Lcom/android/server/lineage/display/LiveDisplayService$4;
.super Ljava/lang/Object;
.source "LiveDisplayService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/display/LiveDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/LiveDisplayService;)V
    .registers 2

    .line 414
    iput-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayService$4;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .registers 3

    .line 417
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    .line 418
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$4;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmState(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/LiveDisplayService$State;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mLowPowerMode:Z

    if-eq p1, v0, :cond_1b

    .line 419
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$4;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmState(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/LiveDisplayService$State;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mLowPowerMode:Z

    .line 420
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$4;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    sget p1, Lcom/android/server/lineage/display/LiveDisplayService;->MODE_CHANGED:I

    invoke-static {p0, p1}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$mupdateFeatures(Lcom/android/server/lineage/display/LiveDisplayService;I)V

    :cond_1b
    return-void
.end method
