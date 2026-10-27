.class Landroid/companion/CompanionDeviceService$Stub;
.super Landroid/companion/ICompanionDeviceService$Stub;
.source "CompanionDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stub"
.end annotation


# instance fields
.field final blacklist mMainHandler:Landroid/os/Handler;

.field final blacklist mService:Landroid/companion/CompanionDeviceService;

.field final synthetic blacklist this$0:Landroid/companion/CompanionDeviceService;


# direct methods
.method public static synthetic blacklist $r8$lambda$N5I0CPH_9FJCzsOirPWNKVL7u4U(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceService$Stub;->lambda$onActionRequested$3(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_PToNIwkn8qIb7_5mA2pDh0ujm0(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceService$Stub;->lambda$onDeviceDisappeared$1(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ak1Y5EIsPkG9Ip-N37Wca-oP6mI(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceService$Stub;->lambda$onDeviceAppeared$0(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$f4QlPLzTpJh_CFx2pTDRMt5iopc(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/DevicePresenceEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceService$Stub;->lambda$onDevicePresenceEvent$2(Landroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/companion/CompanionDeviceService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 332
    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub;->this$0:Landroid/companion/CompanionDeviceService;

    invoke-direct {p0}, Landroid/companion/ICompanionDeviceService$Stub;-><init>()V

    .line 333
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    .line 334
    iget-object p1, p0, Landroid/companion/CompanionDeviceService$Stub;->this$0:Landroid/companion/CompanionDeviceService;

    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/companion/CompanionDeviceService;Landroid/companion/CompanionDeviceService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceService$Stub;-><init>(Landroid/companion/CompanionDeviceService;)V

    return-void
.end method

.method private synthetic blacklist lambda$onActionRequested$3(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V
    .registers 4

    .line 358
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1, p2}, Landroid/companion/CompanionDeviceService;->onActionRequested(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDeviceAppeared$0(Landroid/companion/AssociationInfo;)V
    .registers 3

    .line 338
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceService;->onDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDeviceDisappeared$1(Landroid/companion/AssociationInfo;)V
    .registers 3

    .line 343
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceService;->onDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDevicePresenceEvent$2(Landroid/companion/DevicePresenceEvent;)V
    .registers 3

    .line 349
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceService;->onDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V

    return-void
.end method


# virtual methods
.method public blacklist onActionRequested(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V
    .registers 5

    .line 356
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->enableDataSync()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 357
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda3;-><init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 360
    :cond_10
    return-void
.end method

.method public blacklist onDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .registers 4

    .line 338
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda2;-><init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method

.method public blacklist onDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .registers 4

    .line 343
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 344
    return-void
.end method

.method public blacklist onDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V
    .registers 4

    .line 348
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 349
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/DevicePresenceEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 351
    :cond_10
    return-void
.end method
