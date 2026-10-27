.class public interface abstract Lcom/android/server/MiuiCommonCloudServiceStub;
.super Ljava/lang/Object;
.source "MiuiCommonCloudServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MiuiCommonCloudServiceStub$SingletonHolder;,
        Lcom/android/server/MiuiCommonCloudServiceStub$Observer;
    }
.end annotation


# direct methods
.method public static getInstance()Lcom/android/server/MiuiCommonCloudServiceStub;
    .registers 1

    .line 19
    invoke-static {}, Lcom/android/server/MiuiCommonCloudServiceStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/MiuiCommonCloudServiceStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getDataByModuleName(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getStringByModuleName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract registerObserver(Lcom/android/server/MiuiCommonCloudServiceStub$Observer;)V
.end method

.method public abstract unregisterObserver(Lcom/android/server/MiuiCommonCloudServiceStub$Observer;)V
.end method
