.class Lcom/android/server/am/ComponentAliasResolver$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ComponentAliasResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ComponentAliasResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ComponentAliasResolver;


# direct methods
.method constructor <init>(Lcom/android/server/am/ComponentAliasResolver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ComponentAliasResolver;

    .line 135
    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 143
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    invoke-static {v0}, Lcom/android/server/am/ComponentAliasResolver;->-$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V

    .line 144
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    invoke-static {v0}, Lcom/android/server/am/ComponentAliasResolver;->-$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V

    .line 139
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 148
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    invoke-static {v0}, Lcom/android/server/am/ComponentAliasResolver;->-$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V

    .line 149
    return-void
.end method
