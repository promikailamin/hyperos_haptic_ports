.class public final synthetic Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda7;->f$0:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda7;->f$0:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-static {v0, p1}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$initialDatasetLayout$8(Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View;)V

    return-void
.end method
