.class Lcom/android/internal/app/MiuiResolverActivity$4;
.super Ljava/lang/Object;
.source "MiuiResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MiuiResolverActivity;->setupProfileTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiResolverActivity;

.field final synthetic blacklist val$tabHost:Landroid/widget/TabHost;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiResolverActivity;Landroid/widget/TabHost;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiResolverActivity;

    .line 2040
    iput-object p1, p0, Lcom/android/internal/app/MiuiResolverActivity$4;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/MiuiResolverActivity$4;->val$tabHost:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onProfilePageStateChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .line 2050
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity$4;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/MiuiResolverActivity;->onHorizontalSwipeStateChanged(I)V

    .line 2051
    return-void
.end method

.method public blacklist onProfileSelected(I)V
    .registers 3
    .param p1, "index"    # I

    .line 2043
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity$4;->val$tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2044
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity$4;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiResolverActivity;->resetButtonBar()V

    .line 2045
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity$4;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/MiuiResolverActivity;->-$$Nest$mresetCheckedItem(Lcom/android/internal/app/MiuiResolverActivity;)V

    .line 2046
    return-void
.end method
