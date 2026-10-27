.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareLogging.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;
.implements Lcom/android/server/soundtrigger_middleware/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final NUM_EVENTS_TO_DUMP:I = 0x40

.field private static final TAG:Ljava/lang/String; = "SoundTriggerMiddlewareLogging"


# instance fields
.field private final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

.field private final mLastEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mlogExceptionWithObject(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logExceptionWithObject(Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogReturnWithObject(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logReturnWithObject(Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogVoidReturnWithObject(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logVoidReturnWithObject(Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 366
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;)V
    .registers 3
    .param p1, "delegate"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLastEvents:Ljava/util/LinkedList;

    .line 70
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 71
    return-void
.end method

.method private appendMessage(Ljava/lang/String;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .line 436
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;-><init>(Ljava/lang/String;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event-IA;)V

    .line 437
    .local v0, "event":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLastEvents:Ljava/util/LinkedList;

    monitor-enter v1

    .line 438
    :try_start_9
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLastEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_18

    .line 439
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLastEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 441
    :cond_18
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLastEvents:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 442
    monitor-exit v1

    .line 443
    return-void

    .line 442
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private varargs logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    .registers 10
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 107
    invoke-static {}, Landroid/media/permission/IdentityContext;->get()Landroid/media/permission/Identity;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logExceptionWithObject(Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method private logExceptionWithObject(Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "originatorIdentity"    # Landroid/media/permission/Identity;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "ex"    # Ljava/lang/Exception;
    .param p5, "args"    # [Ljava/lang/Object;

    .line 427
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 429
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 430
    invoke-static {p5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printArgs([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 427
    const-string v1, "%s[this=%s, client=%s](%s) threw"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "message":Ljava/lang/String;
    const-string v1, "SoundTriggerMiddlewareLogging"

    invoke-static {v1, v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->appendMessage(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method private varargs logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 10
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "retVal"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 111
    invoke-static {}, Landroid/media/permission/IdentityContext;->get()Landroid/media/permission/Identity;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logReturnWithObject(Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method private logReturnWithObject(Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "originatorIdentity"    # Landroid/media/permission/Identity;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "retVal"    # Ljava/lang/Object;
    .param p5, "args"    # [Ljava/lang/Object;

    .line 403
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 405
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 406
    invoke-static {p5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printArgs([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 407
    invoke-static {p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 403
    const-string v1, "%s[this=%s, client=%s](%s) -> %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "message":Ljava/lang/String;
    const-string v1, "SoundTriggerMiddlewareLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->appendMessage(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method private varargs logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 115
    invoke-static {}, Landroid/media/permission/IdentityContext;->get()Landroid/media/permission/Identity;

    move-result-object v0

    invoke-direct {p0, p0, v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logVoidReturnWithObject(Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method private logVoidReturnWithObject(Ljava/lang/Object;Landroid/media/permission/Identity;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "originatorIdentity"    # Landroid/media/permission/Identity;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 415
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 417
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 418
    invoke-static {p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printArgs([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 415
    const-string v1, "%s[this=%s, client=%s](%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "message":Ljava/lang/String;
    const-string v1, "SoundTriggerMiddlewareLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->appendMessage(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method private static printArgs([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "args"    # [Ljava/lang/Object;

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 381
    if-lez v1, :cond_10

    .line 382
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_10
    aget-object v2, p0, v1

    invoke-static {v0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 386
    .end local v1    # "i":I
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printObject(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 390
    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    .line 391
    return-void
.end method


# virtual methods
.method public attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 10
    .param p1, "handle"    # I
    .param p2, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 90
    const-string v0, "attach"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_5
    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;

    invoke-direct {v4, p0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V

    .line 91
    .local v4, "result":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;
    iget-object v5, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-virtual {v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->getCallbackWrapper()Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->attach(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V

    .line 92
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object p2, v5, v1

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_25

    .line 93
    return-object v4

    .line 94
    .end local v4    # "result":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;
    :catch_25
    move-exception v4

    .line 95
    .local v4, "e":Ljava/lang/Exception;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object p2, v3, v1

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 96
    throw v4
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 447
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 448
    const-string v0, "========================================="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    const-string v0, "Last events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    const-string v0, "========================================="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLastEvents:Ljava/util/LinkedList;

    monitor-enter v0

    .line 452
    :try_start_15
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLastEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;

    .line 453
    .local v2, "event":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;
    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;->timestamp:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 454
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 455
    iget-object v3, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;->message:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    .end local v2    # "event":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;
    goto :goto_1b

    .line 457
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_15 .. :try_end_43} :catchall_52

    .line 458
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 460
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    instance-of v1, v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    if-eqz v1, :cond_51

    .line 461
    check-cast v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/Dumpable;->dump(Ljava/io/PrintWriter;)V

    .line 463
    :cond_51
    return-void

    .line 457
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .registers 5

    .line 77
    const-string v0, "listModules"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v2

    .line 78
    .local v2, "result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    .line 79
    return-object v2

    .line 80
    .end local v2    # "result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :catch_f
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 82
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
