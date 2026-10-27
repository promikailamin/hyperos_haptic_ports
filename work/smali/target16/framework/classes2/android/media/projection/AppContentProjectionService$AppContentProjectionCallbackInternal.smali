.class Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;
.super Landroid/media/projection/IAppContentProjectionCallback$Stub;
.source "AppContentProjectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/AppContentProjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppContentProjectionCallbackInternal"
.end annotation


# instance fields
.field private blacklist mSession:Landroid/media/projection/AppContentProjectionSession;

.field final synthetic blacklist this$0:Landroid/media/projection/AppContentProjectionService;


# direct methods
.method private constructor blacklist <init>(Landroid/media/projection/AppContentProjectionService;Landroid/os/PermissionEnforcer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;->this$0:Landroid/media/projection/AppContentProjectionService;

    .line 91
    invoke-direct {p0, p2}, Landroid/media/projection/IAppContentProjectionCallback$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 92
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/projection/AppContentProjectionService;Landroid/os/PermissionEnforcer;Landroid/media/projection/AppContentProjectionService-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;-><init>(Landroid/media/projection/AppContentProjectionService;Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method static synthetic blacklist lambda$onContentRequest$0(Landroid/os/RemoteCallback;[Landroid/media/projection/MediaProjectionAppContent;)V
    .registers 4

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    const-string v1, "extra_app_content"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 103
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method


# virtual methods
.method public blacklist onContentRequest(Landroid/os/RemoteCallback;II)V
    .registers 7

    .line 97
    invoke-virtual {p0}, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;->onContentRequest_enforcePermission()V

    .line 98
    iget-object v0, p0, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;->this$0:Landroid/media/projection/AppContentProjectionService;

    new-instance v1, Landroid/media/projection/AppContentRequest;

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, p2, p3}, Landroid/util/Size;-><init>(II)V

    new-instance p2, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal$$ExternalSyntheticLambda0;-><init>(Landroid/os/RemoteCallback;)V

    invoke-direct {v1, v2, p2}, Landroid/media/projection/AppContentRequest;-><init>(Landroid/util/Size;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/media/projection/AppContentProjectionService;->onContentRequest(Landroid/media/projection/AppContentRequest;)V

    .line 105
    return-void
.end method

.method public blacklist onContentRequestCanceled()V
    .registers 2

    .line 133
    invoke-virtual {p0}, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;->onContentRequestCanceled_enforcePermission()V

    .line 134
    iget-object v0, p0, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;->this$0:Landroid/media/projection/AppContentProjectionService;

    invoke-virtual {v0}, Landroid/media/projection/AppContentProjectionService;->onContentRequestCanceled()V

    .line 135
    return-void
.end method

.method public blacklist onLoopbackProjectionStarted(Landroid/media/projection/IAppContentProjectionSession;I)V
    .registers 4

    .line 111
    invoke-virtual {p0}, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;->onLoopbackProjectionStarted_enforcePermission()V

    .line 112
    iget-object v0, p0, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;->mSession:Landroid/media/projection/AppContentProjectionSession;

    if-nez v0, :cond_16

    .line 116
    new-instance v0, Landroid/media/projection/AppContentProjectionSession;

    invoke-direct {v0, p1}, Landroid/media/projection/AppContentProjectionSession;-><init>(Landroid/media/projection/IAppContentProjectionSession;)V

    iput-object v0, p0, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;->mSession:Landroid/media/projection/AppContentProjectionSession;

    .line 117
    iget-object p1, p0, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;->this$0:Landroid/media/projection/AppContentProjectionService;

    iget-object v0, p0, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;->mSession:Landroid/media/projection/AppContentProjectionSession;

    invoke-virtual {p1, v0, p2}, Landroid/media/projection/AppContentProjectionService;->onLoopbackProjectionStarted(Landroid/media/projection/AppContentProjectionSession;I)Z

    .line 120
    return-void

    .line 113
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only one single AppContentProjectionSession is supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist onSessionStopped()V
    .registers 3

    .line 125
    invoke-virtual {p0}, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;->onSessionStopped_enforcePermission()V

    .line 126
    iget-object v0, p0, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;->this$0:Landroid/media/projection/AppContentProjectionService;

    iget-object v1, p0, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;->mSession:Landroid/media/projection/AppContentProjectionSession;

    invoke-virtual {v0, v1}, Landroid/media/projection/AppContentProjectionService;->onSessionStopped(Landroid/media/projection/AppContentProjectionSession;)V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;->mSession:Landroid/media/projection/AppContentProjectionSession;

    .line 128
    return-void
.end method
