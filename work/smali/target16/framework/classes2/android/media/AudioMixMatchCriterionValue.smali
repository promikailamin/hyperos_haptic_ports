.class public final Landroid/media/AudioMixMatchCriterionValue;
.super Ljava/lang/Object;
.source "AudioMixMatchCriterionValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioMixMatchCriterionValue$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioMixMatchCriterionValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist audioSessionId:I = 0x4

.field public static final blacklist source:I = 0x1

.field public static final blacklist uid:I = 0x2

.field public static final blacklist usage:I = 0x0

.field public static final blacklist userId:I = 0x3


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 118
    new-instance v0, Landroid/media/AudioMixMatchCriterionValue$1;

    invoke-direct {v0}, Landroid/media/AudioMixMatchCriterionValue$1;-><init>()V

    sput-object v0, Landroid/media/AudioMixMatchCriterionValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    nop

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_tag:I

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/media/AudioMixMatchCriterionValue;->_tag:I

    .line 34
    iput-object p2, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/media/AudioMixMatchCriterionValue;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioMixMatchCriterionValue-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioMixMatchCriterionValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5

    .line 193
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 196
    return-void

    .line 194
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/AudioMixMatchCriterionValue;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/media/AudioMixMatchCriterionValue;->_tagString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is available."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3

    .line 210
    iput p1, p0, Landroid/media/AudioMixMatchCriterionValue;->_tag:I

    .line 211
    iput-object p2, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    .line 212
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5

    .line 199
    packed-switch p1, :pswitch_data_2c

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :pswitch_1c
    const-string p1, "audioSessionId"

    return-object p1

    .line 203
    :pswitch_1f
    const-string p1, "userId"

    return-object p1

    .line 202
    :pswitch_22
    const-string p1, "uid"

    return-object p1

    .line 201
    :pswitch_25
    const-string p1, "source"

    return-object p1

    .line 200
    :pswitch_28
    const-string p1, "usage"

    return-object p1

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist audioSessionId(I)Landroid/media/AudioMixMatchCriterionValue;
    .registers 3

    .line 106
    new-instance v0, Landroid/media/AudioMixMatchCriterionValue;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/AudioMixMatchCriterionValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist source(I)Landroid/media/AudioMixMatchCriterionValue;
    .registers 3

    .line 59
    new-instance v0, Landroid/media/AudioMixMatchCriterionValue;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/AudioMixMatchCriterionValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist uid(I)Landroid/media/AudioMixMatchCriterionValue;
    .registers 3

    .line 75
    new-instance v0, Landroid/media/AudioMixMatchCriterionValue;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/AudioMixMatchCriterionValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist usage(I)Landroid/media/AudioMixMatchCriterionValue;
    .registers 3

    .line 44
    new-instance v0, Landroid/media/AudioMixMatchCriterionValue;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/AudioMixMatchCriterionValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist userId(I)Landroid/media/AudioMixMatchCriterionValue;
    .registers 3

    .line 90
    new-instance v0, Landroid/media/AudioMixMatchCriterionValue;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/AudioMixMatchCriterionValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 186
    nop

    .line 187
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getTag()I

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAudioSessionId()I
    .registers 2

    .line 110
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/AudioMixMatchCriterionValue;->_assertTag(I)V

    .line 111
    iget-object v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getSource()I
    .registers 2

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioMixMatchCriterionValue;->_assertTag(I)V

    .line 64
    iget-object v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_tag:I

    return v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 79
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/AudioMixMatchCriterionValue;->_assertTag(I)V

    .line 80
    iget-object v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getUsage()I
    .registers 2

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioMixMatchCriterionValue;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 94
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/AudioMixMatchCriterionValue;->_assertTag(I)V

    .line 95
    iget-object v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    packed-switch v0, :pswitch_data_5c

    .line 181
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "union: unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 179
    return-void

    .line 172
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 174
    return-void

    .line 167
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 169
    return-void

    .line 162
    :pswitch_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 164
    return-void

    .line 157
    :pswitch_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 159
    return-void

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setAudioSessionId(I)V
    .registers 3

    .line 115
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 116
    return-void
.end method

.method public blacklist setSource(I)V
    .registers 3

    .line 68
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public blacklist setUid(I)V
    .registers 3

    .line 84
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public blacklist setUsage(I)V
    .registers 3

    .line 53
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public blacklist setUserId(I)V
    .registers 3

    .line 99
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 100
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 131
    iget p2, p0, Landroid/media/AudioMixMatchCriterionValue;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget p2, p0, Landroid/media/AudioMixMatchCriterionValue;->_tag:I

    packed-switch p2, :pswitch_data_34

    goto :goto_33

    .line 146
    :pswitch_b
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getAudioSessionId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 143
    :pswitch_13
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    goto :goto_33

    .line 140
    :pswitch_1b
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getUid()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    goto :goto_33

    .line 137
    :pswitch_23
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getSource()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    goto :goto_33

    .line 134
    :pswitch_2b
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getUsage()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    nop

    .line 149
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
