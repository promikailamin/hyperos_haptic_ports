.class final Landroid/media/MediaRouter2$ControllerCallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ControllerCallbackRecord"
.end annotation


# instance fields
.field public final blacklist mCallback:Landroid/media/MediaRouter2$ControllerCallback;

.field public final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V
    .registers 3

    .line 2781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2782
    iput-object p2, p0, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mCallback:Landroid/media/MediaRouter2$ControllerCallback;

    .line 2783
    iput-object p1, p0, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2784
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 2788
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2789
    return v0

    .line 2791
    :cond_4
    instance-of v1, p1, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2792
    return v2

    .line 2794
    :cond_a
    iget-object v1, p0, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mCallback:Landroid/media/MediaRouter2$ControllerCallback;

    check-cast p1, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    iget-object p1, p1, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mCallback:Landroid/media/MediaRouter2$ControllerCallback;

    if-ne v1, p1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2799
    iget-object v0, p0, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mCallback:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
