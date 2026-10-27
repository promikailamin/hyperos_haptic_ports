.class public final synthetic Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/DialogFillUi;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iput p2, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iget p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi;->$r8$lambda$GDd9PoBLu3lcKlZaFR4IQf8K-vM(Lcom/android/server/autofill/ui/DialogFillUi;ILandroid/content/DialogInterface;)V

    return-void
.end method
