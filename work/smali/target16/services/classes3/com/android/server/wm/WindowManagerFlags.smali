.class public Lcom/android/server/wm/WindowManagerFlags;
.super Ljava/lang/Object;
.source "WindowManagerFlags.java"


# instance fields
.field public final mAodTransition:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    return-void
.end method
