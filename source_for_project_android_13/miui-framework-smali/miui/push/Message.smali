.class public Lmiui/push/Message;
.super Lmiui/push/Packet;
.source "Message.java"


# static fields
.field public static final blacklist MSG_TYPE_CHAT:Ljava/lang/String; = "chat"

.field public static final blacklist MSG_TYPE_ERROR:Ljava/lang/String; = "error"

.field public static final blacklist MSG_TYPE_GROUPCHAT:Ljava/lang/String; = "groupchat"

.field public static final blacklist MSG_TYPE_HEADLINE:Ljava/lang/String; = "hearline"

.field public static final blacklist MSG_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field public static final blacklist MSG_TYPE_PPL:Ljava/lang/String; = "ppl"


# instance fields
.field private blacklist fseq:Ljava/lang/String;

.field private blacklist language:Ljava/lang/String;

.field private blacklist mAppId:Ljava/lang/String;

.field private blacklist mBody:Ljava/lang/String;

.field private blacklist mBodyEncoding:Ljava/lang/String;

.field private blacklist mEncrypted:Z

.field private blacklist mSubject:Ljava/lang/String;

.field private blacklist mTransient:Z

.field private blacklist mseq:Ljava/lang/String;

.field private blacklist seq:Ljava/lang/String;

.field private blacklist status:Ljava/lang/String;

.field private blacklist thread:Ljava/lang/String;

