.class public final Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "CoreSemantics.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilityModifier;


# instance fields
.field public blacklist mClickable:Z

.field public blacklist mContentDescriptionId:I

.field public blacklist mEnabled:Z

.field public blacklist mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

.field public blacklist mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

.field public blacklist mStateDescriptionId:I

.field public blacklist mTextId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 35
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    .line 36
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    .line 38
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    .line 39
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IBIIIZZ)V
    .registers 9

    .line 78
    const/16 v0, 0xfa

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 81
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 82
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 83
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 84
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBoolean(Z)V

    .line 85
    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBoolean(Z)V

    .line 86
    return-void
.end method

.method private blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4

    .line 101
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    .line 102
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->fromInt(I)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 103
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    .line 104
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    .line 105
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->values()[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    .line 106
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    .line 107
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    .line 108
    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;-><init>()V

    .line 174
    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 176
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2

    .line 113
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getContentDescriptionId()Ljava/lang/Integer;
    .registers 2

    .line 181
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    return-object v0
.end method

.method public blacklist getOpCode()I
    .registers 2

    .line 43
    const/16 v0, 0xfa

    return v0
.end method

.method public blacklist getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    return-object v0
.end method

.method public blacklist getStateDescriptionId()Ljava/lang/Integer;
    .registers 2

    .line 185
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getTextId()Ljava/lang/Integer;
    .registers 2

    .line 190
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 195
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->A11Y:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 196
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 197
    const-string v0, "CoreSemantics"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "contentDescriptionId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 199
    const-string/jumbo v1, "role"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "textId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "stateDescriptionId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    .line 202
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enabled"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    .line 203
    const-string v1, "mode"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    .line 204
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "clickable"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 205
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEMANTICS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 158
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    const-string v1, "SEMANTICS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    const-string v3, " "

    if-eq v1, v2, :cond_1a

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    if-eqz v1, :cond_26

    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    :cond_26
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    if-lez v1, :cond_34

    .line 129
    const-string v1, " contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    :cond_34
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    if-lez v1, :cond_42

    .line 133
    const-string v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    :cond_42
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    if-lez v1, :cond_50

    .line 137
    const-string v1, " stateDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    :cond_50
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    if-nez v1, :cond_59

    .line 141
    const-string v1, " disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_59
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    if-eqz v1, :cond_62

    .line 144
    const-string v1, " clickable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 3

    .line 91
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->ordinal()I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, -0x1

    :goto_11
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 93
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 96
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBoolean(Z)V

    .line 97
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBoolean(Z)V

    .line 98
    return-void
.end method
