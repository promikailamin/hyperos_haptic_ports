.class public Lcom/android/server/trust/TrustArchive;
.super Ljava/lang/Object;
.source "TrustArchive.java"


# instance fields
.field public mEvents:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .registers 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    invoke-static {p0, p1, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatElapsed(J)Ljava/lang/String;
    .registers 4

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p0, v0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr p0, v0

    .line 168
    invoke-static {p0, p1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3

    .line 172
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    if-ltz v0, :cond_18

    add-int/lit8 v0, v0, 0x1

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_18
    return-object p0
.end method


# virtual methods
.method public final addEvent(Lcom/android/server/trust/TrustArchive$Event;)V
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_f

    .line 114
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 116
    :cond_f
    iget-object p0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V
    .registers 14

    .line 122
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 123
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ab

    if-ge v2, p2, :cond_ab

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v4, -0x1

    if-eq p3, v4, :cond_20

    .line 125
    iget v5, v3, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    if-eq p3, v5, :cond_20

    if-eq v5, v4, :cond_20

    goto :goto_8

    .line 130
    :cond_20
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, v3, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    invoke-static {v6, v7}, Lcom/android/server/trust/TrustArchive;->formatElapsed(J)Ljava/lang/String;

    move-result-object v6

    iget v7, v3, Lcom/android/server/trust/TrustArchive$Event;->type:I

    .line 132
    invoke-virtual {p0, v7}, Lcom/android/server/trust/TrustArchive;->dumpType(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 131
    const-string v6, "#%-2d %s %s: "

    invoke-virtual {p1, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    if-ne p3, v4, :cond_4e

    .line 134
    const-string/jumbo v4, "user="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    :cond_4e
    iget-object v4, v3, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    if-eqz v4, :cond_6c

    .line 137
    const-string v4, "agent="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_63

    .line 139
    iget-object v4, v3, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6c

    .line 141
    :cond_63
    iget-object v4, v3, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-static {v4}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    :cond_6c
    :goto_6c
    iget v4, v3, Lcom/android/server/trust/TrustArchive$Event;->type:I

    if-eqz v4, :cond_8d

    const/4 v5, 0x6

    if-eq v4, v5, :cond_74

    goto :goto_a4

    .line 150
    :cond_74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", managingTrust="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v3, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_a4

    .line 146
    :cond_8d
    iget-object v4, v3, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    iget-wide v5, v3, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    .line 147
    invoke-static {v5, v6}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    iget v3, v3, Lcom/android/server/trust/TrustArchive$Event;->flags:I

    invoke-virtual {p0, v3}, Lcom/android/server/trust/TrustArchive;->dumpGrantFlags(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 146
    const-string v4, ", message=\"%s\", duration=%s, flags=%s"

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 154
    :goto_a4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_ab
    return-void
.end method

.method public final dumpGrantFlags(I)Ljava/lang/String;
    .registers 4

    .line 207
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/16 v1, 0x7c

    if-eqz v0, :cond_19

    .line 209
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    :cond_14
    const-string v0, "INITIATED_BY_USER"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2b

    .line 213
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :cond_26
    const-string p1, "DISMISS_KEYGUARD"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_36

    const/16 p1, 0x30

    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dumpType(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_36

    .line 202
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 200
    :pswitch_1a
    const-string p0, "UserLocked"

    return-object p0

    .line 198
    :pswitch_1d
    const-string p0, "DevicePolicyChanged"

    return-object p0

    .line 196
    :pswitch_20
    const-string p0, "ManagingTrust"

    return-object p0

    .line 194
    :pswitch_23
    const-string p0, "AgentStopped"

    return-object p0

    .line 192
    :pswitch_26
    const-string p0, "AgentConnected"

    return-object p0

    .line 190
    :pswitch_29
    const-string p0, "AgentDied"

    return-object p0

    .line 188
    :pswitch_2c
    const-string p0, "TrustTimeout"

    return-object p0

    .line 186
    :pswitch_2f
    const-string p0, "RevokeTrust"

    return-object p0

    .line 184
    :pswitch_32
    const-string p0, "GrantTrust"

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public logAgentConnected(ILandroid/content/ComponentName;)V
    .registers 13

    .line 93
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x4

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logAgentDied(ILandroid/content/ComponentName;)V
    .registers 13

    .line 89
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logAgentStopped(ILandroid/content/ComponentName;)V
    .registers 13

    .line 97
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x5

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logDevicePolicyChanged()V
    .registers 11

    .line 105
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logGrantTrust(ILandroid/content/ComponentName;Ljava/lang/String;JI)V
    .registers 17

    .line 76
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logManagingTrust(ILandroid/content/ComponentName;Z)V
    .registers 14

    .line 101
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x6

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move v2, p1

    move-object v3, p2

    move v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logRevokeTrust(ILandroid/content/ComponentName;)V
    .registers 13

    .line 81
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logTrustTimeout(ILandroid/content/ComponentName;)V
    .registers 13

    .line 85
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method

.method public logUserLocked(ILandroid/content/ComponentName;)V
    .registers 13

    .line 109
    new-instance v0, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v1, 0x8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    return-void
.end method
