.class public final synthetic Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/graphics/RectF;

.field public final synthetic blacklist f$1:F


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/graphics/RectF;F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/RectF;

    iput p2, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper$$ExternalSyntheticLambda2;->f$1:F

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/RectF;

    iget v1, p0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper$$ExternalSyntheticLambda2;->f$1:F

    check-cast p1, Landroid/graphics/RectF;

    invoke-static {v0, v1, p1}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->lambda$getTextRectFOnScreen$2(Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    return-void
.end method
