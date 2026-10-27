.class public Lcom/android/server/biometrics/sensors/face/UsageStats;
.super Ljava/lang/Object;
.source "UsageStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;
    }
.end annotation


# static fields
.field private static final EVENT_LOG_SIZE:I = 0x64


# instance fields
.field private mAcceptCount:I

.field private mAcceptLatency:J

.field private mAuthenticationEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mErrorCount:Landroid/util/SparseIntArray;

.field private mErrorLatency:Landroid/util/SparseLongArray;

.field private mRejectCount:I

.field private mRejectLatency:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    .line 81
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:Landroid/util/SparseIntArray;

    .line 82
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:Landroid/util/SparseLongArray;

    .line 83
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V
    .registers 8
    .param p1, "event"    # Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 87
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_f

    .line 88
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 90
    :cond_f
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->-$$Nest$fgetmAuthenticated(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 93
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptCount:I

    .line 94
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptLatency:J

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->-$$Nest$fgetmLatency(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptLatency:J

    goto :goto_70

    .line 95
    :cond_2a
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->-$$Nest$fgetmError(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)I

    move-result v0

    if-nez v0, :cond_40

    .line 96
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectCount:I

    .line 97
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectLatency:J

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->-$$Nest$fgetmLatency(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectLatency:J

    goto :goto_70

    .line 99
    :cond_40
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:Landroid/util/SparseIntArray;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->-$$Nest$fgetmError(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:Landroid/util/SparseIntArray;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->-$$Nest$fgetmError(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:Landroid/util/SparseLongArray;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->-$$Nest$fgetmError(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:Landroid/util/SparseLongArray;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->-$$Nest$fgetmError(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->-$$Nest$fgetmLatency(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 102
    :goto_70
    return-void
.end method

.method public print(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Events since last reboot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 107
    .local v1, "event":Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .end local v1    # "event":Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;
    goto :goto_22

    .line 111
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Accept\tCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tLatency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptLatency:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tAverage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptCount:I

    const-wide/16 v4, 0x0

    if-lez v3, :cond_66

    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptLatency:J

    int-to-long v8, v3

    div-long/2addr v6, v8

    goto :goto_67

    :cond_66
    move-wide v6, v4

    :goto_67
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reject\tCount: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectLatency:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectCount:I

    if-lez v3, :cond_9a

    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectLatency:J

    int-to-long v8, v3

    div-long/2addr v6, v8

    goto :goto_9b

    :cond_9a
    move-wide v6, v4

    :goto_9b
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a7
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_111

    .line 117
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 118
    .local v3, "key":I
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 119
    .local v6, "count":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\tCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:Landroid/util/SparseLongArray;

    .line 120
    invoke-virtual {v8, v3, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 121
    if-lez v6, :cond_f1

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v3, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v8

    int-to-long v10, v6

    div-long/2addr v8, v10

    goto :goto_f2

    :cond_f1
    move-wide v8, v4

    :goto_f2
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    .line 122
    invoke-static {v8, v3, v9}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .end local v3    # "key":I
    .end local v6    # "count":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    .line 124
    .end local v0    # "i":I
    :cond_111
    return-void
.end method
