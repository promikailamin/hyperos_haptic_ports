.class public Lcom/android/server/lineage/display/LiveDisplayService$5;
.super Ljava/lang/Object;
.source "LiveDisplayService.java"

# interfaces
.implements Lcom/android/server/lineage/display/TwilightTracker$TwilightListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/display/LiveDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/LiveDisplayService;)V
    .registers 2

    .line 473
    iput-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayService$5;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTwilightStateChanged()V
    .registers 3

    .line 476
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$5;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmState(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/LiveDisplayService$State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService$5;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v1}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmTwilightTracker(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/TwilightTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lineage/display/TwilightTracker;->getCurrentState()Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    .line 477
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$5;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    sget v1, Lcom/android/server/lineage/display/LiveDisplayService;->TWILIGHT_CHANGED:I

    invoke-static {v0, v1}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$mupdateFeatures(Lcom/android/server/lineage/display/LiveDisplayService;I)V

    .line 478
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$5;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$mnudge(Lcom/android/server/lineage/display/LiveDisplayService;)V

    return-void
.end method
