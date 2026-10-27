.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda20;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda20;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->$r8$lambda$rZiF3TWseKvZa5r35iPs7VLI8kE(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V

    return-void
.end method
