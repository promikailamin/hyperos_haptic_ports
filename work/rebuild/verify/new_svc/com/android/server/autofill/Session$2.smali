.class public Lcom/android/server/autofill/Session$2;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;)V
    .registers 2

    .line 1791
    iput-object p1, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyInlineUiHidden(Landroid/view/autofill/AutofillId;)V
    .registers 2

    .line 1799
    iget-object p0, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {p0, p1}, Lcom/android/server/autofill/Session;->-$$Nest$mnotifyFillUiHidden(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public notifyInlineUiShown(Landroid/view/autofill/AutofillId;)V
    .registers 2

    .line 1794
    iget-object p0, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {p0, p1}, Lcom/android/server/autofill/Session;->-$$Nest$mnotifyFillUiShown(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public onInputMethodStartInputView()V
    .registers 1

    .line 1806
    iget-object p0, p0, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {p0}, Lcom/android/server/autofill/Session;->-$$Nest$monInputMethodStart(Lcom/android/server/autofill/Session;)V

    return-void
.end method
