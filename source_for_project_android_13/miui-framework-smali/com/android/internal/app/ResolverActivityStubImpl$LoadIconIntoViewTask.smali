.class Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconIntoViewTask;
.super Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconTask;
.source "ResolverActivityStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconIntoViewTask"
.end annotation


# instance fields
.field private final blacklist mTargetView:Landroid/widget/ImageView;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivityStubImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ResolverActivityStubImpl;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/widget/ImageView;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivityStubImpl;
    .param p2, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "target"    # Landroid/widget/ImageView;

    .line 678
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconIntoViewTask;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    .line 679
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 680
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    .line 681
    return-void
.end method


# virtual methods
.method protected blacklist onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 685
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    .line 686
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 687
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 675
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityStubImpl$LoadIconIntoViewTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
