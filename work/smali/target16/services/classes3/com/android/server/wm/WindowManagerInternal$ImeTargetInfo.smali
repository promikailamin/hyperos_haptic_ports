.class public Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# instance fields
.field public final mFocusedWindowName:Ljava/lang/String;

.field public final mImeControlTargetName:Ljava/lang/String;

.field public final mImeInputTargetName:Ljava/lang/String;

.field public final mImeLayeringTargetName:Ljava/lang/String;

.field public final mImeSurfaceParentName:Ljava/lang/String;

.field public final mRequestWindowName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->mFocusedWindowName:Ljava/lang/String;

    .line 1044
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->mRequestWindowName:Ljava/lang/String;

    .line 1045
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->mImeLayeringTargetName:Ljava/lang/String;

    .line 1046
    iput-object p4, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->mImeInputTargetName:Ljava/lang/String;

    .line 1047
    iput-object p5, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->mImeControlTargetName:Ljava/lang/String;

    .line 1048
    iput-object p6, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->mImeSurfaceParentName:Ljava/lang/String;

    return-void
.end method
