.class Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;
.super Landroid/companion/IAssociationRequestCallback$Stub;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssociationRequestCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/CompanionDeviceManager$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method private constructor blacklist <init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;)V
    .registers 3

    .line 2324
    invoke-direct {p0}, Landroid/companion/IAssociationRequestCallback$Stub;-><init>()V

    .line 2325
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 2326
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2327
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    .line 2328
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;Landroid/companion/CompanionDeviceManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;-><init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V
    .registers 3

    .line 2317
    invoke-direct {p0}, Landroid/companion/IAssociationRequestCallback$Stub;-><init>()V

    .line 2318
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2319
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 2320
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    .line 2321
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;Landroid/companion/CompanionDeviceManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V

    return-void
.end method

.method private blacklist execute(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "TT;TU;>;TT;TU;)V"
        }
    .end annotation

    .line 2355
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_e

    .line 2356
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2358
    :cond_e
    return-void
.end method

.method private blacklist execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 2347
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_f

    .line 2348
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1d

    .line 2349
    :cond_f
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1d

    .line 2350
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2352
    :cond_1d
    :goto_1d
    return-void
.end method

.method static synthetic blacklist lambda$execute$0(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 2

    .line 2348
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$execute$1(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 2

    .line 2350
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$execute$2(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 2356
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onAssociationCreated(Landroid/companion/AssociationInfo;)V
    .registers 4

    .line 2337
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-direct {p0, v1, p1}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 2338
    return-void
.end method

.method public blacklist onAssociationPending(Landroid/app/PendingIntent;)V
    .registers 4

    .line 2332
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 2333
    return-void
.end method

.method public blacklist onFailure(ILjava/lang/CharSequence;)V
    .registers 5

    .line 2342
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda5;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2343
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda6;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-direct {p0, v0, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 2344
    return-void
.end method
