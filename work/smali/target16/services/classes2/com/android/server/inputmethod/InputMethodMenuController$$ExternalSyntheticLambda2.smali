.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    iput p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->$r8$lambda$3cH4NVx0hgLHgYdPiE_yl-AAqR0(Lcom/android/server/inputmethod/InputMethodMenuController;IILandroid/content/DialogInterface;)V

    return-void
.end method
