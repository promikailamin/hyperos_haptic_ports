.class public interface abstract Lcom/android/server/WiredAccessoryManagerStub;
.super Ljava/lang/Object;
.source "WiredAccessoryManagerStub.java"


# direct methods
.method public static get()Lcom/android/server/WiredAccessoryManagerStub;
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/WiredAccessoryManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WiredAccessoryManagerStub;

    return-object v0
.end method


# virtual methods
.method public abstract isDeviceUnsupported(Landroid/content/Context;II)Z
.end method
