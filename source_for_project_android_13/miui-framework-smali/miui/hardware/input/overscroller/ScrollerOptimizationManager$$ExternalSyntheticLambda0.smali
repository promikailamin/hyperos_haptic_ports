.class public final synthetic Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;


# instance fields
.field public final synthetic blacklist f$0:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$$ExternalSyntheticLambda0;->f$0:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    iput-object p2, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist onScrollerOptimizationConfig([Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$$ExternalSyntheticLambda0;->f$0:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    iget-object v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->lambda$initAppOptimizationConfig$0$miui-hardware-input-overscroller-ScrollerOptimizationManager(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
