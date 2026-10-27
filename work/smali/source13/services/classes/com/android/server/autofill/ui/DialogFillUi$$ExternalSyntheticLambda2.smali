.class public final synthetic Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/DialogFillUi;

.field public final synthetic f$1:Landroid/service/autofill/FillResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iput-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;->f$1:Landroid/service/autofill/FillResponse;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;->f$1:Landroid/service/autofill/FillResponse;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$initialAuthenticationLayout$5$com-android-server-autofill-ui-DialogFillUi(Landroid/service/autofill/FillResponse;Landroid/view/View;)V

    return-void
.end method
