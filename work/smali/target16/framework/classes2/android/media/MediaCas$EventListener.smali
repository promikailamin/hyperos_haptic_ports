.class public interface abstract Landroid/media/MediaCas$EventListener;
.super Ljava/lang/Object;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract whitelist onEvent(Landroid/media/MediaCas;II[B)V
.end method

.method public whitelist onPluginStatusUpdate(Landroid/media/MediaCas;II)V
    .registers 4

    .line 1088
    const-string p1, "MediaCas"

    const-string p2, "Received MediaCas Plugin Status event"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    return-void
.end method

.method public whitelist onResourceLost(Landroid/media/MediaCas;)V
    .registers 3

    .line 1097
    const-string p1, "MediaCas"

    const-string v0, "Received MediaCas Resource Reclaim event"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    return-void
.end method

.method public whitelist onSessionEvent(Landroid/media/MediaCas;Landroid/media/MediaCas$Session;II[B)V
    .registers 6

    .line 1076
    const-string p1, "MediaCas"

    const-string p2, "Received MediaCas Session event"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return-void
.end method
