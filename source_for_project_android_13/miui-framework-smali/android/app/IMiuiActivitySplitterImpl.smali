.class public interface abstract Landroid/app/IMiuiActivitySplitterImpl;
.super Ljava/lang/Object;
.source "IMiuiActivitySplitterImpl.java"


# virtual methods
.method public abstract blacklist adjustToFullScreen()V
.end method

.method public abstract blacklist adjustToSplitScreen()V
.end method

.method public abstract blacklist adjustWindow(I)V
.end method

.method public abstract blacklist adjustWindow(Landroid/graphics/Rect;)V
.end method

.method public abstract blacklist cancelSplit(Landroid/content/Intent;)V
.end method

.method public abstract blacklist checkAllContentGone()Z
.end method

.method public abstract blacklist clearIllegalSplitActivity()V
.end method

.method public abstract blacklist finishAllSubActivities()V
.end method

.method public abstract blacklist getCurrentSubIntent()Landroid/content/Intent;
.end method

.method public abstract blacklist handleBackPressed()V
.end method

.method public abstract blacklist isControllerShowing()Z
.end method

.method public abstract blacklist isDuplicateSplittableActivity(Landroid/content/Intent;)Z
.end method

.method public abstract blacklist isSplitBaseActivity()Z
.end method

.method public abstract blacklist isSplitMode()Z
.end method

.method public abstract blacklist isSplitSecondActivity()Z
.end method

.method public abstract blacklist needSplitActivity()Z
.end method

.method public abstract blacklist notSupportSplit()Z
.end method

.method public abstract blacklist onSplitActivityConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract blacklist onSplitActivityDestroy()V
.end method

.method public abstract blacklist onSplitActivityNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract blacklist onSplitActivityRestart()V
.end method

.method public abstract blacklist pushSplitActivityToStack()V
.end method

.method public abstract blacklist reachSplitSize()Z
.end method

.method public abstract blacklist reduceActivity()V
.end method

.method public abstract blacklist reduceIndexView()V
.end method

.method public abstract blacklist restartLastContentIfNeeded()V
.end method

.method public abstract blacklist setActivityInfo(Landroid/app/Activity;Landroid/os/IBinder;)V
.end method

.method public abstract blacklist setControllerShowing(Z)V
.end method

.method public abstract blacklist setFirstIntent(Landroid/content/Intent;)V
.end method

.method public abstract blacklist setLastReportedMultiWindowMode(Z)V
.end method

.method public abstract blacklist setResumed(Z)V
.end method

.method public abstract blacklist setSplit()V
.end method

.method public abstract blacklist setSplit(F)V
.end method

.method public abstract blacklist setSplit(Landroid/view/View;)V
.end method

.method public abstract blacklist setSplit(Landroid/view/View;F)V
.end method

.method public abstract blacklist setSplitActivityOrientation(I)V
.end method

.method public abstract blacklist setSplittableIfNeeded(Landroid/content/Intent;)V
.end method

.method public abstract blacklist setTargetIntent(Landroid/content/Intent;)V
.end method

.method public abstract blacklist splitActivityFinish()V
.end method

.method public abstract blacklist splitActivityIfNeeded()V
.end method
