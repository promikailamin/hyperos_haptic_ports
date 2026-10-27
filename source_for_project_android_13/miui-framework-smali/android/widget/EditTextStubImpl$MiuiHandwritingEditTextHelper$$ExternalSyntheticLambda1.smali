.class public final synthetic Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper$$ExternalSyntheticLambda1;->f$0:Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper$$ExternalSyntheticLambda1;->f$0:Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->lambda$getTextRectFOnScreen$1$android-widget-EditTextStubImpl$MiuiHandwritingEditTextHelper(Landroid/graphics/RectF;)V

    return-void
.end method
