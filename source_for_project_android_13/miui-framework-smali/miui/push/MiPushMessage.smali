.class public Lmiui/push/MiPushMessage;
.super Ljava/lang/Object;
.source "MiPushMessage.java"


# static fields
.field private static final blacklist KEY_ALIAS:Ljava/lang/String; = "alias"

.field private static final blacklist KEY_CATEGORY:Ljava/lang/String; = "category"

.field private static final blacklist KEY_CONTENT:Ljava/lang/String; = "content"

.field private static final blacklist KEY_DESC:Ljava/lang/String; = "description"

.field private static final blacklist KEY_EXTRA:Ljava/lang/String; = "extra"

.field private static final blacklist KEY_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field private static final blacklist KEY_MESSAGE_TYPE:Ljava/lang/String; = "messageType"

.field private static final blacklist KEY_NOTIFIED:Ljava/lang/String; = "isNotified"

.field private static final blacklist KEY_NOTIFY_ID:Ljava/lang/String; = "notifyId"

.field private static final blacklist KEY_NOTIFY_TYPE:Ljava/lang/String; = "notifyType"

.field private static final blacklist KEY_PASS_THROUGH:Ljava/lang/String; = "passThrough"

.field private static final blacklist KEY_TITLE:Ljava/lang/String; = "title"

.field private static final blacklist KEY_TOPIC:Ljava/lang/String; = "topic"

.field public static final blacklist MESSAGE_TYPE_ALIAS:I = 0x1

.field public static final blacklist MESSAGE_TYPE_REG:I = 0x0

.field public static final blacklist MESSAGE_TYPE_TOPIC:I = 0x2

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private blacklist alias:Ljava/lang/String;

.field private blacklist category:Ljava/lang/String;

.field private blacklist content:Ljava/lang/String;

.field private blacklist description:Ljava/lang/String;

.field private blacklist extra:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist isNotified:Z

.field private blacklist messageId:Ljava/lang/String;

.field private blacklist messageType:I

.field private blacklist notifyId:I

.field private blacklist notifyType:I

.field private blacklist passThrough:I

.field private blacklist title:Ljava/lang/String;

.field private blacklist topic:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    return-void
.end method

.method public static blacklist fromBundle(Landroid/os/Bundle;)Lmiui/push/MiPushMessage;
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 223
    new-instance v0, Lmiui/push/MiPushMessage;

    invoke-direct {v0}, Lmiui/push/MiPushMessage;-><init>()V

    .line 224
    .local v0, "message":Lmiui/push/MiPushMessage;
    const-string v1, "messageId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/push/MiPushMessage;->messageId:Ljava/lang/String;

    .line 225
    const-string v1, "messageType"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lmiui/push/MiPushMessage;->messageType:I

    .line 226
    const-string v1, "passThrough"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lmiui/push/MiPushMessage;->passThrough:I

    .line 227
    const-string v1, "alias"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/push/MiPushMessage;->alias:Ljava/lang/String;

    .line 228
    const-string v1, "topic"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/push/MiPushMessage;->topic:Ljava/lang/String;

    .line 229
    const-string v1, "content"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/push/MiPushMessage;->content:Ljava/lang/String;

    .line 230
    const-string v1, "description"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/push/MiPushMessage;->description:Ljava/lang/String;

    .line 231
    const-string v1, "title"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/push/MiPushMessage;->title:Ljava/lang/String;

    .line 232
    const-string v1, "isNotified"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lmiui/push/MiPushMessage;->isNotified:Z

    .line 233
    const-string v1, "notifyId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lmiui/push/MiPushMessage;->notifyId:I

    .line 234
    const-string v1, "notifyType"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lmiui/push/MiPushMessage;->notifyType:I

    .line 235
    const-string v1, "category"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/push/MiPushMessage;->category:Ljava/lang/String;

    .line 236
    const-string v1, "extra"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    .line 237
    return-object v0
.end method


# virtual methods
.method public blacklist getAlias()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lmiui/push/MiPushMessage;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCategory()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lmiui/push/MiPushMessage;->category:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContent()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lmiui/push/MiPushMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lmiui/push/MiPushMessage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExtra()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist getMessageId()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lmiui/push/MiPushMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMessageType()I
    .registers 2

    .line 74
    iget v0, p0, Lmiui/push/MiPushMessage;->messageType:I

    return v0
.end method

.method public blacklist getNotifyId()I
    .registers 2

    .line 114
    iget v0, p0, Lmiui/push/MiPushMessage;->notifyId:I

    return v0
.end method

.method public blacklist getNotifyType()I
    .registers 2

    .line 106
    iget v0, p0, Lmiui/push/MiPushMessage;->notifyType:I

    return v0
