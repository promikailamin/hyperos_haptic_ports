.class Lcom/android/internal/app/MiuiChooserActivity$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MiuiChooserActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiChooserActivity;

.field final synthetic blacklist val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiChooserActivity;

    .line 1167
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$2;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/MiuiChooserActivity$2;->val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSomePackagesChanged()V
    .registers 3

    .line 1170
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$2;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$2;->val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-static {v0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$mhandlePackagesChanged(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/ResolverListAdapter;)V

    .line 1171
    return-void
.end method
