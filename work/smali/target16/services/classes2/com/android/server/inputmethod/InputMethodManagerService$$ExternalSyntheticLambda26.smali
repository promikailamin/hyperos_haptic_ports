.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/Printer;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Printer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda26;->f$0:Landroid/util/Printer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda26;->f$0:Landroid/util/Printer;

    check-cast p1, Lcom/android/server/inputmethod/ClientState;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->$r8$lambda$1XFj8YBhQc0QdixJMMoB5AEoETY(Landroid/util/Printer;Lcom/android/server/inputmethod/ClientState;)V

    return-void
.end method
