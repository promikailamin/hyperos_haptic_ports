.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;

.field public final synthetic f$1:Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;

    invoke-static {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;->$r8$lambda$Bbgf4baNU-DW1AqIsNaf0EnKTzA(Lcom/android/server/inputmethod/InputMethodMenuController$Adapter$SubtypeViewHolder;Lcom/android/server/inputmethod/InputMethodMenuController$OnClickListener;Landroid/view/View;)V

    return-void
.end method
