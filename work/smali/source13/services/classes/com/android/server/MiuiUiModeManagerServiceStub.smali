.class public interface abstract Lcom/android/server/MiuiUiModeManagerServiceStub;
.super Ljava/lang/Object;
.source "MiuiUiModeManagerServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/MiuiUiModeManagerServiceStub;
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/MiuiUiModeManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiUiModeManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract init(Lcom/android/server/UiModeManagerService;)V
.end method

.method public abstract onBootPhase(I)V
.end method

.method public abstract onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setNightMode(I)V
.end method

.method public abstract shouldDelayNightModeChange(II)Z
.end method
