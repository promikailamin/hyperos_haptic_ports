.class public final synthetic Lcom/miui/autoui/utils/ViewProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Object;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/view/View;

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Object;ILandroid/view/View;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/autoui/utils/ViewProcessor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/miui/autoui/utils/ViewProcessor$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/miui/autoui/utils/ViewProcessor$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iput p4, p0, Lcom/miui/autoui/utils/ViewProcessor$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    iget-object v0, p0, Lcom/miui/autoui/utils/ViewProcessor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget v1, p0, Lcom/miui/autoui/utils/ViewProcessor$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/miui/autoui/utils/ViewProcessor$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iget v3, p0, Lcom/miui/autoui/utils/ViewProcessor$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/miui/autoui/utils/ViewProcessor;->lambda$stretchSpanForVerticalRecycler$0(Ljava/lang/Object;ILandroid/view/View;I)V

    return-void
.end method
