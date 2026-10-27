.class public Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Default;
.super Ljava/lang/Object;
.source "IContentListenerCallback.java"

# interfaces
.implements Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;
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

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onContentReceived(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V
    .registers 2
    .param p1, "content"    # Lmiui/contentcatcher/sdk/ClientCatcherResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
