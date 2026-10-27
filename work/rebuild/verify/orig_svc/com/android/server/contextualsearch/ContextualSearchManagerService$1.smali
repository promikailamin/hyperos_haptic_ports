.class public Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;
.super Ljava/lang/Object;
.source "ContextualSearchManagerService.java"

# interfaces
.implements Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandleReceivedAssistDataLocked()Z
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmLock(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 134
    :try_start_7
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmStateCallback(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Landroid/app/contextualsearch/IContextualSearchCallback;

    move-result-object p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 135
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onAssistDataReceivedLocked(Landroid/os/Bundle;II)V
    .registers 6

    .line 144
    iget-object p2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {p2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmLock(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 145
    :try_start_7
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmStateCallback(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Landroid/app/contextualsearch/IContextualSearchCallback;

    move-result-object p0

    .line 146
    monitor-exit p2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_43

    if-eqz p0, :cond_39

    .line 150
    :try_start_10
    new-instance p2, Landroid/app/contextualsearch/ContextualSearchState;

    const-string/jumbo p3, "structure"

    const-class v0, Landroid/app/assist/AssistStructure;

    .line 151
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/assist/AssistStructure;

    const-string v0, "content"

    const-class v1, Landroid/app/assist/AssistContent;

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistContent;

    invoke-direct {p2, p3, v0, p1}, Landroid/app/contextualsearch/ContextualSearchState;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/os/Bundle;)V

    .line 150
    invoke-interface {p0, p2}, Landroid/app/contextualsearch/IContextualSearchCallback;->onResult(Landroid/app/contextualsearch/ContextualSearchState;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p0

    .line 155
    invoke-static {}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error invoking ContextualSearchCallback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 158
    :cond_39
    invoke-static {}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Callback went away!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_43
    move-exception p0

    .line 146
    :try_start_44
    monitor-exit p2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public onAssistRequestCompleted()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmLock(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 165
    :try_start_7
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fputmStateCallback(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/app/contextualsearch/IContextualSearchCallback;)V

    .line 166
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method
