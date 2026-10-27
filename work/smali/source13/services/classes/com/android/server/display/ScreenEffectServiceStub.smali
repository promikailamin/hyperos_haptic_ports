.class public interface abstract Lcom/android/server/display/ScreenEffectServiceStub;
.super Ljava/lang/Object;
.source "ScreenEffectServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/display/ScreenEffectServiceStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/display/ScreenEffectServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/ScreenEffectServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract updateBCBCState(I)V
.end method

.method public abstract updateDozeBrightness(JI)V
.end method

.method public abstract updatePeakBrightnessState(I)V
.end method

.method public abstract updateScreenEffect(I)V
.end method
