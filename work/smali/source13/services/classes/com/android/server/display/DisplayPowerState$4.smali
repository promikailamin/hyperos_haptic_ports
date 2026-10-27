.class Lcom/android/server/display/DisplayPowerState$4;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerState;

    .line 388
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 391
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fputmScreenUpdatePending(Lcom/android/server/display/DisplayPowerState;Z)V

    .line 399
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmScreenState(Lcom/android/server/display/DisplayPowerState;)I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmColorFadeLevel(Lcom/android/server/display/DisplayPowerState;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmScreenBrightness(Lcom/android/server/display/DisplayPowerState;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmIsFoldable(Lcom/android/server/display/DisplayPowerState;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmCurtainAnimLevel(Lcom/android/server/display/DisplayPowerState;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3f

    .line 400
    :cond_38
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmScreenBrightness(Lcom/android/server/display/DisplayPowerState;)F

    move-result v0

    goto :goto_40

    :cond_3f
    move v0, v1

    .line 405
    .local v0, "brightnessState":F
    :goto_40
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmScreenState(Lcom/android/server/display/DisplayPowerState;)I

    move-result v4

    if-eq v4, v2, :cond_6b

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmColorFadeLevel(Lcom/android/server/display/DisplayPowerState;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_6b

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmIsFoldable(Lcom/android/server/display/DisplayPowerState;)Z

    move-result v4

    if-eqz v4, :cond_64

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmCurtainAnimLevel(Lcom/android/server/display/DisplayPowerState;)F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_6b

    .line 406
    :cond_64
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmSdrScreenBrightness(Lcom/android/server/display/DisplayPowerState;)F

    move-result v1

    goto :goto_6c

    :cond_6b
    nop

    .line 407
    .local v1, "sdrBrightnessState":F
    :goto_6c
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmPhotonicModulator(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmScreenState(Lcom/android/server/display/DisplayPowerState;)I

    move-result v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->setState(IFF)Z

    move-result v3

    const-string v4, "DisplayPowerState"

    if-eqz v3, :cond_96

    .line 408
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 409
    const-string v3, "Screen ready"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_8b
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v3, v2}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fputmScreenReady(Lcom/android/server/display/DisplayPowerState;Z)V

    .line 412
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$minvokeCleanListenerIfNeeded(Lcom/android/server/display/DisplayPowerState;)V

    goto :goto_a1

    .line 414
    :cond_96
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 415
    const-string v2, "Screen not ready"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_a1
    :goto_a1
    return-void
.end method