.end method

.method public blacklist getPassThrough()I
    .registers 2

    .line 154
    iget v0, p0, Lmiui/push/MiPushMessage;->passThrough:I

    return v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lmiui/push/MiPushMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTopic()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lmiui/push/MiPushMessage;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isNotified()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lmiui/push/MiPushMessage;->isNotified:Z

    return v0
.end method

.method public blacklist setAlias(Ljava/lang/String;)V
    .registers 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lmiui/push/MiPushMessage;->alias:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public blacklist setCategory(Ljava/lang/String;)V
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lmiui/push/MiPushMessage;->category:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public blacklist setContent(Ljava/lang/String;)V
    .registers 2
    .param p1, "content"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lmiui/push/MiPushMessage;->content:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public blacklist setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lmiui/push/MiPushMessage;->description:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public blacklist setExtra(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 167
    if-eqz p1, :cond_c

    .line 168
    iget-object v0, p0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 170
    :cond_c
    return-void
.end method

.method public blacklist setMessageId(Ljava/lang/String;)V
    .registers 2
    .param p1, "messageId"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lmiui/push/MiPushMessage;->messageId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public blacklist setMessageType(I)V
    .registers 2
    .param p1, "messageType"    # I

    .line 78
    iput p1, p0, Lmiui/push/MiPushMessage;->messageType:I

    .line 79
    return-void
.end method

.method public blacklist setNotified(Z)V
    .registers 2
    .param p1, "isNotified"    # Z

    .line 126
    iput-boolean p1, p0, Lmiui/push/MiPushMessage;->isNotified:Z

    .line 127
    return-void
.end method

.method public blacklist setNotifyId(I)V
    .registers 2
    .param p1, "notifyId"    # I

    .line 118
    iput p1, p0, Lmiui/push/MiPushMessage;->notifyId:I

    .line 119
    return-void
.end method

.method public blacklist setNotifyType(I)V
    .registers 2
    .param p1, "notifyType"    # I

    .line 110
    iput p1, p0, Lmiui/push/MiPushMessage;->notifyType:I

    .line 111
    return-void
.end method

.method public blacklist setPassThrough(I)V
    .registers 2
    .param p1, "passThrough"    # I

    .line 158
    iput p1, p0, Lmiui/push/MiPushMessage;->passThrough:I

    .line 159
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lmiui/push/MiPushMessage;->title:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public blacklist setTopic(Ljava/lang/String;)V
    .registers 2
    .param p1, "topic"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lmiui/push/MiPushMessage;->topic:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 4

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/push/MiPushMessage;->messageId:Ljava/lang/String;

    const-string v2, "messageId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget v1, p0, Lmiui/push/MiPushMessage;->passThrough:I

    const-string v2, "passThrough"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    iget v1, p0, Lmiui/push/MiPushMessage;->messageType:I

    const-string v2, "messageType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    iget-object v1, p0, Lmiui/push/MiPushMessage;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 188
    iget-object v1, p0, Lmiui/push/MiPushMessage;->alias:Ljava/lang/String;

    const-string v2, "alias"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_29
    iget-object v1, p0, Lmiui/push/MiPushMessage;->topic:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 192
    iget-object v1, p0, Lmiui/push/MiPushMessage;->topic:Ljava/lang/String;

    const-string v2, "topic"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_38
    iget-object v1, p0, Lmiui/push/MiPushMessage;->content:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lmiui/push/MiPushMessage;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 198
    iget-object v1, p0, Lmiui/push/MiPushMessage;->description:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_4e
    iget-object v1, p0, Lmiui/push/MiPushMessage;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 202
    iget-object v1, p0, Lmiui/push/MiPushMessage;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_5d
    iget-boolean v1, p0, Lmiui/push/MiPushMessage;->isNotified:Z

    const-string v2, "isNotified"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    iget v1, p0, Lmiui/push/MiPushMessage;->notifyId:I

    const-string v2, "notifyId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    iget v1, p0, Lmiui/push/MiPushMessage;->notifyType:I

    const-string v2, "notifyType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    iget-object v1, p0, Lmiui/push/MiPushMessage;->category:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 211
    iget-object v1, p0, Lmiui/push/MiPushMessage;->category:Ljava/lang/String;

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_81
    iget-object v1, p0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    if-eqz v1, :cond_8a

    .line 215
    const-string v2, "extra"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 218
    :cond_8a
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messageId={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},passThrough={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/push/MiPushMessage;->passThrough:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},alias={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},topic={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},content={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},description={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},title={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},isNotified={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/push/MiPushMessage;->isNotified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},notifyId={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/push/MiPushMessage;->notifyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},notifyType={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/push/MiPushMessage;->notifyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, category={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, extra={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
