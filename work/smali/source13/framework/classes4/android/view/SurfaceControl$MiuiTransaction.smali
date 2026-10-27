.class public final Landroid/view/SurfaceControl$MiuiTransaction;
.super Landroid/view/SurfaceControl$Transaction;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MiuiTransaction"
.end annotation


# instance fields
.field private blacklist mNativeObject:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 4803
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4804
    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$smnativeCreateMiuiTransaction()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mNativeObject:J

    .line 4805
    sget-object v0, Landroid/view/SurfaceControl$MiuiTransaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mNativeObject:J

    .line 4806
    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 4807
    return-void
.end method


# virtual methods
.method public whitelist apply()V
    .registers 2

    .line 4836
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$MiuiTransaction;->apply(Z)V

    .line 4837
    return-void
.end method

.method public whitelist apply(Z)V
    .registers 4
    .param p1, "sync"    # Z

    .line 4841
    iget-wide v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeApplyMiuiTransaction(JZ)V

    .line 4842
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 4846
    iget-object v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4847
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mNativeObject:J

    .line 4848
    return-void
.end method

.method public whitelist setDiffScreenProjection(Landroid/os/IBinder;Z)Landroid/view/SurfaceControl$MiuiTransaction;
    .registers 5
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "isScreenProjection"    # Z

    .line 4811
    if-eqz p1, :cond_8

    .line 4814
    iget-wide v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDiffScreenProjection(JLandroid/os/IBinder;I)V

    .line 4815
    return-object p0

    .line 4812
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLastFrame(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$MiuiTransaction;
    .registers 10
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "enable"    # Z

    .line 4828
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    .line 4829
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v6

    .line 4830
    .local v6, "displayToken":Landroid/os/IBinder;
    iget-wide v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-object v4, v6

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetLastFrame(JJLandroid/os/IBinder;Z)V

    .line 4831
    return-object p0
.end method

.method public whitelist setMiuiCastMode(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$MiuiTransaction;
    .registers 10
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "enable"    # Z

    .line 4820
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    .line 4821
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v6

    .line 4822
    .local v6, "displayToken":Landroid/os/IBinder;
    iget-wide v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-object v4, v6

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetCastMode(JJLandroid/os/IBinder;Z)V

    .line 4823
    return-object p0
.end method
