.class public Landroid/app/servertransaction/TransactionExecutorHelper;
.super Ljava/lang/Object;
.source "TransactionExecutorHelper.java"


# static fields
.field private static final greylist-max-o DESTRUCTION_PENALTY:I = 0xa

.field private static final greylist-max-o ON_RESUME_PRE_EXCUTION_STATES:[I

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final greylist-max-o mLifecycleSequence:Landroid/util/IntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 49
    const-class v0, Landroid/app/servertransaction/TransactionExecutorHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/servertransaction/TransactionExecutorHelper;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x2

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/app/servertransaction/TransactionExecutorHelper;->ON_RESUME_PRE_EXCUTION_STATES:[I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    return-void
.end method

.method private static blacklist findNextLifecycleItemIndex(Ljava/util/List;ILandroid/os/IBinder;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;I",
            "Landroid/os/IBinder;",
            ")I"
        }
    .end annotation

    .line 304
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 305
    nop

    :goto_5
    if-ge p1, v0, :cond_21

    .line 306
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/servertransaction/ClientTransactionItem;

    .line 307
    invoke-virtual {v1}, Landroid/app/servertransaction/ClientTransactionItem;->isActivityLifecycleItem()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v1}, Landroid/app/servertransaction/ClientTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 308
    return p1

    .line 305
    :cond_1e
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 311
    :cond_21
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist getActivityForToken(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Landroid/app/Activity;
    .registers 2

    .line 349
    if-nez p0, :cond_4

    .line 350
    const/4 p0, 0x0

    return-object p0

    .line 352
    :cond_4
    invoke-virtual {p1, p0}, Landroid/app/ClientTransactionHandler;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static blacklist getActivityName(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;
    .registers 3

    .line 331
    invoke-static {p0, p1}, Landroid/app/servertransaction/TransactionExecutorHelper;->getActivityForToken(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Landroid/app/Activity;

    move-result-object p1

    .line 332
    if-eqz p1, :cond_f

    .line 333
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 335
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not found for token: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getLifecycleRequestForCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/servertransaction/ActivityLifecycleItem;
    .registers 3

    .line 193
    invoke-virtual {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 195
    packed-switch v0, :pswitch_data_22

    .line 207
    :pswitch_7
    new-instance v0, Landroid/app/servertransaction/ResumeActivityItem;

    iget-object p0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/IBinder;ZZ)V

    goto :goto_20

    .line 204
    :pswitch_10
    new-instance v0, Landroid/app/servertransaction/StopActivityItem;

    iget-object p0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-direct {v0, p0}, Landroid/app/servertransaction/StopActivityItem;-><init>(Landroid/os/IBinder;)V

    .line 205
    goto :goto_20

    .line 201
    :pswitch_18
    new-instance v0, Landroid/app/servertransaction/PauseActivityItem;

    iget-object p0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-direct {v0, p0}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/IBinder;)V

    .line 202
    nop

    .line 212
    :goto_20
    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_18
        :pswitch_7
        :pswitch_18
        :pswitch_10
    .end packed-switch
.end method

.method static blacklist getShortActivityName(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;
    .registers 3

    .line 340
    invoke-static {p0, p1}, Landroid/app/servertransaction/TransactionExecutorHelper;->getActivityForToken(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Landroid/app/Activity;

    move-result-object p1

    .line 341
    if-eqz p1, :cond_f

    .line 342
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 344
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not found for token: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist getStateName(I)Ljava/lang/String;
    .registers 4

    .line 357
    packed-switch p0, :pswitch_data_38

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected lifecycle state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :pswitch_1c
    const-string p0, "ON_RESTART"

    return-object p0

    .line 373
    :pswitch_1f
    const-string p0, "ON_DESTROY"

    return-object p0

    .line 371
    :pswitch_22
    const-string p0, "ON_STOP"

    return-object p0

    .line 369
    :pswitch_25
    const-string p0, "ON_PAUSE"

    return-object p0

    .line 367
    :pswitch_28
    const-string p0, "ON_RESUME"

    return-object p0

    .line 365
    :pswitch_2b
    const-string p0, "ON_START"

    return-object p0

    .line 363
    :pswitch_2e
    const-string p0, "ON_CREATE"

    return-object p0

    .line 361
    :pswitch_31
    const-string p0, "PRE_ON_CREATE"

    return-object p0

    .line 359
    :pswitch_34
    const-string p0, "UNDEFINED"

    return-object p0

    nop

    :pswitch_data_38
    .packed-switch -0x1
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private static blacklist lastCallbackRequestingStateIndex(Ljava/util/List;IILandroid/os/IBinder;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;II",
            "Landroid/os/IBinder;",
            ")I"
        }
    .end annotation

    .line 245
    nop

    .line 246
    nop

    .line 247
    const/4 v0, -0x1

    move v1, v0

    move v2, v1

    :goto_5
    if-lt p2, p1, :cond_27

    .line 248
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/servertransaction/ClientTransactionItem;

    .line 249
    invoke-virtual {v3}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v4

    .line 250
    if-eq v4, v0, :cond_24

    invoke-virtual {v3}, Landroid/app/servertransaction/ClientTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p3, v3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 252
    if-eq v1, v0, :cond_21

    if-ne v1, v4, :cond_27

    .line 256
    :cond_21
    nop

    .line 257
    move v2, p2

    move v1, v4

    .line 247
    :cond_24
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    .line 264
    :cond_27
    return v2
.end method

.method private static greylist-max-o pathInvolvesDestruction(Landroid/util/IntArray;)Z
    .registers 6

    .line 220
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 221
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_14

    .line 222
    invoke-virtual {p0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_11

    .line 223
    const/4 p0, 0x1

    return p0

    .line 221
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 226
    :cond_14
    return v1
.end method

.method static blacklist shouldExcludeLastLifecycleState(Ljava/util/List;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;I)Z"
        }
    .end annotation

    .line 275
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ClientTransactionItem;

    .line 276
    invoke-virtual {v0}, Landroid/app/servertransaction/ClientTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 277
    invoke-virtual {v0}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v0

    .line 278
    const/4 v2, 0x0

    if-eqz v1, :cond_36

    const/4 v3, -0x1

    if-ne v0, v3, :cond_15

    goto :goto_36

    .line 282
    :cond_15
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v1}, Landroid/app/servertransaction/TransactionExecutorHelper;->findNextLifecycleItemIndex(Ljava/util/List;ILandroid/os/IBinder;)I

    move-result v4

    .line 284
    if-ne v4, v3, :cond_1e

    .line 286
    return v2

    .line 288
    :cond_1e
    nop

    .line 289
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 290
    invoke-virtual {v3}, Landroid/app/servertransaction/ActivityLifecycleItem;->getTargetState()I

    move-result v3

    if-eq v0, v3, :cond_2c

    .line 292
    return v2

    .line 295
    :cond_2c
    const/4 v0, 0x1

    sub-int/2addr v4, v0

    invoke-static {p0, p1, v4, v1}, Landroid/app/servertransaction/TransactionExecutorHelper;->lastCallbackRequestingStateIndex(Ljava/util/List;IILandroid/os/IBinder;)I

    move-result p0

    if-ne p1, p0, :cond_35

    move v2, v0

    :cond_35
    return v2

    .line 280
    :cond_36
    :goto_36
    return v2
.end method

.method static blacklist tId(Landroid/app/servertransaction/ClientTransaction;)Ljava/lang/String;
    .registers 3

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist transactionToString(Landroid/app/servertransaction/ClientTransaction;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;
    .registers 5

    .line 317
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 318
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 319
    invoke-static {p0}, Landroid/app/servertransaction/TransactionExecutorHelper;->tId(Landroid/app/servertransaction/ClientTransaction;)Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual {p0, v2, v1, p1}, Landroid/app/servertransaction/ClientTransaction;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/app/ClientTransactionHandler;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public greylist-max-o getClosestOfStates(Landroid/app/ActivityThread$ActivityClientRecord;[I)I
    .registers 9

    .line 166
    const/4 v0, -0x1

    if-eqz p2, :cond_3d

    array-length v1, p2

    if-nez v1, :cond_7

    goto :goto_3d

    .line 169
    :cond_7
    if-nez p1, :cond_11

    .line 171
    sget-object p1, Landroid/app/servertransaction/TransactionExecutorHelper;->TAG:Ljava/lang/String;

    const-string p2, "ActivityClientRecord was null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v0

    .line 175
    :cond_11
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result p1

    .line 176
    nop

    .line 177
    const/4 v1, 0x0

    const v2, 0x7fffffff

    move v3, v1

    :goto_1b
    array-length v4, p2

    if-ge v3, v4, :cond_3c

    .line 178
    aget v4, p2, v3

    invoke-virtual {p0, p1, v4, v1}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecyclePath(IIZ)Landroid/util/IntArray;

    .line 179
    iget-object v4, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v4

    .line 180
    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-static {v5}, Landroid/app/servertransaction/TransactionExecutorHelper;->pathInvolvesDestruction(Landroid/util/IntArray;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 181
    add-int/lit8 v4, v4, 0xa

    .line 183
    :cond_33
    if-le v2, v4, :cond_39

    .line 184
    nop

    .line 185
    aget v0, p2, v3

    move v2, v4

    .line 177
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 188
    :cond_3c
    return v0

    .line 167
    :cond_3d
    :goto_3d
    return v0
.end method

.method public greylist-max-o getClosestPreExecutionState(Landroid/app/ActivityThread$ActivityClientRecord;I)I
    .registers 5

    .line 144
    sparse-switch p2, :sswitch_data_2c

    .line 150
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pre-execution states for state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is not supported."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :sswitch_22
    sget-object p2, Landroid/app/servertransaction/TransactionExecutorHelper;->ON_RESUME_PRE_EXCUTION_STATES:[I

    invoke-virtual {p0, p1, p2}, Landroid/app/servertransaction/TransactionExecutorHelper;->getClosestOfStates(Landroid/app/ActivityThread$ActivityClientRecord;[I)I

    move-result p1

    return p1

    .line 146
    :sswitch_29
    const/4 p1, -0x1

    return p1

    nop

    :sswitch_data_2c
    .sparse-switch
        -0x1 -> :sswitch_29
        0x3 -> :sswitch_22
    .end sparse-switch
.end method

.method public greylist-max-o getLifecyclePath(IIZ)Landroid/util/IntArray;
    .registers 9

    .line 69
    const/4 v0, -0x1

    if-eq p1, v0, :cond_99

    if-eq p2, v0, :cond_99

    .line 72
    const/4 v0, 0x7

    if-eq p1, v0, :cond_91

    if-eq p2, v0, :cond_91

    .line 76
    if-nez p2, :cond_17

    if-ne p1, p2, :cond_f

    goto :goto_17

    .line 77
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only start in pre-onCreate state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_17
    :goto_17
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 81
    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-lt p2, p1, :cond_36

    .line 82
    if-ne p1, v1, :cond_2b

    if-ne p2, v2, :cond_2b

    .line 85
    iget-object p1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->add(I)V

    goto :goto_78

    .line 88
    :cond_2b
    add-int/2addr p1, v3

    :goto_2c
    if-gt p1, p2, :cond_78

    .line 89
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 88
    add-int/lit8 p1, p1, 0x1

    goto :goto_2c

    .line 93
    :cond_36
    const/4 v4, 0x4

    if-ne p1, v4, :cond_42

    const/4 v4, 0x3

    if-ne p2, v4, :cond_42

    .line 95
    iget-object p1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_78

    .line 96
    :cond_42
    if-gt p1, v2, :cond_61

    if-lt p2, v1, :cond_61

    .line 100
    add-int/2addr p1, v3

    :goto_47
    if-gt p1, v2, :cond_51

    .line 101
    iget-object v4, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v4, p1}, Landroid/util/IntArray;->add(I)V

    .line 100
    add-int/lit8 p1, p1, 0x1

    goto :goto_47

    .line 104
    :cond_51
    iget-object p1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    .line 106
    nop

    :goto_57
    if-gt v1, p2, :cond_78

    .line 107
    iget-object p1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {p1, v1}, Landroid/util/IntArray;->add(I)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 113
    :cond_61
    add-int/2addr p1, v3

    :goto_62
    const/4 v0, 0x6

    if-gt p1, v0, :cond_6d

    .line 114
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 113
    add-int/lit8 p1, p1, 0x1

    goto :goto_62

    .line 117
    :cond_6d
    move p1, v3

    :goto_6e
    if-gt p1, p2, :cond_78

    .line 118
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 117
    add-int/lit8 p1, p1, 0x1

    goto :goto_6e

    .line 124
    :cond_78
    :goto_78
    if-eqz p3, :cond_8e

    iget-object p1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p1

    if-eqz p1, :cond_8e

    .line 125
    iget-object p1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    iget-object p2, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {p1, p2}, Landroid/util/IntArray;->remove(I)V

    .line 128
    :cond_8e
    iget-object p1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    return-object p1

    .line 73
    :cond_91
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t start or finish in intermittent RESTART state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t resolve lifecycle path for undefined state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
