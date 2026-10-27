.class public Lmiui/stepcounter/StepMode;
.super Ljava/lang/Object;
.source "StepMode.java"


# static fields
.field public static final blacklist MIN_STEPS:I = 0x1

.field public static final blacklist RUNNING:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "StepMode"

.field public static final blacklist TREADMILL:I = 0x3

.field public static final blacklist WALKING:I = 0x1

.field private static blacklist sDEBUG:Z


# instance fields
.field private blacklist mBegin:I

.field private blacklist mEnd:I

.field private blacklist mModeArray:Landroid/util/SparseIntArray;

.field private blacklist mStepCellList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/stepcounter/StepDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/stepcounter/StepMode;->sDEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;II)V
    .registers 5
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/stepcounter/StepDetector;",
            ">;II)V"
        }
    .end annotation

    .line 28
    .local p1, "stepList":Ljava/util/List;, "Ljava/util/List<Lmiui/stepcounter/StepDetector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lmiui/stepcounter/StepMode;->mStepCellList:Ljava/util/List;

    .line 30
    iput p2, p0, Lmiui/stepcounter/StepMode;->mBegin:I

    .line 31
    iput p3, p0, Lmiui/stepcounter/StepMode;->mEnd:I

    .line 32
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lmiui/stepcounter/StepMode;->mModeArray:Landroid/util/SparseIntArray;

    .line 33
    return-void
.end method

.method private blacklist addStep(Lmiui/stepcounter/StepDetector;)V
    .registers 5
    .param p1, "step"    # Lmiui/stepcounter/StepDetector;

    .line 40
    invoke-virtual {p1}, Lmiui/stepcounter/StepDetector;->getMode()I

    move-result v0

    .line 41
    .local v0, "mode":I
    iget-object v1, p0, Lmiui/stepcounter/StepMode;->mModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 42
    .local v1, "value":I
    iget-object v2, p0, Lmiui/stepcounter/StepMode;->mModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    return-void
.end method

.method private blacklist insertIntoSqlite(Landroid/content/ContentResolver;JJII)V
    .registers 17
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "steps"    # I
    .param p7, "mode"    # I

    .line 47
    cmp-long v0, p2, p4

    if-gez v0, :cond_15

    .line 48
    new-instance v8, Lmiui/stepcounter/StepCell;

    const/4 v1, -0x1

    move-object v0, v8

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p7

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lmiui/stepcounter/StepCell;-><init>(IJJII)V

    .line 49
    .local v0, "step":Lmiui/stepcounter/StepCell;
    move-object v1, p1

    invoke-static {p1, v0}, Lmiui/stepcounter/StepCell;->insert(Landroid/content/ContentResolver;Lmiui/stepcounter/StepCell;)V

    goto :goto_16

    .line 47
    .end local v0    # "step":Lmiui/stepcounter/StepCell;
    :cond_15
    move-object v1, p1

    .line 51
    :goto_16
    return-void
.end method

.method private blacklist reset()V
    .registers 2

    .line 36
    iget-object v0, p0, Lmiui/stepcounter/StepMode;->mModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 37
    return-void
.end method

.method public static blacklist timestampToString(J)Ljava/lang/String;
    .registers 5
    .param p0, "time"    # J

    .line 86
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 87
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss:sss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "sf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist updateDebug(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 82
    sput-boolean p0, Lmiui/stepcounter/StepMode;->sDEBUG:Z

    .line 83
    return-void
.end method


