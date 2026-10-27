.class Lcom/android/internal/app/ResolverActivityStubImpl$6;
.super Ljava/lang/Object;
.source "ResolverActivityStubImpl.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivityStubImpl;->initOfficalRecommendView(Landroid/widget/RelativeLayout;)V
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

    .line 431
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityStubImpl$6;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLongClick(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 434
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$6;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 435
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl$6;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityStubImpl;->-$$Nest$fgetmResolverActivity(Lcom/android/internal/app/ResolverActivityStubImpl;)Lcom/android/internal/app/MiuiResolverActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/app/MiuiResolverActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    .line 436
    return v2
.end method
