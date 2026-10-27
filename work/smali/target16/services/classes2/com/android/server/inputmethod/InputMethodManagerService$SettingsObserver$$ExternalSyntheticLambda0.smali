.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->$r8$lambda$mQmSTFVnGJd3yiYBSOIRUFkZ6p8(Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;ILandroid/net/Uri;)V

    return-void
.end method
