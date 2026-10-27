.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/RecyclerView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/RecyclerView;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/widget/RecyclerView;

    iput p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/widget/RecyclerView;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->$r8$lambda$vDNjQ3CB7_si8RbE6Y2h50hubIc(Lcom/android/internal/widget/RecyclerView;I)V

    return-void
.end method
