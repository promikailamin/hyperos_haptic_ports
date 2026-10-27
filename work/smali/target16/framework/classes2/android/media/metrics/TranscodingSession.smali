.class public final Landroid/media/metrics/TranscodingSession;
.super Ljava/lang/Object;
.source "TranscodingSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private final blacklist mManager:Landroid/media/metrics/MediaMetricsManager;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/media/metrics/TranscodingSession;->mId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Landroid/media/metrics/TranscodingSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    .line 38
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/metrics/TranscodingSession;->mId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 39
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/metrics/TranscodingSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 40
    new-instance p1, Landroid/media/metrics/LogSessionId;

    iget-object p2, p0, Landroid/media/metrics/TranscodingSession;->mId:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/media/metrics/LogSessionId;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/media/metrics/TranscodingSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 62
    iget-object v0, p0, Landroid/media/metrics/TranscodingSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/TranscodingSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/metrics/MediaMetricsManager;->releaseSessionId(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 49
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 50
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 51
    :cond_11
    check-cast p1, Landroid/media/metrics/TranscodingSession;

    .line 52
    iget-object v0, p0, Landroid/media/metrics/TranscodingSession;->mId:Ljava/lang/String;

    iget-object p1, p1, Landroid/media/metrics/TranscodingSession;->mId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 50
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/media/metrics/TranscodingSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/media/metrics/TranscodingSession;->mId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
