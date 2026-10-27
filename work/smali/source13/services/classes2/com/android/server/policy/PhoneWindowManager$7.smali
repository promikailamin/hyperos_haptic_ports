.class Lcom/android/server/policy/PhoneWindowManager$7;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 2240
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(Z)V
    .registers 6
    .param p1, "keyguardGoingAway"    # Z

    .line 2255
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleStartTransitionForKeyguardLw(Lcom/android/server/policy/PhoneWindowManager;ZZJ)I

    .line 2258
    return-void
.end method

.method public onAppTransitionStartingLocked(ZZJJJ)I
    .registers 11
    .param p1, "keyguardGoingAway"    # Z
    .param p2, "keyguardOccluding"    # Z
    .param p3, "duration"    # J
    .param p5, "statusBarAnimationStartTime"    # J
    .param p7, "statusBarAnimationDuration"    # J

    .line 2248
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    if-eqz p1, :cond_a

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleStartTransitionForKeyguardLw(Lcom/android/server/policy/PhoneWindowManager;ZZJ)I

    move-result v0

    return v0
.end method
