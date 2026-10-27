.class Landroid/app/SystemServiceRegistry$104;
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
        "Landroid/view/contentcapture/ContentCaptureManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1382
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/view/contentcapture/ContentCaptureManager;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1387
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object p1

    .line 1388
    invoke-virtual {p1}, Landroid/content/Context;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v0

    .line 1390
    if-eqz v0, :cond_27

    iget-boolean v1, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-nez v1, :cond_14

    invoke-virtual {v0, p1}, Landroid/content/ContentCaptureOptions;->isWhitelisted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1391
    :cond_14
    nop

    .line 1392
    const-string v1, "content_capture"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1393
    invoke-static {v1}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v1

    .line 1395
    if-eqz v1, :cond_27

    .line 1396
    new-instance v2, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-direct {v2, p1, v1, v0}, Landroid/view/contentcapture/ContentCaptureManager;-><init>(Landroid/content/Context;Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    return-object v2

    .line 1401
    :cond_27
    const/4 p1, 0x0

    return-object p1
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

    .line 1382
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$104;->createService(Landroid/app/ContextImpl;)Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object p1

    return-object p1
.end method
