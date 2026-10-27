.class final Lcom/android/server/attention/AttentionManagerService$AttentionCheck;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttentionCheck"
.end annotation


# instance fields
.field private final mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

.field private final mIAttentionCallback:Landroid/service/attention/IAttentionCallback;

.field private mIsDispatched:Z

.field private mIsFulfilled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAttentionCallback(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Landroid/service/attention/IAttentionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDispatched(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFulfilled(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsDispatched(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFulfilled(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    return-void
.end method

.method constructor <init>(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V
    .registers 4
    .param p1, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
    .param p2, "service"    # Lcom/android/server/attention/AttentionManagerService;

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 617
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;-><init>(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Landroid/service/attention/IAttentionCallback;

    .line 647
    return-void
.end method


# virtual methods
.method cancelInternal()V
    .registers 3

    .line 650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    .line 651
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    .line 652
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 655
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "is dispatched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "is fulfilled:="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 659
    return-void
.end method
