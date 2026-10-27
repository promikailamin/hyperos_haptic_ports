.class Landroid/os/TurboSchedMonitorImpl$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TurboSchedMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TurboSchedMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/TurboSchedMonitorImpl;


# direct methods
.method constructor blacklist <init>(Landroid/os/TurboSchedMonitorImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/TurboSchedMonitorImpl;

    .line 898
    iput-object p1, p0, Landroid/os/TurboSchedMonitorImpl$3;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 901
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl$3;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-static {v0}, Landroid/os/TurboSchedMonitorImpl;->-$$Nest$misInUIThread(Landroid/os/TurboSchedMonitorImpl;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 902
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl$3;->this$0:Landroid/os/TurboSchedMonitorImpl;

    invoke-virtual {v0, v1}, Landroid/os/TurboSchedMonitorImpl;->notifyOnScroll(Z)V

    .line 904
    :cond_e
    return v1
.end method
