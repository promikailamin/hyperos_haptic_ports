.class Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser$MediaServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

.field final synthetic blacklist val$binder:Landroid/os/IBinder;

.field final synthetic blacklist val$name:Landroid/content/ComponentName;


# direct methods
.method constructor blacklist <init>(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1014
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->val$name:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 1025
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->-$$Nest$misCurrent(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1026
    return-void

    .line 1030
    :cond_b
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->val$binder:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/service/media/IMediaBrowserService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fputmServiceBinder(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserService;)V

    .line 1034
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v1, v1, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$mgetNewServiceCallbacks(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ServiceCallbacks;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fputmServiceCallbacks(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 1035
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fputmState(Landroid/media/browse/MediaBrowser;I)V

    .line 1044
    :try_start_2f
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceBinder(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v1, v1, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmContext(Landroid/media/browse/MediaBrowser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v2, v2, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmRootHints(Landroid/media/browse/MediaBrowser;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v3, v3, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceCallbacks(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/service/media/IMediaBrowserService;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_56} :catch_57

    .line 1056
    goto :goto_78

    .line 1046
    :catch_57
    move-exception v0

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException during connect for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v1, v1, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->-$$Nest$fgetmServiceComponent(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBrowser"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :goto_78
    return-void
.end method
