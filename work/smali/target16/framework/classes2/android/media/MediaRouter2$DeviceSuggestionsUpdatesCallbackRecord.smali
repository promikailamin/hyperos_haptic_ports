.class final Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceSuggestionsUpdatesCallbackRecord"
.end annotation


# instance fields
.field public final blacklist mDeviceSuggestionsUpdatesCallback:Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;

.field public final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;)V
    .registers 3

    .line 2725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2726
    iput-object p1, p0, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2727
    iput-object p2, p0, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;->mDeviceSuggestionsUpdatesCallback:Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;

    .line 2728
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 2732
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2733
    return v0

    .line 2735
    :cond_4
    instance-of v1, p1, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2736
    return v2

    .line 2738
    :cond_a
    iget-object v1, p0, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;->mDeviceSuggestionsUpdatesCallback:Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;

    check-cast p1, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;

    iget-object p1, p1, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;->mDeviceSuggestionsUpdatesCallback:Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;

    if-ne v1, p1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2745
    iget-object v0, p0, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;->mDeviceSuggestionsUpdatesCallback:Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;

    invoke-interface {v0}, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;->hashCode()I

    move-result v0

    return v0
.end method
