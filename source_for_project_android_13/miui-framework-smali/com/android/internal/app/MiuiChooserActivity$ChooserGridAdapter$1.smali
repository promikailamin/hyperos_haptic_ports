.class Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$1;
.super Landroid/database/DataSetObserver;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;

.field final synthetic blacklist val$this$0:Lcom/android/internal/app/MiuiChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/MiuiChooserActivity;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;

    .line 3543
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$1;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;

    iput-object p2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$1;->val$this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .registers 2

    .line 3546
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 3547
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$1;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->notifyDataSetChanged()V

    .line 3548
    return-void
.end method

.method public whitelist onInvalidated()V
    .registers 2

    .line 3552
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 3553
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter$1;->this$1:Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserGridAdapter;->notifyDataSetChanged()V

    .line 3554
    return-void
.end method
