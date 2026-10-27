.class public final synthetic Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/util/List;

.field public final synthetic blacklist f$3:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;

    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput-object p4, p0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate$$ExternalSyntheticLambda1;->f$3:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate$$ExternalSyntheticLambda1;->f$3:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2, v3}, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;->$r8$lambda$dFH7p0SUqxwsBD6b6zYKQkm9Kgw(Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method
