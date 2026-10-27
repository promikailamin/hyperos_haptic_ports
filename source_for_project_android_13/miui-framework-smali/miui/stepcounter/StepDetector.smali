.class public Lmiui/stepcounter/StepDetector;
.super Ljava/lang/Object;
.source "StepDetector.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "StepDetector"


# instance fields
.field private blacklist mMode:I

.field private blacklist mTimestamp:J

.field private blacklist mTotal:I


# direct methods
.method public constructor blacklist <init>(IJI)V
    .registers 5
    .param p1, "total"    # I
    .param p2, "timestamp"    # J
    .param p4, "mode"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lmiui/stepcounter/StepDetector;->mTotal:I

    .line 18
    iput-wide p2, p0, Lmiui/stepcounter/StepDetector;->mTimestamp:J

    .line 19
    iput p4, p0, Lmiui/stepcounter/StepDetector;->mMode:I

    .line 20
    return-void
.end method

.method public static blacklist timestampToString(J)Ljava/lang/String;
    .registers 5
    .param p0, "time"    # J

    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 53
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss:sss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "sf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/stepcounter/StepDetector;->mTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/stepcounter/StepDetector;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmiui/stepcounter/StepDetector;->mTimestamp:J

    .line 48
    invoke-static {v1, v2}, Lmiui/stepcounter/StepDetector;->timestampToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public blacklist getMode()I
    .registers 2

    .line 39
    iget v0, p0, Lmiui/stepcounter/StepDetector;->mMode:I

    return v0
.end method

.method public blacklist getTimestamp()J
    .registers 3

    .line 31
    iget-wide v0, p0, Lmiui/stepcounter/StepDetector;->mTimestamp:J

    return-wide v0
.end method

.method public blacklist getTotal()I
    .registers 2

    .line 23
    iget v0, p0, Lmiui/stepcounter/StepDetector;->mTotal:I

    return v0
.end method

.method public blacklist setMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 43
    iput p1, p0, Lmiui/stepcounter/StepDetector;->mMode:I

    .line 44
    return-void
.end method

.method public blacklist setTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 35
    iput-wide p1, p0, Lmiui/stepcounter/StepDetector;->mTimestamp:J

    .line 36
    return-void
.end method

.method public blacklist setTotal(I)V
    .registers 2
    .param p1, "total"    # I

    .line 27
    iput p1, p0, Lmiui/stepcounter/StepDetector;->mTotal:I

    .line 28
    return-void
.end method
