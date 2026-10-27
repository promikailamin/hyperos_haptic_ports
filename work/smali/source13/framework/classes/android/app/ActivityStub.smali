.class public interface abstract Landroid/app/ActivityStub;
.super Ljava/lang/Object;
.source "ActivityStub.java"


# static fields
.field public static final blacklist RESULT_DESTROYED_FINISH_SKIPED:I = 0xc8


# direct methods
.method public static blacklist newInstance()Landroid/app/ActivityStub;
    .registers 1

    .line 25
    const-class v0, Landroid/app/ActivityStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist checkAccessControl(Landroid/app/Activity;)V
.end method

.method public abstract blacklist dispatchKeyEventForCatcher(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)V
.end method

.method public abstract blacklist dispatchTouchEventForCatcher(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)V
.end method

.method public abstract blacklist finish(Landroid/app/Activity;)V
.end method

.method public abstract blacklist notifyContentChange()V
.end method

.method public abstract blacklist notifyWebView(Landroid/view/View;Z)V
.end method

.method public abstract blacklist onBackPressed(Landroid/app/Activity;)V
.end method

.method public abstract blacklist onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
.end method

.method public abstract blacklist onCreate(Landroid/app/Activity;Landroid/os/IBinder;)V
.end method

.method public abstract blacklist onDestroy(Landroid/app/Activity;)V
.end method

.method public abstract blacklist onMultiWindowModeChanged(Landroid/app/Activity;ZLandroid/content/res/Configuration;)V
.end method

.method public abstract blacklist onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
.end method

.method public abstract blacklist onPause(Landroid/app/Activity;)V
.end method

.method public abstract blacklist onRestart(Landroid/app/Activity;)V
.end method

.method public abstract blacklist onResume(Landroid/app/Activity;)V
.end method

.method public abstract blacklist onSkipTouchActivity(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract blacklist onStart(Landroid/app/Activity;)V
.end method

.method public abstract blacklist onStop(Landroid/app/Activity;)V
.end method

.method public abstract blacklist setRequestedOrientation(Landroid/app/Activity;I)V
.end method

.method public abstract blacklist setWebView(Landroid/view/View;Z)V
.end method

.method public abstract blacklist startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z
.end method
