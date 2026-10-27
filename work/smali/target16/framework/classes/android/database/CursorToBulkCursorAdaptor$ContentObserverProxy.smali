.class final Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;
.super Landroid/database/ContentObserver;
.source "CursorToBulkCursorAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/CursorToBulkCursorAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentObserverProxy"
.end annotation


# instance fields
.field protected greylist-max-o mRemote:Landroid/database/IContentObserver;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/database/IContentObserver;Landroid/os/IBinder$DeathRecipient;)V
    .registers 4

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 67
    iput-object p1, p0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->mRemote:Landroid/database/IContentObserver;

    .line 69
    :try_start_6
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    .line 72
    goto :goto_10

    .line 70
    :catch_f
    move-exception p1

    .line 73
    :goto_10
    return-void
.end method


# virtual methods
.method public whitelist deliverSelfNotifications()Z
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onChange(ZLjava/util/Collection;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p2, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/net/Uri;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/net/Uri;

    .line 97
    :try_start_1c
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->mRemote:Landroid/database/IContentObserver;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/database/IContentObserver;->onChangeEtc(Z[Landroid/net/Uri;II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22

    .line 100
    goto :goto_23

    .line 98
    :catch_22
    move-exception p1

    .line 101
    :goto_23
    return-void
.end method

.method public greylist-max-o unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)Z
    .registers 4

    .line 76
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->mRemote:Landroid/database/IContentObserver;

    invoke-interface {v0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result p1

    return p1
.end method
