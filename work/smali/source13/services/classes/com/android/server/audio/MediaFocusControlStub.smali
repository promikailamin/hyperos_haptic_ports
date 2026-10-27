.class public interface abstract Lcom/android/server/audio/MediaFocusControlStub;
.super Ljava/lang/Object;
.source "MediaFocusControlStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/audio/MediaFocusControlStub;
    .registers 1

    .line 11
    const-class v0, Lcom/android/server/audio/MediaFocusControlStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControlStub;

    return-object v0
.end method


# virtual methods
.method public abstract delayFocusChangeDispatch(ILcom/android/server/audio/FocusRequester;Ljava/lang/String;Landroid/os/Handler;)V
.end method

.method public abstract handleDelayedMessage(Landroid/os/Message;Landroid/os/Handler;)V
.end method

.method public abstract handleDelayedMessageWithdraw(Lcom/android/server/audio/FocusRequester;Landroid/os/Handler;)V
.end method

.method public abstract isDelayedDispatchFocusChangeNeeded(I)Z
.end method

.method public abstract postDelayedFocusChange(ILcom/android/server/audio/FocusRequester;JLandroid/os/Handler;)V
.end method

.method public abstract setA2dpSuspended(Z)V
.end method

.method public abstract setAudioFocusDelayDispatchState(Z)V
.end method

.method public abstract setAudioMode(I)V
.end method

.method public abstract setLastReleasedUid(I)V
.end method
