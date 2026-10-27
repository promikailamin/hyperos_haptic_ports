.class final Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;
.super Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;
.source "MediaRoute2ProviderServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceCallbackStub"
.end annotation


# instance fields
.field private final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V
    .registers 3
    .param p1, "connection"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 628
    invoke-direct {p0}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;-><init>()V

    .line 629
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 630
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 633
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 634
    return-void
.end method

.method public notifyProviderUpdated(Landroid/media/MediaRoute2ProviderInfo;)V
    .registers 3
    .param p1, "providerInfo"    # Landroid/media/MediaRoute2ProviderInfo;

    .line 638
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 639
    .local v0, "connection":Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    if-eqz v0, :cond_d

    .line 640
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postProviderUpdated(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 642
    :cond_d
    return-void
.end method

.method public notifyRequestFailed(JI)V
    .registers 5
    .param p1, "requestId"    # J
    .param p3, "reason"    # I

    .line 670
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 671
    .local v0, "connection":Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    if-eqz v0, :cond_d

    .line 672
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postRequestFailed(JI)V

    .line 674
    :cond_d
    return-void
.end method

.method public notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V
    .registers 5
    .param p1, "requestId"    # J
    .param p3, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 646
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 647
    .local v0, "connection":Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    if-eqz v0, :cond_d

    .line 648
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postSessionCreated(JLandroid/media/RoutingSessionInfo;)V

    .line 650
    :cond_d
    return-void
.end method

.method public notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .registers 3
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 662
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 663
    .local v0, "connection":Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    if-eqz v0, :cond_d

    .line 664
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postSessionReleased(Landroid/media/RoutingSessionInfo;)V

    .line 666
    :cond_d
    return-void
.end method

.method public notifySessionsUpdated(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;)V"
        }
    .end annotation

    .line 654
    .local p1, "sessionInfo":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 655
    .local v0, "connection":Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    if-eqz v0, :cond_d

    .line 656
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->postSessionsUpdated(Ljava/util/List;)V

    .line 658
    :cond_d
    return-void
.end method
