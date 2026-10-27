.class public final synthetic Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/DialogFillUi;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iput p2, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final onFilterComplete(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iget v1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda8;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$initialDatasetLayout$9$com-android-server-autofill-ui-DialogFillUi(II)V

    return-void
.end method
