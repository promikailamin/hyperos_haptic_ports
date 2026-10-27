.class public Lcom/android/server/audio/AudioEventLogger;
.super Ljava/lang/Object;
.source "AudioEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioEventLogger$StringEvent;,
        Lcom/android/server/audio/AudioEventLogger$Event;
    }
.end annotation


# instance fields
.field private final mEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/audio/AudioEventLogger$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final mMemSize:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "size"    # I
    .param p2, "title"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    .line 140
    iput p1, p0, Lcom/android/server/audio/AudioEventLogger;->mMemSize:I

    .line 141
    iput-object p2, p0, Lcom/android/server/audio/AudioEventLogger;->mTitle:Ljava/lang/String;

    .line 142
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 173
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio event log: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioEventLogger;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioEventLogger$Event;

    .line 175
    .local v1, "evt":Lcom/android/server/audio/AudioEventLogger$Event;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioEventLogger$Event;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_35

    .line 176
    .end local v1    # "evt":Lcom/android/server/audio/AudioEventLogger$Event;
    goto :goto_1f

    .line 177
    .end local p0    # "this":Lcom/android/server/audio/AudioEventLogger;
    :cond_33
    monitor-exit p0

    return-void

    .line 172
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    .registers 4
    .param p1, "evt"    # Lcom/android/server/audio/AudioEventLogger$Event;

    monitor-enter p0

    .line 145
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/audio/AudioEventLogger;->mMemSize:I

    if-lt v0, v1, :cond_10

    .line 146
    iget-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 148
    .end local p0    # "this":Lcom/android/server/audio/AudioEventLogger;
    :cond_10
    iget-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 149
    monitor-exit p0

    return-void

    .line 144
    .end local p1    # "evt":Lcom/android/server/audio/AudioEventLogger$Event;
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loglog(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "logType"    # I
    .param p3, "tag"    # Ljava/lang/String;

    monitor-enter p0

    .line 168
    :try_start_1
    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v0, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "event":Lcom/android/server/audio/AudioEventLogger$Event;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 170
    monitor-exit p0

    return-void

    .line 167
    .end local v0    # "event":Lcom/android/server/audio/AudioEventLogger$Event;
    .end local p0    # "this":Lcom/android/server/audio/AudioEventLogger;
    .end local p1    # "msg":Ljava/lang/String;
    .end local p2    # "logType":I
    .end local p3    # "tag":Ljava/lang/String;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loglogi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    monitor-enter p0

    .line 157
    :try_start_1
    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v0, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "event":Lcom/android/server/audio/AudioEventLogger$Event;
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 159
    monitor-exit p0

    return-void

    .line 156
    .end local v0    # "event":Lcom/android/server/audio/AudioEventLogger$Event;
    .end local p0    # "this":Lcom/android/server/audio/AudioEventLogger;
    .end local p1    # "msg":Ljava/lang/String;
    .end local p2    # "tag":Ljava/lang/String;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
