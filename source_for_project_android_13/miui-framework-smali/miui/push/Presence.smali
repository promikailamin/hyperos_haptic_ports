.class public Lmiui/push/Presence;
.super Lmiui/push/Packet;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/push/Presence$Mode;,
        Lmiui/push/Presence$Type;
    }
.end annotation


# instance fields
.field private blacklist mode:Lmiui/push/Presence$Mode;

.field private blacklist priority:I

.field private blacklist status:Ljava/lang/String;

.field private blacklist type:Lmiui/push/Presence$Type;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "b"    # Landroid/os/Bundle;

    .line 99
    invoke-direct {p0, p1}, Lmiui/push/Packet;-><init>(Landroid/os/Bundle;)V

    .line 68
    sget-object v0, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    iput-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    .line 70
    const/high16 v1, -0x80000000

    iput v1, p0, Lmiui/push/Presence;->priority:I

    .line 71
    iput-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    .line 100
    const-string v0, "ext_pres_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/push/Presence$Type;->valueOf(Ljava/lang/String;)Lmiui/push/Presence$Type;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    .line 103
    :cond_22
    const-string v0, "ext_pres_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    .line 106
    :cond_30
    const-string v0, "ext_pres_prio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/push/Presence;->priority:I

    .line 109
    :cond_3e
    const-string v0, "ext_pres_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/push/Presence$Mode;->valueOf(Ljava/lang/String;)Lmiui/push/Presence$Mode;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    .line 112
    :cond_50
    return-void
.end method

.method public constructor blacklist <init>(Lmiui/push/Presence$Type;)V
    .registers 4
    .param p1, "type"    # Lmiui/push/Presence$Type;

    .line 79
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 68
    sget-object v0, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    iput-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    .line 70
    const/high16 v1, -0x80000000

    iput v1, p0, Lmiui/push/Presence;->priority:I

    .line 71
    iput-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    .line 80
    invoke-virtual {p0, p1}, Lmiui/push/Presence;->setType(Lmiui/push/Presence$Type;)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(Lmiui/push/Presence$Type;Ljava/lang/String;ILmiui/push/Presence$Mode;)V
    .registers 7
    .param p1, "type"    # Lmiui/push/Presence$Type;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "mode"    # Lmiui/push/Presence$Mode;

    .line 91
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 68
    sget-object v0, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    iput-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    .line 70
    const/high16 v1, -0x80000000

    iput v1, p0, Lmiui/push/Presence;->priority:I

    .line 71
    iput-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    .line 92
    invoke-virtual {p0, p1}, Lmiui/push/Presence;->setType(Lmiui/push/Presence$Type;)V

    .line 93
    invoke-virtual {p0, p2}, Lmiui/push/Presence;->setStatus(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p3}, Lmiui/push/Presence;->setPriority(I)V

    .line 95
    invoke-virtual {p0, p4}, Lmiui/push/Presence;->setMode(Lmiui/push/Presence$Mode;)V

    .line 96
    return-void
.end method


# virtual methods
.method public blacklist getMode()Lmiui/push/Presence$Mode;
    .registers 2

    .line 234
    iget-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    return-object v0
.end method

.method public blacklist getPriority()I
    .registers 2

    .line 209
    iget v0, p0, Lmiui/push/Presence;->priority:I

    return v0
.end method

.method public blacklist getStatus()Ljava/lang/String;
    .registers 2

    .line 190
    iget-object v0, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()Lmiui/push/Presence$Type;
    .registers 2

    .line 167
    iget-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    return-object v0
.end method

