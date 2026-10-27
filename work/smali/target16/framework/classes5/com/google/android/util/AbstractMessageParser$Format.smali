.class public Lcom/google/android/util/AbstractMessageParser$Format;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Format"
.end annotation


# instance fields
.field private blacklist ch:C

.field private blacklist matched:Z

.field private blacklist start:Z


# direct methods
.method public constructor blacklist <init>(CZ)V
    .registers 5

    .line 1198
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    .line 1199
    iput-char p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    .line 1200
    iput-boolean p2, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    .line 1201
    return-void
.end method

.method private blacklist getFormatEnd(C)Ljava/lang/String;
    .registers 5

    .line 1239
    sparse-switch p1, :sswitch_data_30

    .line 1244
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown format \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1241
    :sswitch_23
    const-string p1, "</i>"

    return-object p1

    .line 1242
    :sswitch_26
    const-string p1, "</font></b>"

    return-object p1

    .line 1240
    :sswitch_29
    const-string p1, "</b>"

    return-object p1

    .line 1243
    :sswitch_2c
    const-string/jumbo p1, "\u201d</font>"

    return-object p1

    :sswitch_data_30
    .sparse-switch
        0x22 -> :sswitch_2c
        0x2a -> :sswitch_29
        0x5e -> :sswitch_26
        0x5f -> :sswitch_23
    .end sparse-switch
.end method

.method private blacklist getFormatStart(C)Ljava/lang/String;
    .registers 5

    .line 1229
    sparse-switch p1, :sswitch_data_30

    .line 1234
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown format \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1231
    :sswitch_23
    const-string p1, "<i>"

    return-object p1

    .line 1232
    :sswitch_26
    const-string p1, "<b><font color=\"#005FFF\">"

    return-object p1

    .line 1230
    :sswitch_29
    const-string p1, "<b>"

    return-object p1

    .line 1233
    :sswitch_2c
    const-string p1, "<font color=\"#999999\">\u201c"

    return-object p1

    nop

    :sswitch_data_30
    .sparse-switch
        0x22 -> :sswitch_2c
        0x2a -> :sswitch_29
        0x5e -> :sswitch_26
        0x5f -> :sswitch_23
    .end sparse-switch
.end method


# virtual methods
.method public blacklist controlCaps()Z
    .registers 3

    .line 1225
    iget-char v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist getInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist isHtml()Z
    .registers 2

    .line 1205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setCaps()Z
    .registers 2

    .line 1226
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    return v0
.end method

.method public blacklist setMatched(Z)V
    .registers 2

    .line 1203
    iput-boolean p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->matched:Z

    return-void
.end method

.method public blacklist toHtml(Z)Ljava/lang/String;
    .registers 3

    .line 1210
    iget-boolean p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->matched:Z

    if-eqz p1, :cond_16

    .line 1211
    iget-boolean p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    if-eqz p1, :cond_f

    iget-char p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Format;->getFormatStart(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    :cond_f
    iget-char p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Format;->getFormatEnd(C)Ljava/lang/String;

    move-result-object p1

    :goto_15
    return-object p1

    .line 1214
    :cond_16
    iget-char p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1f

    const-string p1, "&quot;"

    goto :goto_25

    :cond_1f
    iget-char p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    :goto_25
    return-object p1
.end method
