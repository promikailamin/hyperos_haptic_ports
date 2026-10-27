.class public Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;
.super Landroid/os/IStatsBootstrapAtomService$Stub;
.source "StatsBootstrapAtomService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/os/IStatsBootstrapAtomService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public reportBootstrapAtom(Landroid/os/StatsBootstrapAtom;)V
    .registers 14

    .line 98
    iget v0, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    const-string v1, "StatsBootstrapAtomService"

    const/4 v2, 0x1

    if-lt v0, v2, :cond_105

    const/16 v3, 0x2710

    if-lt v0, v3, :cond_d

    goto/16 :goto_105

    .line 103
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;->verifyAtomValidity(Landroid/os/StatsBootstrapAtom;)Z

    move-result p0

    if-nez p0, :cond_14

    return-void

    .line 106
    :cond_14
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    iget v0, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {p0, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 107
    iget-object v0, p1, Landroid/os/StatsBootstrapAtom;->values:[Landroid/os/StatsBootstrapAtomValue;

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_23
    if-ge v5, v3, :cond_f9

    aget-object v6, v0, v5

    .line 108
    iget-object v7, v6, Landroid/os/StatsBootstrapAtomValue;->value:Landroid/os/StatsBootstrapAtomValue$Primitive;

    .line 109
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getTag()I

    move-result v8

    const-string v9, "Unexpected value type "

    packed-switch v8, :pswitch_data_122

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getTag()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when logging atom "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :pswitch_53
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getStringArrayValue()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/util/StatsEvent$Builder;->writeStringArray([Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    goto :goto_8a

    .line 126
    :pswitch_5b
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getBytesValue()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    goto :goto_8a

    .line 123
    :pswitch_63
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getStringValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    goto :goto_8a

    .line 120
    :pswitch_6b
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getFloatValue()F

    move-result v7

    invoke-virtual {p0, v7}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    goto :goto_8a

    .line 117
    :pswitch_73
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getLongValue()J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    goto :goto_8a

    .line 114
    :pswitch_7b
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getIntValue()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto :goto_8a

    .line 111
    :pswitch_83
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getBoolValue()Z

    move-result v7

    invoke-virtual {p0, v7}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 136
    :goto_8a
    iget-object v6, v6, Landroid/os/StatsBootstrapAtomValue;->annotations:[Landroid/os/StatsBootstrapAtomValue$Annotation;

    .line 137
    array-length v7, v6

    move v8, v4

    :goto_8e
    if-ge v8, v7, :cond_f5

    aget-object v10, v6, v8

    .line 138
    iget-byte v11, v10, Landroid/os/StatsBootstrapAtomValue$Annotation;->id:B

    if-eq v11, v2, :cond_bc

    .line 139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected annotation ID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, v10, Landroid/os/StatsBootstrapAtomValue$Annotation;->id:B

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", for atom "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": only UIDs are supported!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_bc
    iget-object v11, v10, Landroid/os/StatsBootstrapAtomValue$Annotation;->value:Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

    invoke-virtual {v11}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->getTag()I

    move-result v11

    if-eqz v11, :cond_e7

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Landroid/os/StatsBootstrapAtomValue$Annotation;->value:Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

    invoke-virtual {v0}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->getTag()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when logging UID for atom "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 146
    :cond_e7
    iget-byte v11, v10, Landroid/os/StatsBootstrapAtomValue$Annotation;->id:B

    iget-object v10, v10, Landroid/os/StatsBootstrapAtomValue$Annotation;->value:Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

    .line 147
    invoke-virtual {v10}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->getBoolValue()Z

    move-result v10

    .line 146
    invoke-virtual {p0, v11, v10}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_8e

    :cond_f5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_23

    .line 156
    :cond_f9
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void

    .line 99
    :cond_105
    :goto_105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Atom ID "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid atom ID"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_83
        :pswitch_7b
        :pswitch_73
        :pswitch_6b
        :pswitch_63
        :pswitch_5b
        :pswitch_53
    .end packed-switch
.end method

.method public final verifyAtomValidity(Landroid/os/StatsBootstrapAtom;)Z
    .registers 8

    .line 40
    iget p0, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    const/16 v0, 0x112

    const-string v1, "Atom ID "

    const/4 v2, 0x1

    const-string v3, "StatsBootstrapAtomService"

    const/4 v4, 0x0

    if-eq p0, v0, :cond_ca

    const/16 v0, 0x2dc

    if-eq p0, v0, :cond_a9

    const/16 v0, 0x2de

    if-eq p0, v0, :cond_a9

    const/16 v0, 0x3b4

    if-eq p0, v0, :cond_9a

    const/16 v0, 0x428

    if-eq p0, v0, :cond_21

    const/16 v0, 0x442

    if-eq p0, v0, :cond_21

    return v4

    .line 59
    :cond_21
    iget-object p0, p1, Landroid/os/StatsBootstrapAtom;->values:[Landroid/os/StatsBootstrapAtomValue;

    if-eqz p0, :cond_80

    array-length v0, p0

    const/4 v5, 0x2

    if-ge v0, v5, :cond_2a

    goto :goto_80

    .line 64
    :cond_2a
    aget-object p0, p0, v2

    if-eqz p0, :cond_66

    .line 66
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue;->value:Landroid/os/StatsBootstrapAtomValue$Primitive;

    if-eqz v0, :cond_66

    .line 67
    invoke-virtual {v0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getTag()I

    move-result v0

    if-eq v0, v5, :cond_39

    goto :goto_66

    .line 74
    :cond_39
    iget-object p0, p0, Landroid/os/StatsBootstrapAtomValue;->value:Landroid/os/StatsBootstrapAtomValue$Primitive;

    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getLongValue()J

    move-result-wide p0

    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    cmp-long v5, p0, v0

    if-eqz v5, :cond_65

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Atom ID 1064 server UID mismatch. Atom UID: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", Calling UID: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_65
    return v2

    .line 69
    :cond_66
    :goto_66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " missing or has incorrect type for server UID field."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 60
    :cond_80
    :goto_80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no values, cannot check server UID"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 86
    :cond_9a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 p1, 0x3e8

    if-eq p0, p1, :cond_a8

    .line 87
    const-string p0, "Atom ID 948 sent from non-system app."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_a8
    return v2

    .line 51
    :cond_a9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    if-eqz p0, :cond_c9

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sent from non-root app."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_c9
    return v2

    .line 43
    :cond_ca
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x426

    if-eq p0, v0, :cond_ec

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sent from unsupported app."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_ec
    return v2
.end method
