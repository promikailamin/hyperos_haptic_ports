.class Lcom/android/internal/app/ResolverActivityStubImpl$5;
.super Ljava/lang/Object;
.source "ResolverActivityStubImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 420
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityStubImpl$5;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 423
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$5;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityStubImpl;->mChosenView:Landroid/view/View;

    if-eq v0, p1, :cond_20

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$5;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityStubImpl;->mChosenView:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 424
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$5;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityStubImpl;->mChosenView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 425
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$5;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iput-object p1, v0, Lcom/android/internal/app/ResolverActivityStubImpl;->mChosenView:Landroid/view/View;

    .line 427
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$5;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iput v1, v0, Lcom/android/internal/app/ResolverActivityStubImpl;->mChosenIndex:I

    .line 429
    :cond_20
    return-void
.end method
