.class public interface abstract Lcom/xiaomi/mirror/IMirrorManager;
.super Ljava/lang/Object;
.source "IMirrorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;,
        Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;,
        Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;
    }
.end annotation


# virtual methods
.method public abstract blacklist beginSynergy(Landroid/content/Context;)I
.end method

.method public abstract blacklist beginTrackingClickEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract blacklist endSynergy(Landroid/content/Context;)I
.end method

.method public abstract blacklist endTrackingEvent()V
.end method

.method public abstract blacklist getWorkingMasterName()Ljava/lang/String;
.end method

.method public abstract blacklist isCurrentClickFromMirror()Z
.end method

.method public abstract blacklist isEventFromMirror(Landroid/view/InputEvent;)Z
.end method

.method public abstract blacklist isModelSupport()Z
.end method

.method public abstract blacklist isWorking()Z
.end method

.method public abstract blacklist notifyInputTypeAndPos(III)V
.end method

.method public abstract blacklist notifyLockScreen()V
.end method

.method public abstract blacklist notifyMoveTaskToBack(Landroid/os/IBinder;Z)V
.end method

.method public abstract blacklist notifyStartActivity(Landroid/content/Intent;)V
.end method

.method public abstract blacklist notifyStartActivityFromRecents(ILandroid/os/Bundle;)V
.end method

.method public abstract blacklist onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V
.end method

.method public abstract blacklist performMirrorMenuQuery(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method

.method public abstract blacklist regAcceptInputCallback(Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;)I
.end method

.method public abstract blacklist regSecureWinCallback(Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;)I
.end method

.method public abstract blacklist sendChineseText(Ljava/lang/String;)I
.end method

.method public abstract blacklist sendSynergyOperate(I)I
.end method

.method public abstract blacklist setDisplayIdForInputMethod(I)V
.end method

.method public abstract blacklist setMirrorInputMethodState(Landroid/content/Context;I)V
.end method

.method public abstract blacklist setOnMirrorMenuClickListener(Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;)V
.end method

.method public abstract blacklist turnOffBacklight(Landroid/content/Context;)I
.end method

.method public abstract blacklist unRegAcceptInputCallback()I
.end method

.method public abstract blacklist unRegSecureWinCallback()I
.end method
