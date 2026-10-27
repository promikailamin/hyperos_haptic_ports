.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerInternal;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/WindowManagerInternal;

    return-void
.end method


# virtual methods
.method public final getDisplayImePolicy(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayImePolicy(I)I

    move-result p1

    return p1
.end method
