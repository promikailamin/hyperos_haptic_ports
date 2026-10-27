.class public Lcom/android/server/trust/TrustManagerService$3$1;
.super Ljava/lang/Object;
.source "TrustManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/trust/TrustManagerService$3;

.field public final synthetic val$fout:Ljava/io/PrintWriter;

.field public final synthetic val$userInfos:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService$3;Ljava/io/PrintWriter;Ljava/util/List;)V
    .registers 4

    .line 1958
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$3$1;->this$1:Lcom/android/server/trust/TrustManagerService$3;

    iput-object p2, p0, Lcom/android/server/trust/TrustManagerService$3$1;->val$fout:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/trust/TrustManagerService$3$1;->val$userInfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1961
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$3$1;->val$fout:Ljava/io/PrintWriter;

    const-string v1, "Trust manager state:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1962
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$3$1;->val$userInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1963
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$3$1;->this$1:Lcom/android/server/trust/TrustManagerService$3;

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$3$1;->val$fout:Ljava/io/PrintWriter;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, v2, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v5}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result v5

    if-ne v4, v5, :cond_29

    const/4 v4, 0x1

    goto :goto_2a

    :cond_29
    const/4 v4, 0x0

    :goto_2a
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/trust/TrustManagerService$3;->-$$Nest$mdumpUser(Lcom/android/server/trust/TrustManagerService$3;Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V

    goto :goto_d

    .line 1965
    :cond_2e
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$3$1;->this$1:Lcom/android/server/trust/TrustManagerService$3;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmSignificantPlaceServiceWatcher(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 1966
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$3$1;->this$1:Lcom/android/server/trust/TrustManagerService$3;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmSignificantPlaceServiceWatcher(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$3$1;->val$fout:Ljava/io/PrintWriter;

    invoke-interface {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->dump(Ljava/io/PrintWriter;)V

    :cond_45
    return-void
.end method
