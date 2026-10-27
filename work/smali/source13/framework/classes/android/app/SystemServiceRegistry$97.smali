.class Landroid/app/SystemServiceRegistry$97;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
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

    .line 1154
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/view/contentcapture/ContentCaptureManager;
    .registers 7
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1159
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v0

    .line 1160
    .local v0, "outerContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v1

    .line 1162
    .local v1, "options":Landroid/content/ContentCaptureOptions;
    if-eqz v1, :cond_27

    iget-boolean v2, v1, Landroid/content/ContentCaptureOptions;->lite:Z

    if-nez v2, :cond_14

    invoke-virtual {v1, v0}, Landroid/content/ContentCaptureOptions;->isWhitelisted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1163
    :cond_14
    nop

    .line 1164
    const-string v2, "content_capture"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1165
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v3

    .line 1167
    .local v3, "service":Landroid/view/contentcapture/IContentCaptureManager;
    if-eqz v3, :cond_27

    .line 1168
    new-instance v4, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-direct {v4, v0, v3, v1}, Landroid/view/contentcapture/ContentCaptureManager;-><init>(Landroid/content/Context;Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    return-object v4

    .line 1173
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v3    # "service":Landroid/view/contentcapture/IContentCaptureManager;
    :cond_27
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1154
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$97;->createService(Landroid/app/ContextImpl;)Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object p1

    return-object p1
.end method
