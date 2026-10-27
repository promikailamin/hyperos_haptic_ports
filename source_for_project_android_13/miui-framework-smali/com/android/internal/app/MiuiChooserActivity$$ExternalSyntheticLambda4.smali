.class public final synthetic Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/MiuiChooserActivity;

.field public final synthetic blacklist f$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

.field public final synthetic blacklist f$2:Lcom/android/internal/widget/RecyclerView;

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/RecyclerView;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/app/MiuiChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iput-object p3, p0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda4;->f$2:Lcom/android/internal/widget/RecyclerView;

    iput p4, p0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda4;->f$3:I

    iput p5, p0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda4;->f$4:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/app/MiuiChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda4;->f$2:Lcom/android/internal/widget/RecyclerView;

    iget v3, p0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda4;->f$3:I

    iget v4, p0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda4;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/MiuiChooserActivity;->lambda$handleLayoutChange$5$com-android-internal-app-MiuiChooserActivity(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/RecyclerView;II)V

    return-void
.end method
