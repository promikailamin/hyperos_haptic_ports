.class Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;
.super Landroid/companion/IOnTransportEventListener$Stub;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnTransportEventListenerProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$Wl3WkJAtLghMpE6jZ8AClGgbOYs(Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;->lambda$onTransportEvent$0(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;->mListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2418
    invoke-direct {p0}, Landroid/companion/IOnTransportEventListener$Stub;-><init>()V

    .line 2419
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2420
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;->mListener:Ljava/util/function/Consumer;

    .line 2421
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/companion/CompanionDeviceManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTransportEvent$0(I)V
    .registers 3

    .line 2425
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;->mListener:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onTransportEvent(I)V
    .registers 4

    .line 2425
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2426
    return-void
.end method
