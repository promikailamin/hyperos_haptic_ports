.class Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;
.super Ljava/lang/Object;
.source "ProtoStreamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/ProtoStreamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PowerEntityUtils"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpsys([Landroid/hardware/power/stats/PowerEntity;Ljava/io/PrintWriter;)V
    .registers 6
    .param p0, "powerEntity"    # [Landroid/hardware/power/stats/PowerEntity;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 96
    if-nez p0, :cond_3

    return-void

    .line 98
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_73

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerEntityId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v0

    iget v2, v2, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PowerEntityName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    aget-object v1, p0, v0

    iget-object v1, v1, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    if-eqz v1, :cond_70

    .line 102
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_36
    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v2, v2

    if-ge v1, v2, :cond_70

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  StateId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    iget-object v3, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/hardware/power/stats/State;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", StateName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    iget-object v3, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 98
    .end local v1    # "j":I
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 108
    .end local v0    # "i":I
    :cond_73
    return-void
.end method

.method public static getProtoBytes([Landroid/hardware/power/stats/PowerEntity;)[B
    .registers 3
    .param p0, "powerEntity"    # [Landroid/hardware/power/stats/PowerEntity;

    .line 53
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 54
    .local v0, "pos":Landroid/util/proto/ProtoOutputStream;
    invoke-static {p0, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;->packProtoMessage([Landroid/hardware/power/stats/PowerEntity;Landroid/util/proto/ProtoOutputStream;)V

    .line 55
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static packProtoMessage([Landroid/hardware/power/stats/PowerEntity;Landroid/util/proto/ProtoOutputStream;)V
    .registers 15
    .param p0, "powerEntity"    # [Landroid/hardware/power/stats/PowerEntity;
    .param p1, "pos"    # Landroid/util/proto/ProtoOutputStream;

    .line 60
    if-nez p0, :cond_3

    return-void

    .line 62
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_5b

    .line 63
    const-wide v1, 0x20b00000001L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 64
    .local v1, "peToken":J
    aget-object v3, p0, v0

    iget v3, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 65
    aget-object v3, p0, v0

    iget-object v3, v3, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    const-wide v6, 0x10900000002L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 66
    aget-object v3, p0, v0

    iget-object v3, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    if-eqz v3, :cond_55

    .line 67
    aget-object v3, p0, v0

    iget-object v3, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v3, v3

    .line 68
    .local v3, "statesLength":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_34
    if-ge v8, v3, :cond_55

    .line 69
    aget-object v9, p0, v0

    iget-object v9, v9, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v9, v9, v8

    .line 70
    .local v9, "state":Landroid/hardware/power/stats/State;
    const-wide v10, 0x20b00000003L

    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 71
    .local v10, "stateToken":J
    iget v12, v9, Landroid/hardware/power/stats/State;->id:I

    invoke-virtual {p1, v4, v5, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 72
    iget-object v12, v9, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 73
    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 68
    .end local v9    # "state":Landroid/hardware/power/stats/State;
    .end local v10    # "stateToken":J
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 76
    .end local v3    # "statesLength":I
    .end local v8    # "j":I
    :cond_55
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 62
    .end local v1    # "peToken":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 78
    .end local v0    # "i":I
    :cond_5b
    return-void
.end method

.method public static print([Landroid/hardware/power/stats/PowerEntity;)V
    .registers 6
    .param p0, "powerEntity"    # [Landroid/hardware/power/stats/PowerEntity;

    .line 81
    if-nez p0, :cond_3

    return-void

    .line 83
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_7c

    .line 84
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "powerEntityId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    iget v3, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", powerEntityName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    iget-object v3, v3, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    aget-object v1, p0, v0

    iget-object v1, v1, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    if-eqz v1, :cond_79

    .line 87
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3b
    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v2, v2

    if-ge v1, v2, :cond_79

    .line 88
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  StateId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v0

    iget-object v4, v4, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/hardware/power/stats/State;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", StateName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v0

    iget-object v4, v4, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 83
    .end local v1    # "j":I
    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 93
    .end local v0    # "i":I
    :cond_7c
    return-void
.end method
