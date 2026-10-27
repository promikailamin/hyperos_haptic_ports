.class public abstract Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener;)V
    .registers 2

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract getProposedRotationLocked()I
.end method

.method public abstract onTouchEndLocked(J)V
.end method

.method public abstract onTouchStartLocked()V
.end method

.method public abstract resetLocked(Z)V
.end method
