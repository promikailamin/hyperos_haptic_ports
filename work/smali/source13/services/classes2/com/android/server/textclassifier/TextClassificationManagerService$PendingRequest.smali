.class final Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingRequest"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mName:Ljava/lang/String;

.field private final mOnServiceFailure:Ljava/lang/Runnable;

.field private final mRequest:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

.field private final mServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field private final mUid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBinder(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmName(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnServiceFailure(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequest(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mRequest:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUid(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)I
    .registers 1

    iget p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mUid:I

    return p0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;I)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
    .param p3, "onServiceFailure"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "service"    # Lcom/android/server/textclassifier/TextClassificationManagerService;
    .param p6, "serviceState"    # Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .param p7, "uid"    # I

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mName:Ljava/lang/String;

    .line 603
    nop

    .line 604
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    const-string v1, "handling pending request"

    invoke-static {v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$smlogOnFailure(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mRequest:Ljava/lang/Runnable;

    .line 605
    nop

    .line 606
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    const-string/jumbo v1, "notifying callback of service failure"

    invoke-static {v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$smlogOnFailure(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;

    .line 608
    iput-object p4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    .line 609
    iput-object p5, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 610
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 611
    if-eqz p4, :cond_3b

    .line 613
    const/4 v0, 0x0

    :try_start_33
    invoke-interface {p4, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    .line 616
    goto :goto_3b

    .line 614
    :catch_37
    move-exception v0

    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 618
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3b
    :goto_3b
    iput p7, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mUid:I

    .line 619
    return-void
.end method

.method private removeLocked()V
    .registers 3

    .line 631
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    invoke-virtual {v0, p0}, Lcom/android/server/textclassifier/FixedSizeQueue;->remove(Ljava/lang/Object;)Z

    .line 632
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_f

    .line 633
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 635
    :cond_f
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 623
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 625
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->removeLocked()V

    .line 626
    monitor-exit v0

    .line 627
    return-void

    .line 626
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1
.end method
