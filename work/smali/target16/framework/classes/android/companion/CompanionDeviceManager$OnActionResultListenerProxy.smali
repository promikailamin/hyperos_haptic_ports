.class Landroid/companion/CompanionDeviceManager$OnActionResultListenerProxy;
.super Landroid/companion/IOnActionResultListener$Stub;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnActionResultListenerProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Landroid/companion/ActionResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$FQUP95WRaCxDzAzxiU5xEOnRFAU(Landroid/companion/CompanionDeviceManager$OnActionResultListenerProxy;ILandroid/companion/ActionResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$OnActionResultListenerProxy;->lambda$onActionResult$0(ILandroid/companion/ActionResult;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Landroid/companion/ActionResult;",
            ">;)V"
        }
    .end annotation

    .line 2453
    invoke-direct {p0}, Landroid/companion/IOnActionResultListener$Stub;-><init>()V

    .line 2454
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$OnActionResultListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2455
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$OnActionResultListenerProxy;->mListener:Ljava/util/function/BiConsumer;

    .line 2456
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;Landroid/companion/CompanionDeviceManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$OnActionResultListenerProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$onActionResult$0(ILandroid/companion/ActionResult;)V
    .registers 4

    .line 2460
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnActionResultListenerProxy;->mListener:Ljava/util/function/BiConsumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onActionResult(ILandroid/companion/ActionResult;)V
    .registers 5

    .line 2460
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnActionResultListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/CompanionDeviceManager$OnActionResultListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/companion/CompanionDeviceManager$OnActionResultListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceManager$OnActionResultListenerProxy;ILandroid/companion/ActionResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2461
    return-void
.end method
