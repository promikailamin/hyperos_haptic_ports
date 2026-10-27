.class Lcom/android/server/wm/Dimmer$DimAnimatable;
.super Ljava/lang/Object;
.source "Dimmer.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Dimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimAnimatable"
.end annotation


# instance fields
.field private mDimLayer:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/wm/Dimmer;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V
    .registers 3
    .param p2, "dimLayer"    # Landroid/view/SurfaceControl;

    .line 52
    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;Lcom/android/server/wm/Dimmer$DimAnimatable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Dimmer$DimAnimatable;-><init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V

    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    .line 69
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public getSurfaceWidth()I
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 73
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 77
    return-void
.end method

.method removeSurface()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 117
    invoke-virtual {p0}, Lcom/android/server/wm/Dimmer$DimAnimatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 119
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    .line 120
    return-void
.end method
