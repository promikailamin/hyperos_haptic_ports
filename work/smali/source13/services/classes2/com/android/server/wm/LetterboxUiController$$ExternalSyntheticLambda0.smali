.class public final synthetic Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LetterboxUiController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LetterboxUiController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/LetterboxUiController;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/LetterboxUiController;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxUiController;->lambda$layoutLetterbox$0$com-android-server-wm-LetterboxUiController()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method
