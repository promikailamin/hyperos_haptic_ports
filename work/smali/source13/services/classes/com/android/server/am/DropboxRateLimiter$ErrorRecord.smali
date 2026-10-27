.class Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;
.super Ljava/lang/Object;
.source "DropboxRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DropboxRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorRecord"
.end annotation


# instance fields
.field mCount:I

.field mStartTime:J

.field final synthetic this$0:Lcom/android/server/am/DropboxRateLimiter;


# direct methods
.method constructor <init>(Lcom/android/server/am/DropboxRateLimiter;JI)V
    .registers 5
    .param p2, "startTime"    # J
    .param p4, "count"    # I

    .line 142
    iput-object p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->this$0:Lcom/android/server/am/DropboxRateLimiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-wide p2, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    .line 144
    iput p4, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    .line 145
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 164
    iget v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    return v0
.end method

.method public getStartTime()J
    .registers 3

    .line 160
    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    return-wide v0
.end method

.method public incrementCount()V
    .registers 2

    .line 156
    iget v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    .line 157
    return-void
.end method

.method public setCount(I)V
    .registers 2
    .param p1, "count"    # I

    .line 152
    iput p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    .line 153
    return-void
.end method

.method public setStartTime(J)V
    .registers 3
    .param p1, "startTime"    # J

    .line 148
    iput-wide p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    .line 149
    return-void
.end method
