.class public interface abstract Lcom/android/server/wm/TalkbackWatermarkStub;
.super Ljava/lang/Object;
.source "TalkbackWatermarkStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/TalkbackWatermarkStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/wm/TalkbackWatermarkStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TalkbackWatermarkStub;

    return-object v0
.end method


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract positionSurface(II)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract show()V
.end method
