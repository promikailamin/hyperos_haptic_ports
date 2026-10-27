.class public Lmiui/contentcatcher/IContentCatcherService$Default;
.super Ljava/lang/Object;
.source "IContentCatcherService.java"

# interfaces
.implements Lmiui/contentcatcher/IContentCatcherService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/IContentCatcherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist decorateContent(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/DecorateContentParam;)V
    .registers 4
    .param p1, "listenerToken"    # Lmiui/contentcatcher/sdk/ClientToken;
    .param p2, "targetInjectorToken"    # Lmiui/contentcatcher/sdk/Token;
    .param p3, "params"    # Lmiui/contentcatcher/sdk/DecorateContentParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public whitelist getPageConfig(Lmiui/contentcatcher/sdk/Token;)Lmiui/contentcatcher/sdk/data/PageConfig;
    .registers 3
    .param p1, "token"    # Lmiui/contentcatcher/sdk/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onContentCatched(Lmiui/contentcatcher/sdk/Content;)V
    .registers 2
    .param p1, "content"    # Lmiui/contentcatcher/sdk/Content;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public whitelist registerContentInjector(Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;)V
    .registers 3
    .param p1, "token"    # Lmiui/contentcatcher/sdk/Token;
    .param p2, "callback"    # Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public whitelist registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V
    .registers 3
    .param p1, "token"    # Lmiui/contentcatcher/sdk/ClientToken;
    .param p2, "callback"    # Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public whitelist unregisterContentInjector(Lmiui/contentcatcher/sdk/Token;)V
    .registers 2
    .param p1, "token"    # Lmiui/contentcatcher/sdk/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public whitelist unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V
    .registers 2
    .param p1, "token"    # Lmiui/contentcatcher/sdk/ClientToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public whitelist updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "jobTag"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public whitelist updateConfig([Ljava/lang/String;)V
    .registers 2
    .param p1, "configs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public whitelist updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "jobTag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method
