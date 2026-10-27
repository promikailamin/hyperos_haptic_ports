.class public Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mHasDelayedNotificationForRecentsToFrontTransition:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/os/Handler;)V
    .registers 3

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onFocusLost(Lcom/android/server/wm/InputTarget;)V
    .registers 2

    .line 1106
    iget-boolean p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHasDelayedNotificationForRecentsToFrontTransition:Z

    if-eqz p1, :cond_7

    .line 1107
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->sendUserContextChangedNotification()V

    :cond_7
    return-void
.end method

.method public onWMTransition(II)V
    .registers 3

    and-int/lit16 p1, p2, 0x80

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    .line 1085
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHasDelayedNotificationForRecentsToFrontTransition:Z

    return-void

    .line 1087
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->sendUserContextChangedNotification()V

    return-void
.end method

.method public onWindowTransition(Lcom/android/server/wm/WindowState;I)V
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_10

    .line 1096
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHasDelayedNotificationForRecentsToFrontTransition:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    .line 1098
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHasDelayedNotificationForRecentsToFrontTransition:Z

    :cond_10
    return-void
.end method

.method public final sendUserContextChangedNotification()V
    .registers 2

    const/4 v0, 0x0

    .line 1114
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHasDelayedNotificationForRecentsToFrontTransition:Z

    .line 1115
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
