.class Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$2;
.super Ljava/lang/Object;
.source "MiuiChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->createProfileView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;

    .line 3755
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$2;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 3758
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$2;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;

    iget-object v0, v0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/MiuiChooserActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 3759
    .local v0, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-nez v0, :cond_d

    .line 3760
    return-void

    .line 3764
    :cond_d
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$2;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/internal/app/MiuiChooserActivity;->mProfileSwitchMessageId:I

    .line 3766
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$2;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/app/MiuiChooserActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    .line 3767
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$2;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/MiuiChooserActivity;->finish()V

    .line 3768
    return-void
.end method
