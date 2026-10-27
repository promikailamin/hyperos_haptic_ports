.class public Lmiui/stepcounter/StepCell;
.super Ljava/lang/Object;
.source "StepCell.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "StepCell"

.field private static blacklist sLastInsertUri:Landroid/net/Uri;

.field private static blacklist sLastZeroInsert:Z


# instance fields
.field private blacklist mBeginTime:J

.field private blacklist mEndTime:J

.field private blacklist mId:I

.field private blacklist mMode:I

.field private blacklist mSteps:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/stepcounter/StepCell;->sLastZeroInsert:Z

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lmiui/stepcounter/StepCell;->sLastInsertUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(IJJII)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "mode"    # I
    .param p7, "steps"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lmiui/stepcounter/StepCell;->mId:I

    .line 26
    iput-wide p2, p0, Lmiui/stepcounter/StepCell;->mBeginTime:J

    .line 27
    iput-wide p4, p0, Lmiui/stepcounter/StepCell;->mEndTime:J

    .line 28
    iput p6, p0, Lmiui/stepcounter/StepCell;->mMode:I

    .line 29
    iput p7, p0, Lmiui/stepcounter/StepCell;->mSteps:I

    .line 30
    return-void
.end method

.method private blacklist insert(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .registers 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 73
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v0, "values":Landroid/content/ContentValues;
    iget-wide v1, p0, Lmiui/stepcounter/StepCell;->mBeginTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_begin_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    iget-wide v1, p0, Lmiui/stepcounter/StepCell;->mEndTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_end_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    iget v1, p0, Lmiui/stepcounter/StepCell;->mMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    iget v1, p0, Lmiui/stepcounter/StepCell;->mSteps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_steps"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    sget-object v1, Lmiui/stepcounter/StepSqlite;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist insert(Landroid/content/ContentResolver;Lmiui/stepcounter/StepCell;)V
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "step"    # Lmiui/stepcounter/StepCell;

    .line 92
    invoke-virtual {p1}, Lmiui/stepcounter/StepCell;->getSteps()I

    move-result v0

    if-nez v0, :cond_e

    sget-boolean v0, Lmiui/stepcounter/StepCell;->sLastZeroInsert:Z

    if-eqz v0, :cond_e

    .line 93
    invoke-direct {p1, p0}, Lmiui/stepcounter/StepCell;->update(Landroid/content/ContentResolver;)V

    goto :goto_21

    .line 95
    :cond_e
    invoke-direct {p1, p0}, Lmiui/stepcounter/StepCell;->insert(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/stepcounter/StepCell;->sLastInsertUri:Landroid/net/Uri;

    .line 96
    invoke-virtual {p1}, Lmiui/stepcounter/StepCell;->getSteps()I

    move-result v0

    if-nez v0, :cond_1e

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lmiui/stepcounter/StepCell;->sLastZeroInsert:Z

    goto :goto_21

    .line 99
    :cond_1e
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/stepcounter/StepCell;->sLastZeroInsert:Z

    .line 102
    :goto_21
    return-void
.end method

.method public static blacklist timestampToString(J)Ljava/lang/String;
    .registers 5
    .param p0, "time"    # J

    .line 111
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 112
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss:sss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "sf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist update(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v0, "values":Landroid/content/ContentValues;
    iget-wide v1, p0, Lmiui/stepcounter/StepCell;->mEndTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_end_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_steps"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    sget-object v1, Lmiui/stepcounter/StepCell;->sLastInsertUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 89
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Steps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/stepcounter/StepCell;->mSteps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/stepcounter/StepCell;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", BeginTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmiui/stepcounter/StepCell;->mBeginTime:J

    .line 106
    invoke-static {v1, v2}, Lmiui/stepcounter/StepCell;->timestampToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", EndTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmiui/stepcounter/StepCell;->mEndTime:J

    .line 107
    invoke-static {v1, v2}, Lmiui/stepcounter/StepCell;->timestampToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public blacklist getBeginTime()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lmiui/stepcounter/StepCell;->mBeginTime:J

    return-wide v0
.end method

.method public blacklist getEndTime()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lmiui/stepcounter/StepCell;->mEndTime:J

    return-wide v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 33
    iget v0, p0, Lmiui/stepcounter/StepCell;->mId:I

    return v0
.end method

.method public blacklist getMode()I
    .registers 2

    .line 57
    iget v0, p0, Lmiui/stepcounter/StepCell;->mMode:I

    return v0
.end method

.method public blacklist getSteps()I
    .registers 2

    .line 65
    iget v0, p0, Lmiui/stepcounter/StepCell;->mSteps:I

    return v0
.end method

.method public blacklist setBeginTime(J)V
    .registers 3
    .param p1, "beginTime"    # J

    .line 45
    iput-wide p1, p0, Lmiui/stepcounter/StepCell;->mBeginTime:J

    .line 46
    return-void
.end method

.method public blacklist setEndTime(J)V
    .registers 3
    .param p1, "endTime"    # J

    .line 53
    iput-wide p1, p0, Lmiui/stepcounter/StepCell;->mEndTime:J

    .line 54
    return-void
.end method

.method public blacklist setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 37
    iput p1, p0, Lmiui/stepcounter/StepCell;->mId:I

    .line 38
    return-void
.end method

.method public blacklist setMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 61
    iput p1, p0, Lmiui/stepcounter/StepCell;->mMode:I

    .line 62
    return-void
.end method

.method public blacklist setSteps(I)V
    .registers 2
    .param p1, "beginSteps"    # I

    .line 69
    iput p1, p0, Lmiui/stepcounter/StepCell;->mSteps:I

    .line 70
    return-void
.end method
