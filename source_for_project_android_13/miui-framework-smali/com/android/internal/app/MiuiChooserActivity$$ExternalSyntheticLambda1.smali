.class public final synthetic Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/MiuiChooserActivity;

.field public final synthetic blacklist f$1:Lcom/android/internal/app/chooser/TargetInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/MiuiChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/app/chooser/TargetInfo;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/MiuiChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/MiuiChooserActivity;->lambda$createEditButton$2$com-android-internal-app-MiuiChooserActivity(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V

    return-void
.end method
