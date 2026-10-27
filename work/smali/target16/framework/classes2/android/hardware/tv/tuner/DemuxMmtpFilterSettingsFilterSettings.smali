.class public final Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
.super Ljava/lang/Object;
.source "DemuxMmtpFilterSettingsFilterSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist av:I = 0x2

.field public static final blacklist download:I = 0x5

.field public static final blacklist noinit:I = 0x0

.field public static final blacklist pesData:I = 0x3

.field public static final blacklist record:I = 0x4

.field public static final blacklist section:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 137
    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    nop

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    .line 35
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 31
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5

    .line 242
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 245
    return-void

    .line 243
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tagString(I)Ljava/lang/String;

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

    .line 260
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    .line 261
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    .line 262
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5

    .line 248
    packed-switch p1, :pswitch_data_2e

    .line 256
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

    .line 254
    :pswitch_1c
    const-string p1, "download"

    return-object p1

    .line 253
    :pswitch_1f
    const-string p1, "record"

    return-object p1

    .line 252
    :pswitch_22
    const-string p1, "pesData"

    return-object p1

    .line 251
    :pswitch_25
    const-string p1, "av"

    return-object p1

    .line 250
    :pswitch_28
    const-string p1, "section"

    return-object p1

    .line 249
    :pswitch_2b
    const-string p1, "noinit"

    return-object p1

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist av(Landroid/hardware/tv/tuner/DemuxFilterAvSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .registers 3

    .line 75
    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 234
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 235
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 236
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 238
    :cond_f
    return v0
.end method

.method public static blacklist download(Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .registers 3

    .line 120
    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist noinit(Z)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .registers 3

    .line 45
    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist pesData(Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .registers 3

    .line 90
    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist record(Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .registers 3

    .line 105
    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist section(Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .registers 3

    .line 60
    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 213
    nop

    .line 214
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getTag()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_3e

    goto :goto_3c

    .line 228
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_3c

    .line 225
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getRecord()Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 226
    goto :goto_3c

    .line 222
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getPesData()Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 223
    goto :goto_3c

    .line 219
    :pswitch_28
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getAv()Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 220
    goto :goto_3c

    .line 216
    :pswitch_32
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 217
    nop

    .line 231
    :goto_3c
    return v1

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_32
        :pswitch_28
        :pswitch_1e
        :pswitch_14
        :pswitch_a
    .end packed-switch
.end method

.method public blacklist getAv()Landroid/hardware/tv/tuner/DemuxFilterAvSettings;
    .registers 2

    .line 79
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    .line 80
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    return-object v0
.end method

.method public blacklist getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;
    .registers 2

    .line 124
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    .line 125
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;

    return-object v0
.end method

.method public blacklist getNoinit()Z
    .registers 2

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    .line 50
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getPesData()Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;
    .registers 2

    .line 94
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    .line 95
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    return-object v0
.end method

.method public blacklist getRecord()Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;
    .registers 2

    .line 109
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    .line 110
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    return-object v0
.end method

.method public blacklist getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;
    .registers 2

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    .line 65
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    return-object v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 39
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    packed-switch v0, :pswitch_data_68

    .line 208
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

    .line 204
    :pswitch_20
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;

    .line 205
    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 206
    return-void

    .line 199
    :pswitch_2c
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    .line 200
    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 201
    return-void

    .line 194
    :pswitch_38
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    .line 195
    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 196
    return-void

    .line 189
    :pswitch_44
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterAvSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    .line 190
    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 191
    return-void

    .line 184
    :pswitch_50
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    .line 185
    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 186
    return-void

    .line 179
    :pswitch_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 180
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 181
    return-void

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setAv(Landroid/hardware/tv/tuner/DemuxFilterAvSettings;)V
    .registers 3

    .line 84
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public blacklist setDownload(Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;)V
    .registers 3

    .line 129
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 130
    return-void
.end method

.method public blacklist setNoinit(Z)V
    .registers 3

    .line 54
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public blacklist setPesData(Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;)V
    .registers 3

    .line 99
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 100
    return-void
.end method

.method public blacklist setRecord(Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;)V
    .registers 3

    .line 114
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method public blacklist setSection(Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;)V
    .registers 3

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 150
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_3b

    .line 168
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_3b

    .line 165
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getRecord()Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 166
    goto :goto_3b

    .line 162
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getPesData()Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 163
    goto :goto_3b

    .line 159
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getAv()Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 160
    goto :goto_3b

    .line 156
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 157
    goto :goto_3b

    .line 153
    :pswitch_33
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getNoinit()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 154
    nop

    .line 171
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
