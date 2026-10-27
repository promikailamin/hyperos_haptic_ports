.class public Lcom/android/server/lineage/display/LiveDisplayService$3;
.super Ljava/lang/Object;
.source "LiveDisplayService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/display/LiveDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/LiveDisplayService;)V
    .registers 2

    .line 390
    iput-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayService$3;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3

    if-nez p1, :cond_21

    .line 402
    iget-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayService$3;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p1}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$misScreenOn(Lcom/android/server/lineage/display/LiveDisplayService;)Z

    move-result p1

    .line 403
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$3;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmState(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/LiveDisplayService$State;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mScreenOn:Z

    if-eq p1, v0, :cond_21

    .line 404
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$3;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmState(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/LiveDisplayService$State;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mScreenOn:Z

    .line 405
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$3;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    sget p1, Lcom/android/server/lineage/display/LiveDisplayService;->DISPLAY_CHANGED:I

    invoke-static {p0, p1}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$mupdateFeatures(Lcom/android/server/lineage/display/LiveDisplayService;I)V

    :cond_21
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    .line 0
    return-void
.end method
