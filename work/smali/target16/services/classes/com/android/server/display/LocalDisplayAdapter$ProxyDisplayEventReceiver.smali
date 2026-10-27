.class public final Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "LocalDisplayAdapter.java"


# instance fields
.field public final mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 1640
    invoke-direct {p0, p1, v0, v1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;II)V

    .line 1644
    iput-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    return-void
.end method


# virtual methods
.method public onHdcpLevelsChanged(JII)V
    .registers 5

    .line 1669
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onHdcpLevelsChanged(JII)V

    return-void
.end method

.method public onHotplug(JJZ)V
    .registers 6

    .line 1649
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onHotplug(JJZ)V

    return-void
.end method

.method public onHotplugConnectionError(JI)V
    .registers 4

    .line 1654
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onHotplugConnectionError(JI)V

    return-void
.end method

.method public onModeAndFrameRateOverridesChanged(JJIJJJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;[F)V
    .registers 14

    .line 1662
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    invoke-interface/range {p0 .. p13}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onModeAndFrameRateOverridesChanged(JJIJJJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;[F)V

    return-void
.end method
