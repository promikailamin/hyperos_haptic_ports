.class public final Landroid/app/slice/SliceItem;
.super Ljava/lang/Object;
.source "SliceItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/slice/SliceItem$SliceType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FORMAT_ACTION:Ljava/lang/String; = "action"

.field public static final whitelist FORMAT_BUNDLE:Ljava/lang/String; = "bundle"

.field public static final whitelist FORMAT_IMAGE:Ljava/lang/String; = "image"

.field public static final whitelist FORMAT_INT:Ljava/lang/String; = "int"

.field public static final whitelist FORMAT_LONG:Ljava/lang/String; = "long"

.field public static final whitelist FORMAT_REMOTE_INPUT:Ljava/lang/String; = "input"

.field public static final whitelist FORMAT_SLICE:Ljava/lang/String; = "slice"

.field public static final whitelist FORMAT_TEXT:Ljava/lang/String; = "text"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SliceItem"


# instance fields
.field private final greylist-max-o mFormat:Ljava/lang/String;

.field protected greylist-max-o mHints:[Ljava/lang/String;

.field private final greylist-max-o mObj:Ljava/lang/Object;

.field private final greylist-max-o mSubType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 371
    new-instance v0, Landroid/app/slice/SliceItem$1;

    invoke-direct {v0}, Landroid/app/slice/SliceItem$1;-><init>()V

    sput-object v0, Landroid/app/slice/SliceItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    .line 151
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p3, p4, p5}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/app/slice/SliceItem;->readObj(Ljava/lang/String;Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 274
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p4, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 141
    iput-object p2, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Landroid/app/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 144
    return-void
.end method

.method private static greylist-max-o getBaseType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 316
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 317
    if-ltz v0, :cond_e

    .line 318
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 320
    :cond_e
    return-object p0
.end method

.method private static greylist-max-o readObj(Ljava/lang/String;Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 4

    .line 348
    invoke-static {p0}, Landroid/app/slice/SliceItem;->getBaseType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_c8

    :cond_b
    goto :goto_5f

    :sswitch_c
    const-string/jumbo v1, "slice"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_60

    :sswitch_17
    const-string v1, "input"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x6

    goto :goto_60

    :sswitch_21
    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_60

    :sswitch_2b
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_60

    :sswitch_36
    const-string/jumbo v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    goto :goto_60

    :sswitch_41
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto :goto_60

    :sswitch_4b
    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x7

    goto :goto_60

    :sswitch_55
    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    goto :goto_60

    :goto_5f
    const/4 v0, -0x1

    :goto_60
    packed-switch v0, :pswitch_data_ea

    .line 368
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 366
    :pswitch_7c
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 364
    :pswitch_83
    sget-object p0, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 362
    :pswitch_8a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 360
    :pswitch_93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 356
    :pswitch_9c
    new-instance p0, Landroid/util/Pair;

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 357
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    sget-object v1, Landroid/app/slice/Slice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 358
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/slice/Slice;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 356
    return-object p0

    .line 354
    :pswitch_b2
    sget-object p0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 352
    :pswitch_b9
    sget-object p0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 350
    :pswitch_c0
    sget-object p0, Landroid/app/slice/Slice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_c8
    .sparse-switch
        -0x54d081ca -> :sswitch_55
        -0x5220cf7e -> :sswitch_4b
        0x197ef -> :sswitch_41
        0x32c67c -> :sswitch_36
        0x36452d -> :sswitch_2b
        0x5faa95b -> :sswitch_21
        0x5fb57ca -> :sswitch_17
        0x6873d92 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_b9
        :pswitch_b2
        :pswitch_9c
        :pswitch_93
        :pswitch_8a
        :pswitch_83
        :pswitch_7c
    .end packed-switch
.end method

.method private static greylist-max-o writeObj(Landroid/os/Parcel;ILjava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .line 324
    invoke-static {p3}, Landroid/app/slice/SliceItem;->getBaseType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_96

    :cond_b
    goto :goto_5f

    :sswitch_c
    const-string/jumbo v0, "slice"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 p3, 0x0

    goto :goto_60

    :sswitch_17
    const-string v0, "input"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 p3, 0x2

    goto :goto_60

    :sswitch_21
    const-string v0, "image"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 p3, 0x1

    goto :goto_60

    :sswitch_2b
    const-string/jumbo v0, "text"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 p3, 0x5

    goto :goto_60

    :sswitch_36
    const-string/jumbo v0, "long"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 p3, 0x7

    goto :goto_60

    :sswitch_41
    const-string v0, "int"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 p3, 0x6

    goto :goto_60

    :sswitch_4b
    const-string v0, "bundle"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 p3, 0x3

    goto :goto_60

    :sswitch_55
    const-string v0, "action"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 p3, 0x4

    goto :goto_60

    :goto_5f
    const/4 p3, -0x1

    :goto_60
    packed-switch p3, :pswitch_data_b8

    goto :goto_95

    .line 342
    :pswitch_64
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_95

    .line 339
    :pswitch_6e
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    goto :goto_95

    .line 336
    :pswitch_78
    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2, p0, p1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 337
    goto :goto_95

    .line 332
    :pswitch_7e
    check-cast p2, Landroid/util/Pair;

    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroid/app/PendingIntent;

    invoke-virtual {p3, p0, p1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 333
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/app/slice/Slice;

    invoke-virtual {p2, p0, p1}, Landroid/app/slice/Slice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 334
    goto :goto_95

    .line 329
    :pswitch_8f
    check-cast p2, Landroid/os/Parcelable;

    invoke-interface {p2, p0, p1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 330
    nop

    .line 345
    :goto_95
    return-void

    :sswitch_data_96
    .sparse-switch
        -0x54d081ca -> :sswitch_55
        -0x5220cf7e -> :sswitch_4b
        0x197ef -> :sswitch_41
        0x32c67c -> :sswitch_36
        0x36452d -> :sswitch_2b
        0x5faa95b -> :sswitch_21
        0x5fb57ca -> :sswitch_17
        0x6873d92 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
        :pswitch_7e
        :pswitch_78
        :pswitch_6e
        :pswitch_64
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()Landroid/app/PendingIntent;
    .registers 2

    .line 217
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getBundle()Landroid/os/Bundle;
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getFormat()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getInt()I
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getLong()J
    .registers 3

    .line 255
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getRemoteInput()Landroid/app/RemoteInput;
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/app/RemoteInput;

    return-object v0
.end method

.method public greylist-max-o getRemoteView()Landroid/widget/RemoteViews;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public whitelist getSlice()Landroid/app/slice/Slice;
    .registers 3

    .line 245
    const-string v0, "action"

    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 246
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/slice/Slice;

    return-object v0

    .line 248
    :cond_15
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/app/slice/Slice;

    return-object v0
.end method

.method public whitelist getSubType()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mSubType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o hasAnyHints([Ljava/lang/String;)Z
    .registers 7

    .line 306
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 307
    :cond_4
    array-length v1, p1

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    .line 308
    iget-object v4, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 309
    const/4 p1, 0x1

    return p1

    .line 307
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 312
    :cond_17
    return v0
.end method

.method public whitelist hasHint(Ljava/lang/String;)Z
    .registers 3

    .line 263
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o hasHints([Ljava/lang/String;)Z
    .registers 8

    .line 293
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 294
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_1d

    aget-object v4, p1, v3

    .line 295
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    iget-object v5, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 296
    return v2

    .line 294
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 299
    :cond_1d
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 283
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mSubType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Landroid/app/slice/SliceItem;->mObj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Landroid/app/slice/SliceItem;->writeObj(Landroid/os/Parcel;ILjava/lang/Object;Ljava/lang/String;)V

    .line 287
    return-void
.end method
