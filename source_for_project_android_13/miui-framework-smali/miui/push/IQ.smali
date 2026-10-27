.class public Lmiui/push/IQ;
.super Lmiui/push/Packet;
.source "IQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/push/IQ$Type;
    }
.end annotation


# instance fields
.field private blacklist type:Lmiui/push/IQ$Type;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 46
    sget-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 52
    invoke-direct {p0, p1}, Lmiui/push/Packet;-><init>(Landroid/os/Bundle;)V

    .line 46
    sget-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    .line 53
    const-string v0, "ext_iq_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/push/IQ$Type;->fromString(Ljava/lang/String;)Lmiui/push/IQ$Type;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    .line 56
    :cond_19
    return-void
.end method

.method public static blacklist createErrorResponse(Lmiui/push/IQ;Lmiui/push/XMPPError;)Lmiui/push/IQ;
    .registers 5
    .param p0, "request"    # Lmiui/push/IQ;
    .param p1, "error"    # Lmiui/push/XMPPError;

    .line 195
    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v0

    sget-object v1, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    if-eq v0, v1, :cond_2e

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v0

    sget-object v1, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    if-ne v0, v1, :cond_11

    goto :goto_2e

    .line 196
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IQ must be of type \'set\' or \'get\'. Original IQ: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 197
    invoke-virtual {p0}, Lmiui/push/IQ;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2e
    :goto_2e
    new-instance v0, Lmiui/push/IQ$2;

    invoke-direct {v0, p0}, Lmiui/push/IQ$2;-><init>(Lmiui/push/IQ;)V

    .line 204
    .local v0, "result":Lmiui/push/IQ;
    sget-object v1, Lmiui/push/IQ$Type;->ERROR:Lmiui/push/IQ$Type;

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setType(Lmiui/push/IQ$Type;)V

    .line 205
    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setPacketID(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setFrom(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setTo(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, p1}, Lmiui/push/IQ;->setError(Lmiui/push/XMPPError;)V

    .line 209
    return-object v0
.end method

.method public static blacklist createResultIQ(Lmiui/push/IQ;)Lmiui/push/IQ;
    .registers 4
    .param p0, "request"    # Lmiui/push/IQ;

    .line 157
    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v0

    sget-object v1, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    if-eq v0, v1, :cond_2e

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v0

    sget-object v1, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    if-ne v0, v1, :cond_11

    goto :goto_2e

    .line 158
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IQ must be of type \'set\' or \'get\'. Original IQ: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    invoke-virtual {p0}, Lmiui/push/IQ;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_2e
    :goto_2e
    new-instance v0, Lmiui/push/IQ$1;

    invoke-direct {v0}, Lmiui/push/IQ$1;-><init>()V

    .line 166
    .local v0, "result":Lmiui/push/IQ;
    sget-object v1, Lmiui/push/IQ$Type;->RESULT:Lmiui/push/IQ$Type;

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setType(Lmiui/push/IQ$Type;)V

    .line 167
    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setPacketID(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setFrom(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setTo(Ljava/lang/String;)V

    .line 170
    return-object v0
.end method


# virtual methods
.method public blacklist getChildElementXML()Ljava/lang/String;
    .registers 2

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getType()Lmiui/push/IQ$Type;
    .registers 2

    .line 64
    iget-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    return-object v0
.end method

.method public blacklist setType(Lmiui/push/IQ$Type;)V
    .registers 3
    .param p1, "type"    # Lmiui/push/IQ$Type;

    .line 73
    if-nez p1, :cond_7

    .line 74
    sget-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    goto :goto_9

    .line 76
    :cond_7
    iput-object p1, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    .line 78
    :goto_9
    return-void
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 4

    .line 82
    invoke-super {p0}, Lmiui/push/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    if-eqz v1, :cond_11

    .line 84
    invoke-virtual {v1}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_iq_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_11
    return-object v0
.end method

.method public blacklist toXML()Ljava/lang/String;
    .registers 5

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "<iq "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\" "

    if-eqz v1, :cond_30

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_30
    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 96
    const-string v1, "to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_4b
    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 99
    const-string v1, "from=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_66
    invoke-virtual {p0}, Lmiui/push/IQ;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_81

    .line 102
    const-string v1, "chid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/IQ;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_81
    iget-object v1, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    if-nez v1, :cond_8b

    .line 105
    const-string v1, "type=\"get\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    .line 107
    :cond_8b
    const-string v1, "type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :goto_9e
    invoke-virtual {p0}, Lmiui/push/IQ;->getChildElementXML()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "queryXML":Ljava/lang/String;
    if-eqz v1, :cond_a7

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_a7
    invoke-virtual {p0}, Lmiui/push/IQ;->getExtensionsXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lmiui/push/IQ;->getError()Lmiui/push/XMPPError;

    move-result-object v2

    .line 117
    .local v2, "error":Lmiui/push/XMPPError;
    if-eqz v2, :cond_bb

    .line 118
    invoke-virtual {v2}, Lmiui/push/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_bb
    const-string v3, "</iq>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
