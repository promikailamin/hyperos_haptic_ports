.class public interface abstract Lcom/android/server/PinnerServiceStub;
.super Ljava/lang/Object;
.source "PinnerServiceStub.java"


# direct methods
.method public static get()Lcom/android/server/PinnerServiceStub;
    .registers 1

    .line 11
    const-class v0, Lcom/android/server/PinnerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract getFilesFromKey(I)[Ljava/lang/String;
.end method

.method public abstract getInfoFromKey(I)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getNameForKey(I)Ljava/lang/String;
.end method

.method public abstract getPkgNameFromKey(I)Ljava/lang/String;
.end method

.method public abstract init(Lcom/android/server/PinnerService;Landroid/content/Context;)V
.end method

.method public abstract onActivityChanged(Ljava/lang/String;)V
.end method
