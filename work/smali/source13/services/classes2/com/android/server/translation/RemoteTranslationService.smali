.class final Lcom/android/server/translation/RemoteTranslationService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteTranslationService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/translation/ITranslationService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_IDLE_UNBIND_MS:J = 0x0L

.field private static final TIMEOUT_REQUEST_MS:I = 0x1388


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mIdleUnbindTimeoutMs:J

.field private final mRemoteCallback:Landroid/os/IBinder;

.field private final mRequestTimeoutMs:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/android/server/translation/RemoteTranslationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/translation/RemoteTranslationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IZLandroid/os/IBinder;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "bindInstantServiceAllowed"    # Z
    .param p5, "callback"    # Landroid/os/IBinder;

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.translation.TranslationService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 54
    if-eqz p4, :cond_10

    const/high16 v0, 0x400000

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    move v5, v0

    new-instance v7, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;-><init>()V

    .line 52
    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/translation/RemoteTranslationService;->mIdleUnbindTimeoutMs:J

    .line 57
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/translation/RemoteTranslationService;->mRequestTimeoutMs:I

    .line 58
    iput-object p2, p0, Lcom/android/server/translation/RemoteTranslationService;->mComponentName:Landroid/content/ComponentName;

    .line 59
    iput-object p5, p0, Lcom/android/server/translation/RemoteTranslationService;->mRemoteCallback:Landroid/os/IBinder;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/translation/RemoteTranslationService;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 62
    return-void
.end method

.method static synthetic lambda$onSessionCreated$0(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;Landroid/service/translation/ITranslationService;)V
    .registers 4
    .param p0, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p1, "sessionId"    # I
    .param p2, "resultReceiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p3, "s"    # Landroid/service/translation/ITranslationService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-interface {p3, p0, p1, p2}, Landroid/service/translation/ITranslationService;->onCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method static synthetic lambda$onTranslationCapabilitiesRequest$1(IILandroid/os/ResultReceiver;Landroid/service/translation/ITranslationService;)V
    .registers 4
    .param p0, "sourceFormat"    # I
    .param p1, "targetFormat"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "s"    # Landroid/service/translation/ITranslationService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-interface {p3, p0, p1, p2}, Landroid/service/translation/ITranslationService;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V

    return-void
.end method


# virtual methods
.method protected getAutoDisconnectTimeoutMs()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/android/server/translation/RemoteTranslationService;->mIdleUnbindTimeoutMs:J

    return-wide v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/server/translation/RemoteTranslationService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3

    .line 35
    check-cast p1, Landroid/service/translation/ITranslationService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/translation/RemoteTranslationService;->onServiceConnectionStatusChanged(Landroid/service/translation/ITranslationService;Z)V

    return-void
.end method

.method protected onServiceConnectionStatusChanged(Landroid/service/translation/ITranslationService;Z)V
    .registers 7
    .param p1, "service"    # Landroid/service/translation/ITranslationService;
    .param p2, "connected"    # Z

    .line 72
    if-eqz p2, :cond_8

    .line 73
    :try_start_2
    iget-object v0, p0, Lcom/android/server/translation/RemoteTranslationService;->mRemoteCallback:Landroid/os/IBinder;

    invoke-interface {p1, v0}, Landroid/service/translation/ITranslationService;->onConnected(Landroid/os/IBinder;)V

    goto :goto_b

    .line 75
    :cond_8
    invoke-interface {p1}, Landroid/service/translation/ITranslationService;->onDisconnected()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    .line 80
    :goto_b
    goto :goto_2b

    .line 77
    :catch_c
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/translation/RemoteTranslationService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception calling onServiceConnectionStatusChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .registers 5
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p2, "sessionId"    # I
    .param p3, "resultReceiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 90
    new-instance v0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda0;-><init>(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {p0, v0}, Lcom/android/server/translation/RemoteTranslationService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 91
    return-void
.end method

.method public onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 96
    new-instance v0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;-><init>(IILandroid/os/ResultReceiver;)V

    invoke-virtual {p0, v0}, Lcom/android/server/translation/RemoteTranslationService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 97
    return-void
.end method
