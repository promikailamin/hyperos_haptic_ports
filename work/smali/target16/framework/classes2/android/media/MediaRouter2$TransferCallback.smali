.class public abstract Landroid/media/MediaRouter2$TransferCallback;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TransferCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onRequestFailed(I)V
    .registers 2

    .line 1955
    return-void
.end method

.method public whitelist onStop(Landroid/media/MediaRouter2$RoutingController;)V
    .registers 2

    .line 1946
    return-void
.end method

.method public whitelist onTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 3

    .line 1930
    return-void
.end method

.method public whitelist onTransferFailure(Landroid/media/MediaRoute2Info;)V
    .registers 2

    .line 1937
    return-void
.end method
