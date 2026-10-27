.class public final synthetic Lcom/android/server/wm/InsetsPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsPolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/InsetsPolicy;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->lambda$showTransient$0$com-android-server-wm-InsetsPolicy(J)V

    return-void
.end method
