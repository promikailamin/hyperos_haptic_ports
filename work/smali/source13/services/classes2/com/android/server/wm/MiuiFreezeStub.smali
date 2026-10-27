.class public interface abstract Lcom/android/server/wm/MiuiFreezeStub;
.super Ljava/lang/Object;
.source "MiuiFreezeStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/MiuiFreezeStub;
    .registers 1

    .line 16
    const-class v0, Lcom/android/server/wm/MiuiFreezeStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiFreezeStub;

    return-object v0
.end method


# virtual methods
.method public abstract checkFreeForm(Ljava/lang/String;I)V
.end method

.method public abstract finishAndRemoveSplashScreen(Ljava/lang/String;I)V
.end method

.method public abstract init(Lcom/android/server/wm/ActivityTaskManagerService;)V
.end method

.method public abstract isSameProcess(I)Z
.end method

.method public abstract needShowLoading(Ljava/lang/String;)Z
.end method

.method public abstract reparentPubgGame(Lcom/android/server/wm/ActivityRecord;Z)V
.end method

.method public abstract reportAppDied(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract showDialogIfNeed(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;I)V
.end method
