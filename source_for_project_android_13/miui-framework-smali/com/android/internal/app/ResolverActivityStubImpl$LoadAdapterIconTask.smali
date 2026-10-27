.class Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;
.super Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconTask;
.source "ResolverActivityStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadAdapterIconTask"
.end annotation


# instance fields
.field private blacklist adapter:Landroid/widget/BaseAdapter;

.field private blacklist bindIconOnly:Z

.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivityStubImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ResolverActivityStubImpl;Landroid/widget/BaseAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivityStubImpl;
    .param p2, "adapter"    # Landroid/widget/BaseAdapter;
    .param p3, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 654
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    .line 655
    invoke-direct {p0, p1, p3}, Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 656
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;->adapter:Landroid/widget/BaseAdapter;

    .line 657
    if-nez p2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;->bindIconOnly:Z

    .line 658
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/ResolverActivityStubImpl;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivityStubImpl;
    .param p2, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 650
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl;Landroid/widget/BaseAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;->bindIconOnly:Z

    .line 652
    return-void
.end method


# virtual methods
.method protected blacklist onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 662
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    .line 663
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;->bindIconOnly:Z

    if-eqz v0, :cond_d

    .line 664
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->-$$Nest$mbindOfficalRecommendIcon(Lcom/android/internal/app/ResolverActivityStubImpl;)V

    .line 665
    return-void

    .line 667
    :cond_d
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->-$$Nest$fgetmResolverActivity(Lcom/android/internal/app/ResolverActivityStubImpl;)Lcom/android/internal/app/MiuiResolverActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/MiuiResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-ne v0, v1, :cond_28

    .line 669
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->bindProfileView()V

    .line 671
    :cond_28
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 672
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 645
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityStubImpl$LoadAdapterIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
