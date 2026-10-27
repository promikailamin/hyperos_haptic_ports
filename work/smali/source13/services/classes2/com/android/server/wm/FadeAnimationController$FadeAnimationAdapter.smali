.class public Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
.super Lcom/android/server/wm/LocalAnimationAdapter;
.source "FadeAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FadeAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FadeAnimationAdapter"
.end annotation


# instance fields
.field protected final mShow:Z

.field protected final mToken:Lcom/android/server/wm/WindowToken;


# direct methods
.method constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;)V
    .registers 5
    .param p1, "windowAnimationSpec"    # Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .param p2, "surfaceAnimationRunner"    # Lcom/android/server/wm/SurfaceAnimationRunner;
    .param p3, "show"    # Z
    .param p4, "token"    # Lcom/android/server/wm/WindowToken;

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 136
    iput-boolean p3, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mShow:Z

    .line 137
    iput-object p4, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mToken:Lcom/android/server/wm/WindowToken;

    .line 138
    return-void
.end method


# virtual methods
.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "endDeferFinishCallback"    # Ljava/lang/Runnable;

    .line 145
    iget-boolean v0, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mShow:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
