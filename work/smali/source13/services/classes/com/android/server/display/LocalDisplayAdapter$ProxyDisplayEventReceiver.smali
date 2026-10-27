.class public final Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProxyDisplayEventReceiver"
.end annotation


# instance fields
.field private final mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "listener"    # Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    .line 1439
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;II)V

    .line 1442
    iput-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    .line 1443
    return-void
.end method


# virtual methods
.method public onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .registers 12
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "overrides"    # [Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 1458
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V

    .line 1459
    return-void
.end method

.method public onHotplug(JJZ)V
    .registers 12
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "connected"    # Z

    .line 1447
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onHotplug(JJZ)V

    .line 1448
    return-void
.end method

.method public onModeChanged(JJI)V
    .registers 12
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "modeId"    # I

    .line 1452
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onModeChanged(JJI)V

    .line 1453
    return-void
.end method
