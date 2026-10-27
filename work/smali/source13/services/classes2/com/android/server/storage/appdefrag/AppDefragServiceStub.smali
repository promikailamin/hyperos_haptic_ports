.class public interface abstract Lcom/android/server/storage/appdefrag/AppDefragServiceStub;
.super Ljava/lang/Object;
.source "AppDefragServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/storage/appdefrag/AppDefragServiceStub;
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/storage/appdefrag/AppDefragServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/appdefrag/AppDefragServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract start(Landroid/content/Context;)V
.end method
