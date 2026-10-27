.class Lcom/android/internal/app/ResolverActivityStubImpl$1;
.super Ljava/lang/Object;
.source "ResolverActivityStubImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivityStubImpl;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)V
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

    .line 242
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityStubImpl$1;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 245
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$1;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->-$$Nest$fgetmResolverActivity(Lcom/android/internal/app/ResolverActivityStubImpl;)Lcom/android/internal/app/MiuiResolverActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiResolverActivity;->finish()V

    .line 246
    return-void
.end method
