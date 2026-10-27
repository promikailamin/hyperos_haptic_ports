.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

.field public final synthetic f$1:[Landroid/view/inputmethod/InputMethodInfo;

.field public final synthetic f$2:[I

.field public final synthetic f$3:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

.field public final synthetic f$4:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

.field public final synthetic f$5:Landroid/content/Context;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController;[Landroid/view/inputmethod/InputMethodInfo;[ILcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$1:[Landroid/view/inputmethod/InputMethodInfo;

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$2:[I

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    iput-object p5, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$4:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    iput-object p6, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$5:Landroid/content/Context;

    iput-object p7, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$7:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$1:[Landroid/view/inputmethod/InputMethodInfo;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$2:[I

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$4:Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$5:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda5;->f$7:Ljava/util/List;

    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodMenuController;->lambda$showInputMethodMenu$4$com-android-server-inputmethod-InputMethodMenuController([Landroid/view/inputmethod/InputMethodInfo;[ILcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
