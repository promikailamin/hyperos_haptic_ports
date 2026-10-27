.class Lcom/android/internal/app/MiuiResolverActivity$3;
.super Ljava/lang/Object;
.source "MiuiResolverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MiuiResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiResolverActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiResolverActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiResolverActivity;

    .line 572
    iput-object p1, p0, Lcom/android/internal/app/MiuiResolverActivity$3;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 575
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity$3;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iget-object v0, v0, Lcom/android/internal/app/MiuiResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 576
    .local v0, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-nez v0, :cond_b

    .line 577
    return-void

    .line 581
    :cond_b
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity$3;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/internal/app/MiuiResolverActivity;->mProfileSwitchMessageId:I

    .line 583
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity$3;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/app/MiuiResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    .line 584
    iget-object v1, p0, Lcom/android/internal/app/MiuiResolverActivity$3;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/MiuiResolverActivity;->finish()V

    .line 585
    return-void
.end method
