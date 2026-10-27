.class public interface abstract Lcom/android/server/wm/MIUIWatermarkStub;
.super Ljava/lang/Object;
.source "MIUIWatermarkStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/MIUIWatermarkStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/wm/MIUIWatermarkStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MIUIWatermarkStub;

    return-object v0
.end method


# virtual methods
.method public abstract drawIfNeeded()V
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;)V
.end method

.method public abstract positionSurface(II)V
.end method
