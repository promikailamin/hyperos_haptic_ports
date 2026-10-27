.class final Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;
.super Lcom/android/internal/util/RingBuffer;
.source "BroadcastResponseStatsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/BroadcastResponseStatsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;",
        ">",
        "Lcom/android/internal/util/RingBuffer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .registers 3
    .param p2, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;, "Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer<TT;>;"
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 100
    return-void
.end method


# virtual methods
.method public getContent(Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;)Ljava/lang/String;
    .registers 3
    .param p1, "data"    # Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    .line 144
    .local p0, "this":Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;, "Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method logBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V
    .registers 12
    .param p1, "sourceUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUser"    # Landroid/os/UserHandle;
    .param p4, "idForResponseEvent"    # J
    .param p6, "timeStampMs"    # J
    .param p8, "targetUidProcessState"    # I

    .line 105
    .local p0, "this":Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;, "Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    .line 106
    .local v0, "data":Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;
    if-nez v0, :cond_9

    return-void

    .line 108
    :cond_9
    invoke-interface {v0}, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;->reset()V

    .line 109
    move-object v1, v0

    check-cast v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;

    .line 110
    .local v1, "event":Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;
    iput p1, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->sourceUid:I

    .line 111
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput v2, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetUserId:I

    .line 112
    iput p8, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetUidProcessState:I

    .line 113
    iput-object p2, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetPackage:Ljava/lang/String;

    .line 114
    iput-wide p4, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->idForResponseEvent:J

    .line 115
    iput-wide p6, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->timestampMs:J

    .line 116
    return-void
.end method

.method logNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "timestampMs"    # J

    .line 121
    .local p0, "this":Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;, "Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    .line 122
    .local v0, "data":Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;
    if-nez v0, :cond_9

    return-void

    .line 124
    :cond_9
    invoke-interface {v0}, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;->reset()V

    .line 125
    move-object v1, v0

    check-cast v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;

    .line 126
    .local v1, "event":Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;
    iput p1, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->type:I

    .line 127
    iput-object p2, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->packageName:Ljava/lang/String;

    .line 128
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput v2, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->userId:I

    .line 129
    iput-wide p4, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->timestampMs:J

    .line 130
    return-void
.end method

.method public reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 133
    .local p0, "this":Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;, "Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    .line 134
    .local v0, "allData":[Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1c

    .line 135
    aget-object v2, v0, v1

    if-nez v2, :cond_10

    .line 136
    goto :goto_19

    .line 138
    :cond_10
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->getContent(Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 134
    :goto_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 140
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method
