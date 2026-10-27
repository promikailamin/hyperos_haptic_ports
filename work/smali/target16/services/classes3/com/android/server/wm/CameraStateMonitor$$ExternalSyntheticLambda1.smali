.class public final synthetic Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CameraStateMonitor;

.field public final synthetic f$1:Lcom/android/server/wm/CameraAppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/CameraAppInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/CameraStateMonitor;

    iput-object p2, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/CameraAppInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/CameraStateMonitor;

    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/CameraAppInfo;

    invoke-static {v0, p0}, Lcom/android/server/wm/CameraStateMonitor;->$r8$lambda$qQWkEfa46UfnsuZdVhdQb676QWw(Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/CameraAppInfo;)V

    return-void
.end method
