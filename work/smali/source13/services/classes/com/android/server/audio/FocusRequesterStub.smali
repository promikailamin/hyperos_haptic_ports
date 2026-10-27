.class public interface abstract Lcom/android/server/audio/FocusRequesterStub;
.super Ljava/lang/Object;
.source "FocusRequesterStub.java"


# direct methods
.method public static get()Lcom/android/server/audio/FocusRequesterStub;
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/audio/FocusRequesterStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequesterStub;

    return-object v0
.end method


# virtual methods
.method public abstract notifyFocusChange(ILandroid/os/Handler;)V
.end method
