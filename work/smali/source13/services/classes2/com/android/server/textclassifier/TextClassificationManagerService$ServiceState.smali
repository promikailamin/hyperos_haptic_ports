.class final Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;
    }
.end annotation


# static fields
.field private static final MAX_PENDING_REQUESTS:I = 0x14


# instance fields
.field final mBindServiceFlags:I

.field mBinding:Z

.field mBoundComponentName:Landroid/content/ComponentName;

.field mBoundServiceUid:I

.field final mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

.field mEnabled:Z

.field mInstalled:Z

.field final mIsTrusted:Z

.field final mPackageName:Ljava/lang/String;

.field final mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/textclassifier/FixedSizeQueue<",
            "Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/service/textclassifier/ITextClassifierService;

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method static bridge synthetic -$$Nest$mbindIfHasPendingRequestsLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->bindIfHasPendingRequestsLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mbindLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->bindLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckRequestAcceptedLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;ILjava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->checkRequestAcceptedLocked(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePendingRequestsLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->handlePendingRequestsLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPackageInstallStatusChangeLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->onPackageInstallStatusChangeLocked(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPackageModifiedLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->onPackageModifiedLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePackageStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->updatePackageStateLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateServiceInfoLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;ILandroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->updateServiceInfoLocked(ILandroid/content/ComponentName;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;Z)V
    .registers 7
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isTrusted"    # Z

    .line 918
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    new-instance p1, Lcom/android/server/textclassifier/FixedSizeQueue;

    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$$ExternalSyntheticLambda0;-><init>()V

    const/16 v1, 0x14

    invoke-direct {p1, v1, v0}, Lcom/android/server/textclassifier/FixedSizeQueue;-><init>(ILcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;)V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    .line 907
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    .line 910
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    .line 919
    iput p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    .line 920
    iput-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    .line 921
    new-instance p1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    invoke-direct {p1, p0, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;I)V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    .line 922
    iput-boolean p4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    .line 923
    invoke-direct {p0, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->createBindServiceFlags(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBindServiceFlags:I

    .line 924
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isPackageInstalledForUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    .line 925
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isServiceEnabledForUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    .line 926
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;ZLcom/android/server/textclassifier/TextClassificationManagerService$ServiceState-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;Z)V

    return-void
.end method

.method private bindIfHasPendingRequestsLocked()Z
    .registers 2

    .line 1016
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    invoke-virtual {v0}, Lcom/android/server/textclassifier/FixedSizeQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->bindLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private bindLocked()Z
    .registers 10

    .line 1034
    const-string v0, "TextClassificationManagerService"

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isBoundLocked()Z

    move-result v1

    if-nez v1, :cond_79

    iget-boolean v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBinding:Z

    if-eqz v1, :cond_d

    goto :goto_79

    .line 1040
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1042
    .local v1, "identity":J
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->getTextClassifierServiceComponent()Landroid/content/ComponentName;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_74

    .line 1043
    .local v3, "componentName":Landroid/content/ComponentName;
    if-nez v3, :cond_1c

    .line 1045
    const/4 v0, 0x0

    .line 1057
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1045
    return v0

    .line 1047
    :cond_1c
    :try_start_1c
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.service.textclassifier.TextClassifierService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 1049
    .local v4, "serviceIntent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v5, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v5}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmContext(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    iget v7, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBindServiceFlags:I

    iget v8, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    .line 1051
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 1050
    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v5

    .line 1052
    .local v5, "willBind":Z
    if-nez v5, :cond_6d

    .line 1053
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not bind to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_6d
    iput-boolean v5, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBinding:Z
    :try_end_6f
    .catchall {:try_start_1c .. :try_end_6f} :catchall_74

    .line 1057
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1058
    nop

    .line 1059
    return v5

    .line 1057
    .end local v5    # "willBind":Z
    :catchall_74
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1058
    throw v0

    .line 1035
    .end local v1    # "identity":J
    :cond_79
    :goto_79
    const/4 v0, 0x1

    return v0
.end method

.method private checkRequestAcceptedLocked(ILjava/lang/String;)Z
    .registers 6
    .param p1, "requestUid"    # I
    .param p2, "methodName"    # Ljava/lang/String;

    .line 1088
    iget-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    if-ne p1, v0, :cond_a

    goto :goto_1b

    .line 1091
    :cond_a
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v2, "[%s] Non-default TextClassifierServices may only see text from the same uid."

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextClassificationManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    return v1

    .line 1089
    :cond_1b
    :goto_1b
    return v1
.end method

.method private createBindServiceFlags(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 930
    const v0, 0x4000001

    .line 931
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmDefaultTextClassifierPackage(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 932
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 934
    :cond_12
    return v0
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1071
    const-string v0, "context"

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmContext(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1072
    const-string/jumbo v0, "userId"

    iget v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1073
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1074
    :try_start_1e
    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1075
    const-string v1, "installed"

    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1076
    const-string v1, "enabled"

    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1077
    const-string v1, "boundComponentName"

    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1078
    const-string v1, "isTrusted"

    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1079
    const-string v1, "bindServiceFlags"

    iget v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBindServiceFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1080
    const-string v1, "boundServiceUid"

    iget v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1081
    const-string v1, "binding"

    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBinding:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1082
    const-string/jumbo v1, "numOfPendingRequests"

    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    invoke-virtual {v2}, Lcom/android/server/textclassifier/FixedSizeQueue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1083
    monitor-exit v0

    .line 1084
    return-void

    .line 1083
    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_1e .. :try_end_83} :catchall_81

    throw v1
.end method

.method private getTextClassifierServiceComponent()Landroid/content/ComponentName;
    .registers 4

    .line 1064
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmContext(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    .line 1067
    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    if-eqz v2, :cond_f

    const/high16 v2, 0x100000

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 1064
    :goto_10
    invoke-static {v0, v1, v2}, Landroid/service/textclassifier/TextClassifierService;->getServiceComponentName(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private handlePendingRequestsLocked()V
    .registers 7

    .line 993
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    invoke-virtual {v0}, Lcom/android/server/textclassifier/FixedSizeQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    move-object v1, v0

    .local v1, "request":Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;
    if-eqz v0, :cond_7e

    .line 994
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isBoundLocked()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "TextClassificationManagerService"

    if-eqz v0, :cond_4f

    .line 995
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmUid(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)I

    move-result v0

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmName(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->checkRequestAcceptedLocked(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 996
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmUid(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)I

    move-result v4

    .line 997
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v4, 0x1

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmName(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 996
    const-string v4, "UID %d is not allowed to see the %s request"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmOnServiceFailure(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_70

    .line 1000
    :cond_47
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmRequest(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_70

    .line 1003
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind TextClassifierService for PendingRequest "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmName(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmOnServiceFailure(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1008
    :goto_70
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmBinder(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1009
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmBinder(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 1012
    :cond_7e
    return-void
.end method

.method private isPackageInstalledForUser()Z
    .registers 5

    .line 939
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmContext(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 940
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_13} :catch_17

    if-eqz v2, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0

    .line 941
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_17
    move-exception v1

    .line 942
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isServiceEnabledForUser()Z
    .registers 6

    .line 947
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmContext(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 948
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.textclassifier.TextClassifierService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 949
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    iget v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 952
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_21

    const/4 v3, 0x0

    goto :goto_23

    :cond_21
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 953
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_23
    if-eqz v3, :cond_27

    const/4 v4, 0x1

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    :goto_28
    return v4
.end method

.method static synthetic lambda$new$0(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)V
    .registers 4
    .param p0, "request"    # Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    .line 898
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmName(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 899
    const-string v1, "Pending request[%s] is dropped"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 898
    const-string v1, "TextClassificationManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-static {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmOnServiceFailure(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 901
    return-void
.end method

.method private onPackageInstallStatusChangeLocked(Z)V
    .registers 2
    .param p1, "installed"    # Z

    .line 959
    iput-boolean p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    .line 960
    return-void
.end method

.method private onPackageModifiedLocked()V
    .registers 2

    .line 965
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isServiceEnabledForUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    .line 966
    return-void
.end method

.method private updatePackageStateLocked()V
    .registers 2

    .line 971
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isPackageInstalledForUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    .line 972
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isServiceEnabledForUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    .line 973
    return-void
.end method

.method private updateServiceInfoLocked(ILandroid/content/ComponentName;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 1099
    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    .line 1100
    nop

    .line 1101
    if-nez p2, :cond_7

    .line 1102
    const/4 v0, -0x1

    goto :goto_11

    .line 1103
    :cond_7
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$mresolvePackageToUid(Lcom/android/server/textclassifier/TextClassificationManagerService;Ljava/lang/String;I)I

    move-result v0

    :goto_11
    iput v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    .line 1104
    return-void
.end method


# virtual methods
.method isBoundLocked()Z
    .registers 2

    .line 987
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isEnabledLocked()Z
    .registers 2

    .line 982
    iget-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    return v0
.end method

.method isInstalledLocked()Z
    .registers 2

    .line 977
    iget-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    return v0
.end method

.method unbindIfBoundLocked()V
    .registers 3

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isBoundLocked()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unbinding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextClassificationManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmContext(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1024
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->cleanupService()V

    .line 1026
    :cond_3c
    return-void
.end method
