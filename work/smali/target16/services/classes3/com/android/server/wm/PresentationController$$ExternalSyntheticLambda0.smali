.class public final synthetic Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PresentationController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowState;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PresentationController;Lcom/android/server/wm/WindowState;ILjava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PresentationController;

    iput-object p2, p0, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowState;

    iput p3, p0, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PresentationController;

    iget-object v1, p0, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowState;

    iget v2, p0, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/server/wm/PresentationController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/wm/PresentationController;->$r8$lambda$LB3IVqMTkfvk-kRIRi33YZaozVY(Lcom/android/server/wm/PresentationController;Lcom/android/server/wm/WindowState;ILjava/lang/String;)V

    return-void
.end method
