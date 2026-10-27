.class final Landroid/media/MediaRouter2$TransferCallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferCallbackRecord"
.end annotation


# instance fields
.field public final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field public final blacklist mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V
    .registers 3

    .line 2754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2755
    iput-object p2, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    .line 2756
    iput-object p1, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2757
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 2761
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2762
    return v0

    .line 2764
    :cond_4
    instance-of v1, p1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2765
    return v2

    .line 2767
    :cond_a
    iget-object v1, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    check-cast p1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    iget-object p1, p1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    if-ne v1, p1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2772
    iget-object v0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
