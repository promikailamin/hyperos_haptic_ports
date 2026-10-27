.class Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;
.super Landroid/companion/virtual/computercontrol/IAutomatedPackageListener$Stub;
.source "VirtualDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutomatedPackageListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/companion/virtual/computercontrol/AutomatedPackageListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$ItwxjWtOLNgnh4UWHkMYcKCI_Ww(Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;->lambda$onAutomatedPackagesChanged$0(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dFH7p0SUqxwsBD6b6zYKQkm9Kgw(Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;->lambda$onAutomatedPackagesChanged$1(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;)Landroid/companion/virtual/computercontrol/AutomatedPackageListener;
    .registers 1

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;->mListener:Landroid/companion/virtual/computercontrol/AutomatedPackageListener;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/computercontrol/AutomatedPackageListener;)V
    .registers 3

    .line 1561
    invoke-direct {p0}, Landroid/companion/virtual/computercontrol/IAutomatedPackageListener$Stub;-><init>()V

    .line 1562
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1563
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;->mListener:Landroid/companion/virtual/computercontrol/AutomatedPackageListener;

    .line 1564
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/computercontrol/AutomatedPackageListener;Landroid/companion/virtual/VirtualDeviceManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/computercontrol/AutomatedPackageListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$onAutomatedPackagesChanged$0(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 5

    .line 1572
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;->mListener:Landroid/companion/virtual/computercontrol/AutomatedPackageListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/virtual/computercontrol/AutomatedPackageListener;->onAutomatedPackagesChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onAutomatedPackagesChanged$1(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1572
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onAutomatedPackagesChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 1571
    new-instance v0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1574
    return-void
.end method
