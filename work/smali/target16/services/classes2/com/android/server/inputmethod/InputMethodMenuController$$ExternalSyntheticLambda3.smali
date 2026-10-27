.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController;Landroid/content/Intent;II)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;->f$2:I

    iput p4, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;->f$2:I

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;->f$3:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->$r8$lambda$-nNU-cU0WC-pQVYmV3bg-WF2ezs(Lcom/android/server/inputmethod/InputMethodMenuController;Landroid/content/Intent;IILandroid/view/View;)V

    return-void
.end method
