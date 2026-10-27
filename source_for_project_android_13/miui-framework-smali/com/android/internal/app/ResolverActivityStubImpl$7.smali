.class Lcom/android/internal/app/ResolverActivityStubImpl$7;
.super Lcom/android/internal/content/PackageMonitor;
.source "ResolverActivityStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivityStubImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverActivityStubImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivityStubImpl;

    .line 776
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityStubImpl$7;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .line 789
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onSomePackagesChanged()V
    .registers 2

    .line 779
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$7;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 780
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$7;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityStubImpl;->mProfileView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 781
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$7;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->bindProfileView()V

    .line 783
    :cond_12
    return-void
.end method
