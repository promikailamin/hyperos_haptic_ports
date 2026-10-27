.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Landroid/hardware/input/VirtualNavigationTouchpadConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualNavigationTouchpadConfig;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda8;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda8;->f$2:Landroid/hardware/input/VirtualNavigationTouchpadConfig;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda8;->f$1:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda8;->f$2:Landroid/hardware/input/VirtualNavigationTouchpadConfig;

    invoke-static {v0, v1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->$r8$lambda$u-bw18Q0Ev_GTM2wa3JlUx3Y4Ms(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/os/IBinder;Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p0

    return-object p0
.end method
