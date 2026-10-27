.class public interface abstract Lcom/android/server/wm/MiuiMultiTaskManagerStub;
.super Ljava/lang/Object;
.source "MiuiMultiTaskManagerStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/MiuiMultiTaskManagerStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/wm/MiuiMultiTaskManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiMultiTaskManagerStub;

    return-object v0
.end method


# virtual methods
.method public abstract updateMultiTaskInfoIfNeed(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
.end method
