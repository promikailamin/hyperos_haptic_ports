.class Landroid/app/SystemServiceRegistry$151;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SystemServiceRegistry;->registerServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/security/intrusiondetection/IntrusionDetectionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1917
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/security/intrusiondetection/IntrusionDetectionManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1921
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->aflApi()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1925
    const-string p1, "intrusion_detection"

    invoke-static {p1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 1927
    nop

    .line 1928
    invoke-static {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionService;

    move-result-object p1

    .line 1929
    new-instance v0, Landroid/security/intrusiondetection/IntrusionDetectionManager;

    invoke-direct {v0, p1}, Landroid/security/intrusiondetection/IntrusionDetectionManager;-><init>(Landroid/security/intrusiondetection/IIntrusionDetectionService;)V

    return-object v0

    .line 1922
    :cond_17
    new-instance p1, Landroid/os/ServiceManager$ServiceNotFoundException;

    const-string v0, "Intrusion Detection is not supported"

    invoke-direct {p1, v0}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1917
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$151;->createService(Landroid/app/ContextImpl;)Landroid/security/intrusiondetection/IntrusionDetectionManager;

    move-result-object p1

    return-object p1
.end method
