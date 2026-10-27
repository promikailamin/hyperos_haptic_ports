.class public interface abstract Lcom/android/server/wm/MiGameTypeIdentificationStub;
.super Ljava/lang/Object;
.source "MiGameTypeIdentificationStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/MiGameTypeIdentificationStub;
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/wm/MiGameTypeIdentificationStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiGameTypeIdentificationStub;

    return-object v0
.end method


# virtual methods
.method public abstract checkIfGameBeSupported(Ljava/lang/String;)Z
.end method
