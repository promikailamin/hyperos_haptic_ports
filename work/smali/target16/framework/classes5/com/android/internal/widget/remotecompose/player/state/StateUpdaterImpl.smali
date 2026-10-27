.class public Lcom/android/internal/widget/remotecompose/player/state/StateUpdaterImpl;
.super Ljava/lang/Object;
.source "StateUpdaterImpl.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/player/state/StateUpdater;


# instance fields
.field private final blacklist mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/state/StateUpdaterImpl;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist setNamedLong(Ljava/lang/String;J)V
    .registers 5

    .line 35
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/state/StateUpdaterImpl;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setNamedLong(Ljava/lang/String;J)V

    .line 36
    return-void
.end method

.method public blacklist setUserLocalBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/state/StateUpdaterImpl;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/player/state/StateUpdater;->getUserDomainString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setNamedDataOverride(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public blacklist setUserLocalColor(Ljava/lang/String;I)V
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/state/StateUpdaterImpl;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/player/state/StateUpdater;->getUserDomainString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setNamedColorOverride(Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public blacklist setUserLocalInt(Ljava/lang/String;I)V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/state/StateUpdaterImpl;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 41
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/player/state/StateUpdater;->getUserDomainString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setNamedIntegerOverride(Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public blacklist setUserLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/state/StateUpdaterImpl;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/player/state/StateUpdater;->getUserDomainString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setNamedStringOverride(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
