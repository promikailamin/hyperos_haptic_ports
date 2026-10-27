.class Lcom/android/internal/app/ResolverActivityStubImpl$3;
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

    .line 294
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityStubImpl$3;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 297
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$3;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityStubImpl;->-$$Nest$fgetmResolverActivity(Lcom/android/internal/app/ResolverActivityStubImpl;)Lcom/android/internal/app/MiuiResolverActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityStubImpl$3;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget v1, v1, Lcom/android/internal/app/ResolverActivityStubImpl;->mChosenIndex:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/MiuiResolverActivity;->startSelected(IZZ)V

    .line 298
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityStubImpl$3;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityStubImpl;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityStubImpl$3;->this$0:Lcom/android/internal/app/ResolverActivityStubImpl;

    iget v3, v3, Lcom/android/internal/app/ResolverActivityStubImpl;->mChosenIndex:I

    const-string v4, "always"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/app/ResolverActivityStubImpl;->sendItemSelectedAnalyticsBroadcast(Ljava/util/List;IZLjava/lang/String;)V

    .line 300
    return-void
.end method
