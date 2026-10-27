.class public Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "RemoteWallpaperEffectsGenerationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;",
        "Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x7d0L


# instance fields
.field private final mCallback:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;ZZ)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callback"    # Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;
    .param p5, "bindInstantServiceAllowed"    # Z
    .param p6, "verbose"    # Z

    .line 50
    nop

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    .line 53
    if-eqz p5, :cond_a

    const/high16 v0, 0x400000

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move v7, v0

    const/4 v9, 0x1

    .line 50
    const-string v2, "android.service.wallpapereffectsgeneration.WallpaperEffectsGenerationService"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    .line 55
    move-object v1, p4

    iput-object v1, v0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->mCallback:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;

    .line 56
    return-void
.end method


# virtual methods
.method public executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "request":Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;, "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->executeAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 94
    return-void
.end method

.method protected getRemoteRequestMillis()J
    .registers 3

    .line 70
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method protected bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;

    move-result-object p1

    return-object p1
.end method

.method protected getServiceInterface(Landroid/os/IBinder;)Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 60
    invoke-static {p1}, Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeoutIdleBindMillis()J
    .registers 3

    .line 65
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected handleOnConnectedStateChanged(Z)V
    .registers 3
    .param p1, "connected"    # Z

    .line 109
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->mCallback:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;

    if-eqz v0, :cond_7

    .line 110
    invoke-interface {v0, p1}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;->onConnectedStateChanged(Z)V

    .line 112
    :cond_7
    return-void
.end method

.method public reconnect()V
    .registers 1

    .line 77
    invoke-super {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleBind()V

    .line 78
    return-void
.end method

.method public scheduleOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "request":Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;, "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 86
    return-void
.end method
