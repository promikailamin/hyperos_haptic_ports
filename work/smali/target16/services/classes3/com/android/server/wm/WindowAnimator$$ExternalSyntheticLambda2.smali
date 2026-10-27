.class public final synthetic Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/Choreographer$VsyncCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowAnimator;

    return-void
.end method


# virtual methods
.method public final onVsync(Landroid/view/Choreographer$FrameData;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowAnimator;

    invoke-static {p0, p1}, Lcom/android/server/wm/WindowAnimator;->$r8$lambda$-TvtloJGyubjgrDRe42dfhkeA1U(Lcom/android/server/wm/WindowAnimator;Landroid/view/Choreographer$FrameData;)V

    return-void
.end method
