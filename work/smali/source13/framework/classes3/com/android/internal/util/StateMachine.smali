.class public Lcom/android/internal/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$SmHandler;,
        Lcom/android/internal/util/StateMachine$LogRecords;,
        Lcom/android/internal/util/StateMachine$LogRec;
    }
.end annotation


# static fields
.field public static final blacklist HANDLED:Z = true

.field public static final blacklist NOT_HANDLED:Z = false

.field private static final blacklist SM_INIT_CMD:I = -0x2

.field private static final blacklist SM_QUIT_CMD:I = -0x1


# instance fields
.field private blacklist mName:Ljava/lang/String;

.field private blacklist mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

.field private blacklist mSmThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmName(Lcom/android/internal/util/StateMachine;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmThread(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmHandler(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmThread(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1311
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    .line 1312
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1313
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1315
    .local v0, "looper":Landroid/os/Looper;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1316
    return-void
.end method

.method protected constructor greylist-max-r <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1335
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1336
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1325
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1326
    return-void
.end method

.method private blacklist initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1300
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    .line 1301
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler-IA;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1302
    return-void
.end method


# virtual methods
.method public blacklist addLogRec(Ljava/lang/String;)V
    .registers 10
    .param p1, "string"    # Ljava/lang/String;

    .line 1573
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1574
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1575
    :cond_5
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentMessage(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentState(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmStateStack(Lcom/android/internal/util/StateMachine$SmHandler;)[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmStateStackTopIndex(Lcom/android/internal/util/StateMachine$SmHandler;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v6, v2, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmDestState(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/State;

    move-result-object v7

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    .line 1577
    return-void
.end method

.method public final greylist-max-r addState(Lcom/android/internal/util/State;)V
    .registers 4
    .param p1, "state"    # Lcom/android/internal/util/State;

    .line 1368
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$maddState(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1369
    return-void
.end method

.method public final blacklist addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .registers 4
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "parent"    # Lcom/android/internal/util/State;

    .line 1359
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$maddState(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1360
    return-void
.end method

.method public final blacklist copyLogRecs()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation

    .line 1556
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1557
    .local v0, "vlr":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/internal/util/StateMachine$LogRec;>;"
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1558
    .local v1, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-eqz v1, :cond_25

    .line 1559
    invoke-static {v1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/StateMachine$LogRecords;->-$$Nest$fgetmLogRecVector(Lcom/android/internal/util/StateMachine$LogRecords;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/StateMachine$LogRec;

    .line 1560
    .local v3, "lr":Lcom/android/internal/util/StateMachine$LogRec;
    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1561
    .end local v3    # "lr":Lcom/android/internal/util/StateMachine$LogRec;
    goto :goto_15

    .line 1563
    :cond_25
    return-object v0
.end method

.method public final blacklist deferMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1450
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mdeferMessage(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V

    .line 1451
    return-void
.end method

.method public greylist-max-r dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " total records="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getLogRecCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_35
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getLogRecSize()I

    move-result v1

    if-ge v0, v1, :cond_65

    .line 2097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rec["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2098
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2096
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 2100
    .end local v0    # "i":I
    :cond_65
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 2101
    .local v0, "curState":Lcom/android/internal/util/IState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_79

    const-string v2, "<QUIT>"

    goto :goto_7d

    :cond_79
    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_7d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2102
    return-void
.end method

.method public final blacklist getCurrentMessage()Landroid/os/Message;
    .registers 3

    .line 1395
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1396
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return-object v1

    .line 1397
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentMessage(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist getCurrentState()Lcom/android/internal/util/IState;
    .registers 3

    .line 1405
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1406
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return-object v1

    .line 1407
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentState(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 1608
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-object v0
.end method

.method public final blacklist getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;
    .registers 4
    .param p1, "index"    # I

    .line 1547
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1548
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return-object v1

    .line 1549
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->get(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist getLogRecCount()I
    .registers 3

    .line 1537
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1538
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return v1

    .line 1539
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->count()I

    move-result v1

    return v1
.end method

.method public final blacklist getLogRecMaxSize()I
    .registers 3

    .line 1527
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1528
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return v1

    .line 1529
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->-$$Nest$fgetmMaxSize(Lcom/android/internal/util/StateMachine$LogRecords;)I

    move-result v1

    return v1
.end method

.method public final blacklist getLogRecSize()I
    .registers 3

    .line 1516
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1517
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return v1

    .line 1518
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->size()I

    move-result v1

    return v1
.end method

.method protected blacklist getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1594
    const-string v0, ""

    return-object v0
.end method

.method public final blacklist getName()Ljava/lang/String;
    .registers 2

    .line 1490
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getWhatToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "what"    # I

    .line 1601
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist haltedProcessMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1467
    return-void
.end method

.method protected final blacklist hasDeferredMessages(I)Z
    .registers 7
    .param p1, "what"    # I

    .line 1991
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1992
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1994
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmDeferredMessages(Lcom/android/internal/util/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1995
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1996
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 1997
    .local v3, "msg":Landroid/os/Message;
    iget v4, v3, Landroid/os/Message;->what:I

    if-ne v4, p1, :cond_20

    const/4 v1, 0x1

    return v1

    .line 1998
    .end local v3    # "msg":Landroid/os/Message;
    :cond_20
    goto :goto_e

    .line 2000
    :cond_21
    return v1
.end method

.method protected final blacklist hasMessages(I)Z
    .registers 4
    .param p1, "what"    # I

    .line 2008
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2009
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return v1

    .line 2011
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->hasMessages(I)Z

    move-result v1

    return v1
.end method

.method public blacklist isDbg()Z
    .registers 3

    .line 2053
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2054
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return v1

    .line 2056
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$misDbg(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v1

    return v1
.end method

.method protected final blacklist isQuit(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2020
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2021
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_d

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1

    .line 2023
    :cond_d
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$misQuit(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2133
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    return-void
.end method

.method protected blacklist logAndAddLogRec(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2123
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->addLogRec(Ljava/lang/String;)V

    .line 2124
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 2125
    return-void
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2142
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2178
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 2188
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2189
    return-void
.end method

.method protected blacklist logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2160
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    return-void
.end method

.method protected blacklist logv(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2151
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    return-void
.end method

.method protected blacklist logw(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2169
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    return-void
.end method

.method public final blacklist obtainMessage()Landroid/os/Message;
    .registers 2

    .line 1622
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist obtainMessage(I)Landroid/os/Message;
    .registers 3
    .param p1, "what"    # I

    .line 1637
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist obtainMessage(II)Landroid/os/Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 1672
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final greylist obtainMessage(III)Landroid/os/Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1691
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-r obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1711
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1654
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist onHalting()V
    .registers 1

    .line 1475
    return-void
.end method

.method protected blacklist onPostHandleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1351
    return-void
.end method

.method protected blacklist onPreHandleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1343
    return-void
.end method

.method protected blacklist onQuitting()V
    .registers 1

    .line 1484
    return-void
.end method

.method public final blacklist quit()V
    .registers 2

    .line 2031
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2032
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 2034
    :cond_5
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mquit(Lcom/android/internal/util/StateMachine$SmHandler;)V

    .line 2035
    return-void
.end method

.method public final blacklist quitNow()V
    .registers 2

    .line 2042
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2043
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 2045
    :cond_5
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mquitNow(Lcom/android/internal/util/StateMachine$SmHandler;)V

    .line 2046
    return-void
.end method

.method protected blacklist recordLogRec(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1583
    const/4 v0, 0x1

    return v0
.end method

.method protected final blacklist removeDeferredMessages(I)V
    .registers 6
    .param p1, "what"    # I

    .line 1977
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1978
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1980
    :cond_5
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmDeferredMessages(Lcom/android/internal/util/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1981
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1982
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1983
    .local v2, "msg":Landroid/os/Message;
    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p1, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1984
    .end local v2    # "msg":Landroid/os/Message;
    :cond_20
    goto :goto_d

    .line 1985
    :cond_21
    return-void
.end method

.method protected final blacklist removeMessages(I)V
    .registers 3
    .param p1, "what"    # I

    .line 1967
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1968
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1970
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->removeMessages(I)V

    .line 1971
    return-void
.end method

.method public final blacklist removeState(Lcom/android/internal/util/State;)V
    .registers 3
    .param p1, "state"    # Lcom/android/internal/util/State;

    .line 1376
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mremoveState(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V

    .line 1377
    return-void
.end method

.method public greylist sendMessage(I)V
    .registers 4
    .param p1, "what"    # I

    .line 1722
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1723
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1725
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1726
    return-void
.end method

.method public greylist-max-r sendMessage(II)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 1750
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1751
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1753
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1754
    return-void
.end method

.method public blacklist sendMessage(III)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1763
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1764
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1766
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1767
    return-void
.end method

.method public greylist-max-r sendMessage(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1777
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1778
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1780
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1781
    return-void
.end method

.method public greylist sendMessage(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1736
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1737
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1739
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1740
    return-void
.end method

.method public greylist sendMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1791
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1792
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1794
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1795
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(I)V
    .registers 4
    .param p1, "what"    # I

    .line 1884
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1885
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1887
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1888
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(II)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 1912
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1913
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1915
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1916
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(III)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1927
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1928
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1930
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1931
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1941
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1942
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1944
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1945
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1898
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1899
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1901
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1902
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1955
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1956
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1958
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1959
    return-void
.end method

.method public blacklist sendMessageDelayed(IIIJ)V
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "delayMillis"    # J

    .line 1843
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1844
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1846
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1847
    return-void
.end method

.method public blacklist sendMessageDelayed(IIILjava/lang/Object;J)V
    .registers 9
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delayMillis"    # J

    .line 1857
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1858
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1860
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p5, p6}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1861
    return-void
.end method

.method public blacklist sendMessageDelayed(IIJ)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "delayMillis"    # J

    .line 1830
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1831
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1833
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1834
    return-void
.end method

.method public blacklist sendMessageDelayed(IJ)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .line 1804
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1805
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1807
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1808
    return-void
.end method

.method public blacklist sendMessageDelayed(ILjava/lang/Object;J)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .line 1817
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1818
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1820
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1821
    return-void
.end method

.method public blacklist sendMessageDelayed(Landroid/os/Message;J)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .line 1870
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1871
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1873
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1874
    return-void
.end method

.method public blacklist setDbg(Z)V
    .registers 3
    .param p1, "dbg"    # Z

    .line 2066
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2067
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 2069
    :cond_5
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$msetDbg(Lcom/android/internal/util/StateMachine$SmHandler;Z)V

    .line 2070
    return-void
.end method

.method public final greylist-max-r setInitialState(Lcom/android/internal/util/State;)V
    .registers 3
    .param p1, "initialState"    # Lcom/android/internal/util/State;

    .line 1387
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$msetInitialState(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V

    .line 1388
    return-void
.end method

.method public final blacklist setLogOnlyTransitions(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 1508
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->setLogOnlyTransitions(Z)V

    .line 1509
    return-void
.end method

.method public final blacklist setLogRecSize(I)V
    .registers 3
    .param p1, "maxSize"    # I

    .line 1499
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->setSize(I)V

    .line 1500
    return-void
.end method

.method public greylist-max-r start()V
    .registers 2

    .line 2078
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 2079
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 2082
    :cond_5
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mcompleteConstruction(Lcom/android/internal/util/StateMachine$SmHandler;)V

    .line 2083
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 2106
    const-string v0, "(null)"

    .line 2107
    .local v0, "name":Ljava/lang/String;
    const-string v1, "(null)"

    .line 2109
    .local v1, "state":Ljava/lang/String;
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 2110
    iget-object v2, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v2}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentState(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_19} :catch_1b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_19} :catch_1b

    move-object v1, v2

    .line 2113
    goto :goto_1c

    .line 2111
    :catch_1b
    move-exception v2

    .line 2114
    :goto_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final greylist-max-r transitionTo(Lcom/android/internal/util/IState;)V
    .registers 3
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .line 1426
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mtransitionTo(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    .line 1427
    return-void
.end method

.method public final blacklist transitionToHaltingState()V
    .registers 3

    .line 1437
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmHaltingState(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$mtransitionTo(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    .line 1438
    return-void
.end method

.method protected blacklist unhandledMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1459
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmDbg(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V

    .line 1460
    :cond_20
    return-void
.end method
