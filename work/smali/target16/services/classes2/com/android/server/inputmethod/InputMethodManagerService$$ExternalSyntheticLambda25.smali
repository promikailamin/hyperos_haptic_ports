.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda25;
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

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda25;->f$0:Landroid/util/Printer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda25;->f$0:Landroid/util/Printer;

    check-cast p1, Lcom/android/server/inputmethod/UserData;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->$r8$lambda$j_4ULUH2-nnEUJ4ACtuIGEg1g0M(Landroid/util/Printer;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method
