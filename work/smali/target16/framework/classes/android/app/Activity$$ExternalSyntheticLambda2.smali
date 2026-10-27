.class public final synthetic Landroid/app/Activity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/Activity;

.field public final synthetic blacklist f$1:Landroid/view/autofill/AutofillId;

.field public final synthetic blacklist f$2:Landroid/view/autofill/AutofillValue;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/Activity;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/Activity$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Landroid/app/Activity$$ExternalSyntheticLambda2;->f$1:Landroid/view/autofill/AutofillId;

    iput-object p3, p0, Landroid/app/Activity$$ExternalSyntheticLambda2;->f$2:Landroid/view/autofill/AutofillValue;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/Activity$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Activity$$ExternalSyntheticLambda2;->f$1:Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Landroid/app/Activity$$ExternalSyntheticLambda2;->f$2:Landroid/view/autofill/AutofillValue;

    invoke-static {v0, v1, v2}, Landroid/app/Activity;->$r8$lambda$R5FHDgJhXFcjqP_CV7tgAEyaJuA(Landroid/app/Activity;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V

    return-void
.end method
