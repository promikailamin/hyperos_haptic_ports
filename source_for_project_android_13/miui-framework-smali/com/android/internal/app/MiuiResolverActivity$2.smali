.class Lcom/android/internal/app/MiuiResolverActivity$2;
.super Ljava/lang/Object;
.source "MiuiResolverActivity.java"

# interfaces
.implements Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;


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

    .line 515
    iput-object p1, p0, Lcom/android/internal/app/MiuiResolverActivity$2;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDismissed()V
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/android/internal/app/MiuiResolverActivity$2;->this$0:Lcom/android/internal/app/MiuiResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiResolverActivity;->finish()V

    .line 519
    return-void
.end method