# virtual methods
.method public blacklist run(Landroid/content/ContentResolver;)V
    .registers 20
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 55
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lmiui/stepcounter/StepMode;->reset()V

    .line 56
    iget v0, v8, Lmiui/stepcounter/StepMode;->mBegin:I

    .local v0, "pos":I
    :goto_7
    iget v1, v8, Lmiui/stepcounter/StepMode;->mEnd:I

    if-gt v0, v1, :cond_19

    .line 57
    iget-object v1, v8, Lmiui/stepcounter/StepMode;->mStepCellList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/stepcounter/StepDetector;

    invoke-direct {v8, v1}, Lmiui/stepcounter/StepMode;->addStep(Lmiui/stepcounter/StepDetector;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 59
    .end local v0    # "pos":I
    :cond_19
    iget-object v0, v8, Lmiui/stepcounter/StepMode;->mStepCellList:Ljava/util/List;

    iget v1, v8, Lmiui/stepcounter/StepMode;->mBegin:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/stepcounter/StepDetector;

    invoke-virtual {v0}, Lmiui/stepcounter/StepDetector;->getTimestamp()J

    move-result-wide v9

    .line 60
    .local v9, "beginTime":J
    iget-object v0, v8, Lmiui/stepcounter/StepMode;->mStepCellList:Ljava/util/List;

    iget v1, v8, Lmiui/stepcounter/StepMode;->mEnd:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/stepcounter/StepDetector;

    invoke-virtual {v0}, Lmiui/stepcounter/StepDetector;->getTimestamp()J

    move-result-wide v11

    .line 61
    .local v11, "endTime":J
    iget-object v0, v8, Lmiui/stepcounter/StepMode;->mModeArray:Landroid/util/SparseIntArray;

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v14

    .line 62
    .local v14, "stepWalking":I
    iget-object v0, v8, Lmiui/stepcounter/StepMode;->mModeArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    .line 63
    .local v15, "stepRunning":I
    iget-object v0, v8, Lmiui/stepcounter/StepMode;->mModeArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 64
    .local v7, "stepTreadmill":I
    sget-boolean v0, Lmiui/stepcounter/StepMode;->sDEBUG:Z

    if-eqz v0, :cond_a8

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Walking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tTreadmill: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tbegin time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    invoke-static {v9, v10}, Lmiui/stepcounter/StepMode;->timestampToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tend time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    invoke-static {v11, v12}, Lmiui/stepcounter/StepMode;->timestampToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "StepMode"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_a8
    if-le v14, v13, :cond_bb

    .line 71
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v9

    move-wide v4, v11

    move v6, v14

    move/from16 v17, v7

    .end local v7    # "stepTreadmill":I
    .local v17, "stepTreadmill":I
    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lmiui/stepcounter/StepMode;->insertIntoSqlite(Landroid/content/ContentResolver;JJII)V

    goto :goto_bd

    .line 70
    .end local v17    # "stepTreadmill":I
    .restart local v7    # "stepTreadmill":I
    :cond_bb
    move/from16 v17, v7

    .line 73
    .end local v7    # "stepTreadmill":I
    .restart local v17    # "stepTreadmill":I
    :goto_bd
    if-le v15, v13, :cond_ca

    .line 74
    const/4 v7, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v9

    move-wide v4, v11

    move v6, v15

    invoke-direct/range {v0 .. v7}, Lmiui/stepcounter/StepMode;->insertIntoSqlite(Landroid/content/ContentResolver;JJII)V

    .line 76
    :cond_ca
    move/from16 v7, v17

    .end local v17    # "stepTreadmill":I
    .restart local v7    # "stepTreadmill":I
    if-le v7, v13, :cond_dd

    .line 77
    const/4 v13, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v9

    move-wide v4, v11

    move v6, v7

    move/from16 v16, v7

    .end local v7    # "stepTreadmill":I
    .local v16, "stepTreadmill":I
    move v7, v13

    invoke-direct/range {v0 .. v7}, Lmiui/stepcounter/StepMode;->insertIntoSqlite(Landroid/content/ContentResolver;JJII)V

    goto :goto_df

    .line 76
    .end local v16    # "stepTreadmill":I
    .restart local v7    # "stepTreadmill":I
    :cond_dd
    move/from16 v16, v7

    .line 79
    .end local v7    # "stepTreadmill":I
    .restart local v16    # "stepTreadmill":I
    :goto_df
    return-void
.end method
