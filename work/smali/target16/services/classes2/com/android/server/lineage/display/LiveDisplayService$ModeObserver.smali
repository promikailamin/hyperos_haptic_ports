.class public final Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;
.super Lcom/android/server/lineage/common/UserContentObserver;
.source "LiveDisplayService.java"


# instance fields
.field public final MODE_SETTING:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/lineage/display/LiveDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/LiveDisplayService;Landroid/os/Handler;)V
    .registers 5

    .line 436
    iput-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    .line 437
    invoke-direct {p0, p2}, Lcom/android/server/lineage/common/UserContentObserver;-><init>(Landroid/os/Handler;)V

    .line 433
    const-string p2, "display_temperature_mode"

    .line 434
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;->MODE_SETTING:Landroid/net/Uri;

    .line 439
    invoke-static {p1}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 440
    invoke-virtual {p1, p2, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 442
    invoke-virtual {p0}, Lcom/android/server/lineage/common/UserContentObserver;->observe()V

    return-void
.end method


# virtual methods
.method public getMode()I
    .registers 3

    .line 456
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmConfig(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Lcom/android/internal/lineage/hardware/LiveDisplayConfig;->getDefaultMode()I

    move-result v0

    .line 456
    const-string v1, "display_temperature_mode"

    invoke-static {p0, v1, v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$mgetInt(Lcom/android/server/lineage/display/LiveDisplayService;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setMode(I)Z
    .registers 4

    .line 461
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmConfig(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/lineage/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-ltz p1, :cond_2b

    const/4 v0, 0x4

    if-gt p1, v0, :cond_2b

    .line 462
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    const-string v1, "display_temperature_mode"

    invoke-static {v0, v1, p1}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$mputInt(Lcom/android/server/lineage/display/LiveDisplayService;Ljava/lang/String;I)V

    .line 463
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmConfig(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/lineage/hardware/LiveDisplayConfig;->getDefaultMode()I

    move-result v0

    if-eq p1, v0, :cond_29

    .line 464
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$mstopNudgingMe(Lcom/android/server/lineage/display/LiveDisplayService;)V

    :cond_29
    const/4 p0, 0x1

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public update()V
    .registers 3

    .line 447
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;->getMode()I

    move-result v0

    .line 448
    iget-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v1}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmState(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/LiveDisplayService$State;

    move-result-object v1

    iget v1, v1, Lcom/android/server/lineage/display/LiveDisplayService$State;->mMode:I

    if-eq v0, v1, :cond_1d

    .line 449
    iget-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v1}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmState(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/LiveDisplayService$State;

    move-result-object v1

    iput v0, v1, Lcom/android/server/lineage/display/LiveDisplayService$State;->mMode:I

    .line 451
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    sget v0, Lcom/android/server/lineage/display/LiveDisplayService;->MODE_CHANGED:I

    invoke-static {p0, v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$mupdateFeatures(Lcom/android/server/lineage/display/LiveDisplayService;I)V

    :cond_1d
    return-void
.end method
