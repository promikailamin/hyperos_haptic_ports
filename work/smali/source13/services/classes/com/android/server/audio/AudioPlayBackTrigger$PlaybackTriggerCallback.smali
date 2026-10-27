.class interface abstract Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;
.super Ljava/lang/Object;
.source "AudioPlayBackTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioPlayBackTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PlaybackTriggerCallback"
.end annotation


# virtual methods
.method public abstract onInsertPlaybackMsToHealth()V
.end method

.method public abstract onQueueCallback(Z)V
.end method

.method public abstract onReadPlaybackMsSettings()V
.end method

.method public abstract onTriggerCallback(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTriggerTimeToThreshold()V
.end method
