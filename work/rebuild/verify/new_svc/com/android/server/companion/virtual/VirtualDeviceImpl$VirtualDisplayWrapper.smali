.class public final Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
.super Ljava/lang/Object;
.source "VirtualDeviceImpl.java"


# instance fields
.field public final mDisplayId:I

.field public final mIsMirror:Z

.field public final mIsTrusted:Z

.field public final mToken:Landroid/hardware/display/IVirtualDisplayCallback;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;


# direct methods
.method public constructor <init>(Landroid/hardware/display/IVirtualDisplayCallback;ILcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/os/PowerManager$WakeLock;ZZ)V
    .registers 7

    .line 1823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1824
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/hardware/display/IVirtualDisplayCallback;

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 1825
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iput-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 1826
    iput-object p4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1827
    iput-boolean p5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsTrusted:Z

    .line 1828
    iput-boolean p6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsMirror:Z

    .line 1829
    iput p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .registers 2

    .line 1837
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1838
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_f
    return-void
.end method

.method public getDisplayId()I
    .registers 1

    .line 1861
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mDisplayId:I

    return p0
.end method

.method public getToken()Landroid/hardware/display/IVirtualDisplayCallback;
    .registers 1

    .line 1857
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    return-object p0
.end method

.method public getWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .registers 1

    .line 1833
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    return-object p0
.end method

.method public isMirror()Z
    .registers 1

    .line 1853
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsMirror:Z

    return p0
.end method

.method public isTrusted()Z
    .registers 1

    .line 1849
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsTrusted:Z

    return p0
.end method

.method public releaseWakeLock()V
    .registers 2

    .line 1843
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1844
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_f
    return-void
.end method