.method public blacklist isAvailable()Z
    .registers 3

    .line 144
    iget-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    sget-object v1, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isAway()Z
    .registers 3

    .line 158
    iget-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    sget-object v1, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    sget-object v1, Lmiui/push/Presence$Mode;->away:Lmiui/push/Presence$Mode;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    sget-object v1, Lmiui/push/Presence$Mode;->xa:Lmiui/push/Presence$Mode;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    sget-object v1, Lmiui/push/Presence$Mode;->dnd:Lmiui/push/Presence$Mode;

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public blacklist setMode(Lmiui/push/Presence$Mode;)V
    .registers 2
    .param p1, "mode"    # Lmiui/push/Presence$Mode;

    .line 244
    iput-object p1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    .line 245
    return-void
.end method

.method public blacklist setPriority(I)V
    .registers 5
    .param p1, "priority"    # I

    .line 219
    const/16 v0, -0x80

    if-lt p1, v0, :cond_b

    const/16 v0, 0x80

    if-gt p1, v0, :cond_b

    .line 223
    iput p1, p0, Lmiui/push/Presence;->priority:I

    .line 224
    return-void

    .line 220
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid. Valid range is -128 through 128."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/String;

    .line 200
    iput-object p1, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public blacklist setType(Lmiui/push/Presence$Type;)V
    .registers 4
    .param p1, "type"    # Lmiui/push/Presence$Type;

    .line 176
    if-eqz p1, :cond_5

    .line 179
    iput-object p1, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    .line 180
    return-void

    .line 177
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 4

    .line 116
    invoke-super {p0}, Lmiui/push/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 117
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    if-eqz v1, :cond_11

    .line 118
    invoke-virtual {v1}, Lmiui/push/Presence$Type;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_pres_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_11
    iget-object v1, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 121
    const-string v2, "ext_pres_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1a
    iget v1, p0, Lmiui/push/Presence;->priority:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_25

    .line 124
    const-string v2, "ext_pres_prio"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    :cond_25
    iget-object v1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    if-eqz v1, :cond_38

    sget-object v2, Lmiui/push/Presence$Mode;->available:Lmiui/push/Presence$Mode;

    if-eq v1, v2, :cond_38

    .line 127
    iget-object v1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    invoke-virtual {v1}, Lmiui/push/Presence$Mode;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_pres_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_38
    return-object v0
.end method

.method public blacklist toXML()Ljava/lang/String;
    .registers 5

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "<presence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p0}, Lmiui/push/Presence;->getXmlns()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    if-eqz v1, :cond_23

    .line 251
    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Presence;->getXmlns()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_23
    invoke-virtual {p0}, Lmiui/push/Presence;->getPacketID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 254
    const-string v1, " id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Presence;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_3a
    invoke-virtual {p0}, Lmiui/push/Presence;->getTo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 257
    const-string v1, " to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Presence;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_55
    invoke-virtual {p0}, Lmiui/push/Presence;->getFrom()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 260
    const-string v1, " from=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Presence;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_70
    invoke-virtual {p0}, Lmiui/push/Presence;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 263
    const-string v1, " chid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Presence;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_8b
    iget-object v1, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    if-eqz v1, :cond_9e

    .line 266
    const-string v1, " type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_9e
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v1, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    if-eqz v1, :cond_bc

    .line 271
    const-string v1, "<status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    invoke-static {v2}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</status>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_bc
    iget v1, p0, Lmiui/push/Presence;->priority:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_d3

    .line 274
    const-string v1, "<priority>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/push/Presence;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</priority>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_d3
    iget-object v1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    if-eqz v1, :cond_ec

    sget-object v2, Lmiui/push/Presence$Mode;->available:Lmiui/push/Presence$Mode;

    if-eq v1, v2, :cond_ec

    .line 277
    const-string v1, "<show>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</show>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_ec
    invoke-virtual {p0}, Lmiui/push/Presence;->getExtensionsXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p0}, Lmiui/push/Presence;->getError()Lmiui/push/XMPPError;

    move-result-object v1

    .line 284
    .local v1, "error":Lmiui/push/XMPPError;
    if-eqz v1, :cond_100

    .line 285
    invoke-virtual {v1}, Lmiui/push/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_100
    const-string v2, "</presence>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
