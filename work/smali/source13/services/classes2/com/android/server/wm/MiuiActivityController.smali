.class public interface abstract Lcom/android/server/wm/MiuiActivityController;
.super Ljava/lang/Object;
.source "MiuiActivityController.java"


# virtual methods
.method public abstract activityDestroyed(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract activityIdle(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract activityPaused(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract activityResumed(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract activityStopped(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V
.end method

.method public abstract unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V
.end method
