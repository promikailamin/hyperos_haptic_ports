.class public final synthetic Lcom/android/server/wm/Transition$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Transition;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Transition;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/wm/Transition;

    iput-object p2, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/wm/Transition;

    iget-object p0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Runnable;

    check-cast p1, Landroid/view/SurfaceControl$TransactionStats;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/Transition;->$r8$lambda$nJpvR9TAhuf-2chfswuW5Bx3jds(Lcom/android/server/wm/Transition;Ljava/lang/Runnable;Landroid/view/SurfaceControl$TransactionStats;)V

    return-void
.end method
