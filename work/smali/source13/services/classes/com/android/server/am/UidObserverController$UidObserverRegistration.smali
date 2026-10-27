.class final Lcom/android/server/am/UidObserverController$UidObserverRegistration;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UidObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UidObserverRegistration"
.end annotation


# static fields
.field private static final ORIG_ENUMS:[I

.field private static final PROTO_ENUMS:[I


# instance fields
.field private final mCutpoint:I

.field final mLastProcStates:Landroid/util/SparseIntArray;

.field mMaxDispatchTime:I

.field private final mPkg:Ljava/lang/String;

.field mSlowDispatchCount:I

.field private final mUid:I

.field private final mWhich:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 453
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->ORIG_ENUMS:[I

    .line 461
    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->PROTO_ENUMS:[I

    return-void

    :array_10
    .array-data 4
        0x4
        0x8
        0x2
        0x1
        0x20
        0x40
    .end array-data

    :array_20
    .array-data 4
        0x3
        0x4
        0x2
        0x1
        0x6
        0x7
    .end array-data
.end method

.method constructor <init>(ILjava/lang/String;II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "cutpoint"    # I

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    .line 472
    iput-object p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    .line 473
    iput p3, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    .line 474
    iput p4, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    .line 475
    if-ltz p4, :cond_13

    .line 476
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 477
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "observer"    # Landroid/app/IUidObserver;

    .line 480
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 482
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 486
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_32

    .line 488
    const-string v0, " IDLE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 490
    :cond_32
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3d

    .line 491
    const-string v0, " ACT"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 493
    :cond_3d
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_48

    .line 494
    const-string v0, " GONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 496
    :cond_48
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_53

    .line 497
    const-string v0, " CAP"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 499
    :cond_53
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6d

    .line 500
    const-string v0, " STATE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 501
    const-string v0, " (cut="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 503
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 505
    :cond_6d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 506
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_9a

    .line 507
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 508
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_79
    if-ge v1, v0, :cond_9a

    .line 509
    const-string v2, "      Last "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    iget-object v2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 511
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 515
    .end local v0    # "size":I
    .end local v1    # "j":I
    :cond_9a
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 17
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 518
    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 519
    .local v8, "token":J
    iget v1, v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    const-wide v10, 0x10500000001L

    invoke-virtual {p1, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 520
    iget-object v1, v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    const-wide v2, 0x10900000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 521
    iget v4, v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    sget-object v5, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->ORIG_ENUMS:[I

    sget-object v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->PROTO_ENUMS:[I

    const-wide v2, 0x20e00000003L

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 523
    iget v1, v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    const-wide v2, 0x10500000004L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 524
    iget-object v1, v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_64

    .line 525
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 526
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3c
    if-ge v2, v1, :cond_64

    .line 527
    const-wide v3, 0x20b00000005L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 528
    .local v3, "pToken":J
    iget-object v5, v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 529
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 528
    invoke-virtual {p1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 530
    const-wide v5, 0x10500000002L

    iget-object v12, v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 531
    invoke-virtual {v12, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    .line 530
    invoke-virtual {p1, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 532
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 526
    .end local v3    # "pToken":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 535
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_64
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 536
    return-void
.end method
