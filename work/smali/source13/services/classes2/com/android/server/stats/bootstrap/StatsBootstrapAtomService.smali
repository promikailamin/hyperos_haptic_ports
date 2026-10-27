.class public Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;
.super Landroid/os/IStatsBootstrapAtomService$Stub;
.source "StatsBootstrapAtomService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StatsBootstrapAtomService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/os/IStatsBootstrapAtomService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public reportBootstrapAtom(Landroid/os/StatsBootstrapAtom;)V
    .registers 10
    .param p1, "atom"    # Landroid/os/StatsBootstrapAtom;

    .line 40
    iget v0, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    const-string v1, "StatsBootstrapAtomService"

    const/4 v2, 0x1

    if-lt v0, v2, :cond_8e

    iget v0, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_f

    goto/16 :goto_8e

    .line 44
    :cond_f
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget v2, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {v0, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 45
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    iget-object v2, p1, Landroid/os/StatsBootstrapAtom;->values:[Landroid/os/StatsBootstrapAtomValue;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_82

    aget-object v5, v2, v4

    .line 46
    .local v5, "value":Landroid/os/StatsBootstrapAtomValue;
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getTag()I

    move-result v6

    packed-switch v6, :pswitch_data_ae

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected value type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getTag()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when logging atom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 63
    :pswitch_4f
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getBytesValue()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 64
    goto :goto_7f

    .line 60
    :pswitch_57
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getStringValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 61
    goto :goto_7f

    .line 57
    :pswitch_5f
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getFloatValue()F

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 58
    goto :goto_7f

    .line 54
    :pswitch_67
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getLongValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 55
    goto :goto_7f

    .line 51
    :pswitch_6f
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getIntValue()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 52
    goto :goto_7f

    .line 48
    :pswitch_77
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getBoolValue()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 49
    nop

    .line 45
    .end local v5    # "value":Landroid/os/StatsBootstrapAtomValue;
    :goto_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 72
    :cond_82
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 73
    return-void

    .line 41
    .end local v0    # "builder":Landroid/util/StatsEvent$Builder;
    :cond_8e
    :goto_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Atom ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a valid atom ID"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void

    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_77
        :pswitch_6f
        :pswitch_67
        :pswitch_5f
        :pswitch_57
        :pswitch_4f
    .end packed-switch
.end method
