.class public final Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
.super Ljava/lang/Object;
.source "WindowAnimationSpec.java"


# instance fields
.field public final floats:[F

.field public final transformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    const/16 v0, 0x9

    .line 288
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->floats:[F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowAnimationSpec-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;-><init>()V

    return-void
.end method
