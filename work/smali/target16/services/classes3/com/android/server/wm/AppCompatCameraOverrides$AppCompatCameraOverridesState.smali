.class public Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;
.super Ljava/lang/Object;
.source "AppCompatCameraOverrides.java"


# instance fields
.field public mActivityRefreshState:I

.field public mIsRefreshRequested:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivityRefreshState(Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mActivityRefreshState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmActivityRefreshState(Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mActivityRefreshState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsRefreshRequested(Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mIsRefreshRequested:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mActivityRefreshState:I

    return-void
.end method
