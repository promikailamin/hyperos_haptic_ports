.class Landroid/companion/CompanionDeviceManager$OnDevicePresenceEventListenerProxy;
.super Landroid/companion/IOnDevicePresenceEventListener$Stub;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnDevicePresenceEventListenerProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/companion/DevicePresenceEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$SZIesuvc2SKBeA593YbaMGz4dc4(Landroid/companion/CompanionDeviceManager$OnDevicePresenceEventListenerProxy;Landroid/companion/DevicePresenceEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceManager$OnDevicePresenceEventListenerProxy;->lambda$onDevicePresence$0(Landroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/companion/DevicePresenceEvent;",
            ">;)V"
        }
    .end annotation

    .line 2435
    invoke-direct {p0}, Landroid/companion/IOnDevicePresenceEventListener$Stub;-><init>()V

    .line 2436
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$OnDevicePresenceEventListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2437
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$OnDevicePresenceEventListenerProxy;->mListener:Ljava/util/function/Consumer;

    .line 2438
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/companion/CompanionDeviceManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$OnDevicePresenceEventListenerProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDevicePresence$0(Landroid/companion/DevicePresenceEvent;)V
    .registers 3

    .line 2442
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnDevicePresenceEventListenerProxy;->mListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onDevicePresence(Landroid/companion/DevicePresenceEvent;)V
    .registers 4

    .line 2442
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnDevicePresenceEventListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/CompanionDeviceManager$OnDevicePresenceEventListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceManager$OnDevicePresenceEventListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceManager$OnDevicePresenceEventListenerProxy;Landroid/companion/DevicePresenceEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2443
    return-void
.end method
