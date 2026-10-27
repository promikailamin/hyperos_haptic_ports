.class Lcom/android/server/soundtrigger/SoundTriggerService$Operation;
.super Ljava/lang/Object;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;
    }
.end annotation


# instance fields
.field private final mDropOp:Ljava/lang/Runnable;

.field private final mExecuteOp:Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;

.field private final mSetupOp:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "setupOp"    # Ljava/lang/Runnable;
    .param p2, "executeOp"    # Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;
    .param p3, "cancelOp"    # Ljava/lang/Runnable;

    .line 1518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1519
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mSetupOp:Ljava/lang/Runnable;

    .line 1520
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mExecuteOp:Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;

    .line 1521
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mDropOp:Ljava/lang/Runnable;

    .line 1522
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;-><init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Ljava/lang/Runnable;)V

    return-void
.end method

.method private setup()V
    .registers 2

    .line 1525
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mSetupOp:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 1526
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1528
    :cond_7
    return-void
.end method


# virtual methods
.method drop()V
    .registers 2

    .line 1536
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->setup()V

    .line 1538
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mDropOp:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 1539
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1541
    :cond_a
    return-void
.end method

.method run(ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .registers 4
    .param p1, "opId"    # I
    .param p2, "service"    # Landroid/media/soundtrigger/ISoundTriggerDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1531
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->setup()V

    .line 1532
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mExecuteOp:Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;->run(ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V

    .line 1533
    return-void
.end method