.field private blacklist type:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 126
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/push/Message;->mTransient:Z

    .line 113
    const-string v1, ""

    iput-object v1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 121
    iput-boolean v0, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 127
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 150
    invoke-direct {p0, p1}, Lmiui/push/Packet;-><init>(Landroid/os/Bundle;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/push/Message;->mTransient:Z

    .line 113
    const-string v1, ""

    iput-object v1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 121
    iput-boolean v0, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 151
    const-string v1, "ext_msg_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 152
    const-string v1, "ext_msg_lang"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    .line 153
    const-string v1, "ext_msg_thread"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 154
    const-string v1, "ext_msg_sub"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    .line 155
    const-string v1, "ext_msg_body"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    .line 156
    const-string v1, "ext_body_encode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    .line 157
    const-string v1, "ext_msg_appid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    .line 158
    const-string v1, "ext_msg_trans"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/push/Message;->mTransient:Z

    .line 159
    const-string v0, "ext_msg_seq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 160
    const-string v0, "ext_msg_mseq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 161
    const-string v0, "ext_msg_fseq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 162
    const-string v0, "ext_msg_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "to"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/push/Message;->mTransient:Z

    .line 113
    const-string v1, ""

    iput-object v1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 121
    iput-boolean v0, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 135
    invoke-virtual {p0, p1}, Lmiui/push/Message;->setTo(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/push/Message;->mTransient:Z

    .line 113
    const-string v1, ""

    iput-object v1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 121
    iput-boolean v0, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 145
    invoke-virtual {p0, p1}, Lmiui/push/Message;->setTo(Ljava/lang/String;)V

    .line 146
    iput-object p2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 147
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 447
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 448
    return v0

    .line 449
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6d

    .line 452
    :cond_12
    move-object v2, p1

    check-cast v2, Lmiui/push/Message;

    .line 454
    .local v2, "message":Lmiui/push/Message;
    invoke-super {p0, v2}, Lmiui/push/Packet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 455
    return v1

    .line 457
    :cond_1c
    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_29

    iget-object v4, v2, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_2d

    :cond_29
    iget-object v3, v2, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_2e

    .line 458
    :goto_2d
    return v1

    .line 460
    :cond_2e
    iget-object v3, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_3b

    iget-object v4, v2, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    goto :goto_3f

    :cond_3b
    iget-object v3, v2, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_40

    .line 461
    :goto_3f
    return v1

    .line 463
    :cond_40
    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_4d

    iget-object v4, v2, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    goto :goto_51

    :cond_4d
    iget-object v3, v2, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_52

    .line 464
    :goto_51
    return v1

    .line 466
    :cond_52
    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_5f

    iget-object v4, v2, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    goto :goto_63

    :cond_5f
    iget-object v3, v2, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_64

    .line 467
    :goto_63
    return v1

    .line 469
    :cond_64
    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    iget-object v4, v2, Lmiui/push/Message;->type:Ljava/lang/String;

    if-ne v3, v4, :cond_6b

    goto :goto_6c

    :cond_6b
    move v0, v1

    :goto_6c
    return v0

    .line 450
    .end local v2    # "message":Lmiui/push/Message;
    :cond_6d
    :goto_6d
    return v1
.end method

.method public blacklist getAppId()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBody()Ljava/lang/String;
    .registers 2

    .line 270
    iget-object v0, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBodyEncoding()Ljava/lang/String;
    .registers 2

    .line 274
    iget-object v0, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEncrypted()Z
    .registers 2

    .line 234
    iget-boolean v0, p0, Lmiui/push/Message;->mEncrypted:Z

    return v0
.end method

.method public blacklist getFSeq()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLanguage()Ljava/lang/String;
    .registers 2

    .line 317
    iget-object v0, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMSeq()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSeq()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStatus()Ljava/lang/String;
    .registers 2

    .line 212
    iget-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSubject()Ljava/lang/String;
    .registers 2

    .line 248
    iget-object v0, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getThread()Ljava/lang/String;
    .registers 2

    .line 298
    iget-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 475
    iget-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 476
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_17

    :cond_16
    move v3, v1

    :goto_17
    add-int/2addr v2, v3

    .line 477
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_24

    :cond_23
    move v3, v1

    :goto_24
    add-int/2addr v0, v3

    .line 478
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_31

    :cond_30
    move v3, v1

    :goto_31
    add-int/2addr v2, v3

    .line 479
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3c
    add-int/2addr v0, v1

    .line 480
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist setAppId(Ljava/lang/String;)V
    .registers 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public blacklist setBody(Ljava/lang/String;)V
    .registers 2
    .param p1, "body"    # Ljava/lang/String;

    .line 283
    iput-object p1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public blacklist setBody(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 287
    iput-object p1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    .line 288
    iput-object p2, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public blacklist setEncrypted(Z)V
    .registers 2
    .param p1, "encrypted"    # Z

    .line 230
    iput-boolean p1, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 231
    return-void
.end method

.method public blacklist setFSeq(Ljava/lang/String;)V
    .registers 2
    .param p1, "fseq"    # Ljava/lang/String;

    .line 208
    iput-object p1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public blacklist setIsTransient(Z)V
    .registers 2
    .param p1, "isTransient"    # Z

    .line 176
    iput-boolean p1, p0, Lmiui/push/Message;->mTransient:Z

    .line 177
    return-void
.end method

.method public blacklist setLanguage(Ljava/lang/String;)V
    .registers 2
    .param p1, "language"    # Ljava/lang/String;

    .line 327
    iput-object p1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public blacklist setMSeq(Ljava/lang/String;)V
    .registers 2
    .param p1, "mseq"    # Ljava/lang/String;

    .line 200
    iput-object p1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public blacklist setSeq(Ljava/lang/String;)V
    .registers 2
    .param p1, "seq"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public blacklist setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/String;

    .line 216
    iput-object p1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public blacklist setSubject(Ljava/lang/String;)V
    .registers 2
    .param p1, "subject"    # Ljava/lang/String;

    .line 257
    iput-object p1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public blacklist setThread(Ljava/lang/String;)V
    .registers 2
    .param p1, "thread"    # Ljava/lang/String;

    .line 307
    iput-object p1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public blacklist setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 226
    iput-object p1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 4

    .line 332
    invoke-super {p0}, Lmiui/push/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 333
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 334
    iget-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    const-string v2, "ext_msg_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_13
    iget-object v1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 337
    const-string v2, "ext_msg_lang"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_1c
    iget-object v1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 340
    const-string v2, "ext_msg_sub"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_25
    iget-object v1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 343
    const-string v2, "ext_msg_body"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_2e
    iget-object v1, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 346
    iget-object v1, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    const-string v2, "ext_body_encode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_3d
    iget-object v1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 349
    const-string v2, "ext_msg_thread"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_46
    iget-object v1, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    if-eqz v1, :cond_4f

    .line 352
    const-string v2, "ext_msg_appid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_4f
    iget-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    if-eqz v1, :cond_59

    .line 355
    const/4 v1, 0x1

    const-string v2, "ext_msg_trans"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    :cond_59
    iget-object v1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 358
    iget-object v1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    const-string v2, "ext_msg_seq"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_68
    iget-object v1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 361
    iget-object v1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    const-string v2, "ext_msg_mseq"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_77
    iget-object v1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 364
    iget-object v1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    const-string v2, "ext_msg_fseq"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_86
    iget-object v1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 367
    iget-object v1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    const-string v2, "ext_msg_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_95
    return-object v0
.end method

.method public blacklist toXML()Ljava/lang/String;
    .registers 6

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "<message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p0}, Lmiui/push/Message;->getXmlns()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    if-eqz v1, :cond_23

    .line 376
    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Message;->getXmlns()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_23
    iget-object v1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 379
    const-string v1, " xml:lang=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Message;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_38
    invoke-virtual {p0}, Lmiui/push/Message;->getPacketID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 382
    const-string v1, " id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Message;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_4f
    invoke-virtual {p0}, Lmiui/push/Message;->getTo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 385
    const-string v1, " to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Message;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_6a
    invoke-virtual {p0}, Lmiui/push/Message;->getSeq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 388
    const-string v1, " seq=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Message;->getSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_85
    invoke-virtual {p0}, Lmiui/push/Message;->getMSeq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a0

    .line 391
    const-string v1, " mseq=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Message;->getMSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_a0
    invoke-virtual {p0}, Lmiui/push/Message;->getFSeq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bb

    .line 394
    const-string v1, " fseq=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Message;->getFSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_bb
    invoke-virtual {p0}, Lmiui/push/Message;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 397
    const-string v1, " status=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Message;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_d6
    invoke-virtual {p0}, Lmiui/push/Message;->getFrom()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f1

    .line 400
    const-string v1, " from=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Message;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_f1
    invoke-virtual {p0}, Lmiui/push/Message;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10c

    .line 403
    const-string v1, " chid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Message;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_10c
    iget-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    if-eqz v1, :cond_115

    .line 406
    const-string v1, " transient=\"true\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_115
    iget-object v1, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12e

    .line 409
    const-string v1, " appid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/push/Message;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_12e
    iget-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_145

    .line 412
    const-string v1, " type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_145
    iget-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    if-eqz v1, :cond_14e

    .line 415
    const-string v1, " s=\"1\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_14e
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_16b

    .line 420
    const-string v3, "<subject>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-static {v4}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v3, "</subject>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_16b
    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_19e

    .line 424
    const-string v3, "<body"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    iget-object v3, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18b

    .line 426
    const-string v3, " encode=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_18b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-static {v2}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_19e
    iget-object v1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v1, :cond_1b3

    .line 431
    const-string v1, "<thread>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</thread>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_1b3
    iget-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    const-string v2, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ca

    .line 435
    invoke-virtual {p0}, Lmiui/push/Message;->getError()Lmiui/push/XMPPError;

    move-result-object v1

    .line 436
    .local v1, "error":Lmiui/push/XMPPError;
    if-eqz v1, :cond_1ca

    .line 437
    invoke-virtual {v1}, Lmiui/push/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .end local v1    # "error":Lmiui/push/XMPPError;
    :cond_1ca
    invoke-virtual {p0}, Lmiui/push/Message;->getExtensionsXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string v1, "</message>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
