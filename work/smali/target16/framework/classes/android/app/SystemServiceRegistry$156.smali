.class Landroid/app/SystemServiceRegistry$156;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "TTServiceClass;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$serviceName:Ljava/lang/String;

.field final synthetic blacklist val$serviceProducer:Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;Ljava/lang/String;)V
    .registers 3

    .line 2412
    iput-object p1, p0, Landroid/app/SystemServiceRegistry$156;->val$serviceProducer:Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;

    iput-object p2, p0, Landroid/app/SystemServiceRegistry$156;->val$serviceName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TTServiceClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 2416
    iget-object v0, p0, Landroid/app/SystemServiceRegistry$156;->val$serviceProducer:Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;

    .line 2417
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Landroid/app/SystemServiceRegistry$156;->val$serviceName:Ljava/lang/String;

    .line 2418
    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2416
    invoke-interface {v0, p1, v1}, Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;->createService(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
